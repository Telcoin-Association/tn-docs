#!/usr/bin/env bash
set -euo pipefail

npm i -g gitbook-cli@2.3.2
gitbook fetch 3.2.3
gitbook install

TMPDIR="$(mktemp -d)"
gitbook build "$(pwd)" "$TMPDIR"

echo "Built to temp dir: $TMPDIR"
ls -la "$TMPDIR" | head -n 50

rm -rf /work/_book
mv "$TMPDIR" /work/_book
echo "Moved to: /work/_book"