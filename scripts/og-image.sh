#!/usr/bin/env sh
# Render scripts/og-image.html to public/og-image.png (2400x1260).
set -e
cd "$(dirname "$0")/.."
CHROME="${CHROME:-$(ls -d "$HOME"/.cache/ms-playwright/chromium-*/chrome-linux64/chrome 2>/dev/null | tail -1)}"
"$CHROME" --headless --no-sandbox --hide-scrollbars --allow-file-access-from-files \
  --window-size=1200,630 --force-device-scale-factor=2 --virtual-time-budget=2000 \
  --screenshot="$PWD/public/og-image.png" "file://$PWD/scripts/og-image.html"
