#!/usr/bin/env bash
# Build arxiv.tex and package it for arXiv upload.
#
#   bash scripts/arxiv-package.sh [--keep-comments]
#
# Writes build/arxiv-<commit>.tar.gz (upload this) and
# build/arxiv-<commit>.pdf (the PDF built from it, for checking).
#
# 1. Stops if the named GenAI appendix is stale against CLAUDE.md or
#    docs/genai-log.md (rerun scripts/genai-appendix.sh, then commit).
# 2. Builds arxiv.tex (pdflatex, bibtex, pdflatex x2) in a temp dir.
# 3. Collects exactly the repo files the build read (pdflatex -recorder)
#    plus the .bbl, since arXiv does not run BibTeX.
# 4. Strips % comments from the .tex copies, unless --keep-comments:
#    arXiv publishes the source, and the comments are author-to-author
#    notes. Each comment is cut to a bare %, so line-end spacing is
#    unchanged. The repo files are never touched.
# 5. Rebuilds the staged copy from the .bbl alone and checks that its
#    text matches step 2's PDF, so stripping provably changed nothing.
set -euo pipefail

strip=1
case "${1:-}" in
  --keep-comments) strip=0 ;;
  "") ;;
  *) echo "usage: $0 [--keep-comments]" >&2; exit 2 ;;
esac

repo=$(cd "$(dirname "$0")/.." && pwd)
cd "$repo"
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

# --- 1. Appendix freshness -------------------------------------------
named=sections/appendix/named
stale=0
cmp -s CLAUDE.md "$named/project-prompt.md" || {
  echo "Stale: $named/project-prompt.md differs from CLAUDE.md." >&2; stale=1; }
# genai-log.tex's first line records the commit it was generated from.
stamp=$(head -1 "$named/genai-log.tex")
if [[ $stamp == *uncommitted* ]]; then
  echo "Stale?: $named/genai-log.tex was generated from uncommitted changes." >&2; stale=1
else
  gen=$(sed -E 's/.*\(([0-9a-f]+), named\).*/\1/' <<< "$stamp")
  git diff --quiet "$gen" -- docs/genai-log.md || {
    echo "Stale: docs/genai-log.md changed since $named/genai-log.tex ($gen)." >&2; stale=1; }
fi
if [ "$stale" = 1 ]; then
  echo "Rerun scripts/genai-appendix.sh and commit, then package." >&2
  exit 1
fi

# --- 2. Build --------------------------------------------------------
latex() { pdflatex -interaction=nonstopmode -halt-on-error "$@" >/dev/null; }
check_log() {  # $1 = log file
  if grep -qE '^! ' "$1"; then grep -A4 -E '^! ' "$1" >&2; exit 1; fi
  if grep -qE '(Citation|Reference) .* undefined' "$1"; then
    grep -E '(Citation|Reference) .* undefined' "$1" >&2; exit 1; fi
}
b1=$tmp/build
mkdir -p "$b1"
latex -recorder -output-directory="$b1" arxiv || { check_log "$b1/arxiv.log"; exit 1; }
(cd "$b1" && BIBINPUTS="$repo" BSTINPUTS="$repo" bibtex arxiv >/dev/null)
latex -recorder -output-directory="$b1" arxiv
latex -recorder -output-directory="$b1" arxiv
check_log "$b1/arxiv.log"

# --- 3. Collect ------------------------------------------------------
# Relative INPUT paths are repo files; absolute ones are TeX Live or
# the build dir.
stage=$tmp/stage
mkdir -p "$stage"
mapfile -t inputs < <(sed -n 's/^INPUT //p' "$b1/arxiv.fls" \
  | grep -v '^/' | sed 's#^\./##' | sort -u)
for f in "${inputs[@]}"; do
  mkdir -p "$stage/$(dirname "$f")"
  cp "$f" "$stage/$f"
done
cp "$b1/arxiv.bbl" "$stage/"

# --- 4. Strip comments -----------------------------------------------
if [ "$strip" = 1 ]; then
  find "$stage" -name '*.tex' -exec perl -pi -e 's/(?<!\\)%.*$/%/' {} +
fi

# --- 5. Verify the staged copy ---------------------------------------
(cd "$stage" && latex arxiv && latex arxiv)
check_log "$stage/arxiv.log"
pdftotext "$b1/arxiv.pdf" "$tmp/a.txt"
pdftotext "$stage/arxiv.pdf" "$tmp/b.txt"
if ! cmp -s "$tmp/a.txt" "$tmp/b.txt"; then
  echo "Staged build's text differs from the full build's:" >&2
  diff "$tmp/a.txt" "$tmp/b.txt" | head -20 >&2
  exit 1
fi

# --- Package ---------------------------------------------------------
name=arxiv-$(git rev-parse --short HEAD)
# Dirty = any input modified or not yet committed (untracked).
[ -z "$(git status --porcelain -- "${inputs[@]}")" ] || name=$name-dirty
mkdir -p build
cp "$stage/arxiv.pdf" "build/$name.pdf"
rm -f "$stage"/arxiv.{aux,log,out,pdf}
tar -czf "build/$name.tar.gz" -C "$stage" .

echo "Files in build/$name.tar.gz:"
tar -tzf "build/$name.tar.gz" | grep -v '/$' | sed 's#^\./#  #'
echo "Pages: $(pdfinfo "build/$name.pdf" | sed -n 's/^Pages: *//p')"
echo "Comments: $([ "$strip" = 1 ] && echo stripped || echo kept)"
[[ $name == *-dirty ]] && echo "Note: built from uncommitted changes." >&2
exit 0
