# The fonts this host serves

The typography every jointhefreeworld project shares: **Work Sans** for prose,
**Source Serif 4** for long-form reading and **JuliaMono** for code. All three
are under the SIL Open Font License 1.1, whose text sits beside each family.

| File | Family | Style | Weight | Subset |
|------|--------|-------|--------|--------|
| `work-sans-normal-latin.woff2` | Work Sans | normal | 100–900 | latin |
| `work-sans-normal-latin-ext.woff2` | Work Sans | normal | 100–900 | latin-ext |
| `work-sans-italic-latin.woff2` | Work Sans | italic | 100–900 | latin |
| `work-sans-italic-latin-ext.woff2` | Work Sans | italic | 100–900 | latin-ext |
| `source-serif-4-normal-latin.woff2` | Source Serif 4 | normal | 200–900 | latin |
| `source-serif-4-normal-latin-ext.woff2` | Source Serif 4 | normal | 200–900 | latin-ext |
| `source-serif-4-italic-latin.woff2` | Source Serif 4 | italic | 200–900 | latin |
| `source-serif-4-italic-latin-ext.woff2` | Source Serif 4 | italic | 200–900 | latin-ext |
| `juliamono-normal-latin.woff2` | JuliaMono | normal | regular | latin |
| `juliamono-bold-latin.woff2` | JuliaMono | normal | bold | latin |

Work Sans and Source Serif 4 are variable fonts, so one file per style carries
the whole weight axis. JuliaMono ships static weights, hence the regular and
bold latin subsets and the two `@font-face` rules split at weight 600.

## Where they came from

- Work Sans: <https://fonts.google.com/specimen/Work+Sans>, Copyright 2019 The
  Work Sans Project Authors, OFL 1.1 (`WorkSans-OFL.txt`).
- Source Serif 4: <https://fonts.google.com/specimen/Source+Serif+4>, Copyright
  2014–2023 Adobe, OFL 1.1 (`SourceSerif4-OFL.txt`).
- JuliaMono: <https://juliamono.netlify.app/>, from the `JuliaMono-webfonts`
  release archive (the `*-Latin.woff2` files), Copyright 2019–2024 Cormullion,
  OFL 1.1 (`JuliaMono-OFL.txt`). JuliaMono is not in the Google Fonts
  catalogue.

The Google families were fetched by asking `fonts.googleapis.com/css2` for the
family with a browser user agent (which selects woff2) and keeping the `latin`
and `latin-ext` subsets; the addresses of the files are the ones that response
carries.

## How a project uses them

A page declares the faces itself and points them at this host, or copies the
files into its own static tree and points them there. The order of the families
in a stack is the framework's business (`olive-css` names Work Sans, Source
Serif 4 and JuliaMono as its `font-sans`, `font-serif` and `font-mono`); this
host only serves the files.

Every file here is free to redistribute: three families, all under the SIL Open
Font License, whose texts sit beside them.
