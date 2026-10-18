# Hiragana

A small memory game for learning hiragana. Pick the groups to include (base 46,
dakuten/handakuten, yōon), then either practise (tap to reveal the romaji) or
test yourself (pick from four choices, with a running score).

It's a single static page that works offline once loaded. On a phone, add it
to your home screen to use it like an app:

- **iPhone/iPad (Safari):** Share → Add to Home Screen
- **Android (Chrome):** ⋮ → Add to Home screen / Install app

## Develop

Needs Node 22.12+ and pnpm.

```sh
pnpm install
pnpm dev        # http://localhost:4321
pnpm check      # type check
pnpm build      # static site in dist/
```

The service worker only registers in production builds; use `pnpm build &&
pnpm preview` to try offline mode.

Icons are rendered from `public/icon.svg` with `pnpm icons` (needs
`rsvg-convert` and a Japanese font).

## Deploy

`pnpm run deploy` builds and uploads `dist/` to the Cloudflare Pages project
`hiragana` with wrangler.

## License

MIT
