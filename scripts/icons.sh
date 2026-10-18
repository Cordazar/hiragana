#!/bin/sh
# Render the PNG icons from public/icon.svg. Needs rsvg-convert (brew install librsvg)
# and a Japanese font (macOS ships Hiragino).
set -eu
cd "$(dirname "$0")/../public"

rsvg-convert -w 192 -h 192 icon.svg -o icon-192.png
rsvg-convert -w 512 -h 512 icon.svg -o icon-512.png
rsvg-convert -w 180 -h 180 icon.svg -o apple-touch-icon.png
# The glyph sits well inside the maskable safe zone (central 80%), so the same art works.
cp icon-512.png icon-maskable-512.png
