#!/bin/bash
# Renders icon-source.html to docs/icon.png and og-source.html to
# docs/og-image.png, at the sizes the browser tab and the social cards use.
#
# Chrome rather than a screenshot tool, because the size has to be exact: a card
# that is a pixel off gets rescaled and the type goes soft.
#
# The icon comes first: the card shows it.
set -e

ROOT="$(cd "$(dirname "$0")" && pwd)"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

[ -x "$CHROME" ] || { echo "Google Chrome not found at $CHROME"; exit 1; }

# --headless writes screenshot.png into the working directory and ignores a
# path given to --screenshot in some builds, so it renders into a scratch
# directory and the result is moved.
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

render () {   # source, width, height, output
    ( cd "$TMP" && "$CHROME" --headless --disable-gpu --hide-scrollbars \
        --force-device-scale-factor=1 --window-size="$2,$3" \
        --default-background-color=00000000 \
        --screenshot="$TMP/out.png" \
        "file://$ROOT/$1" >/dev/null 2>&1 )

    [ -f "$TMP/out.png" ] || { echo "Chrome produced no image for $1"; exit 1; }
    mv "$TMP/out.png" "$ROOT/$4"
    sips -g pixelWidth -g pixelHeight "$ROOT/$4"
    echo "wrote $ROOT/$4"
}

render icon-source.html 512 512 docs/icon.png
render og-source.html 1200 630 docs/og-image.png
