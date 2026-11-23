# owlee.io

Landing page for [Owlee](https://github.com/coollabsio/owlee). Built with Astro and Tailwind CSS.

```bash
bun install
bun run dev    # http://localhost:4321
bun run build  # static output in dist/
```

The Dockerfile builds the site and serves `dist/` with nginx.

The social image `public/og-image.png` comes from `scripts/og-image.html`. Run `scripts/og-image.sh` to render it again.
