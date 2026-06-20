#!/bin/bash

set -euo pipefail

TMPFILE=$(mktemp /tmp/ocr_XXXXXX.png)
LANGS="rus+ukr+eng"

cleanup() {
    rm -f "$TMPFILE"
}
trap cleanup EXIT

grim -g "$(slurp)" "$TMPFILE"

TEXT=$(tesseract "$TMPFILE" stdout -l "$LANGS" 2>/dev/null)

if [[ -z "$TEXT" ]]; then
    notify-send "OCR" "No text detected" 2>/dev/null || true
    exit 0
fi

echo "$TEXT" | wl-copy

notify-send "OCR" "Text copied to clipboard" 2>/dev/null || true
