# Convert

A macOS menu bar app that converts and edits files right from Finder. Middle-click a file
(or select files and press ⌃⌥C), and a glass wheel offers the formats it can become:
images (JPEG, PNG, HEIC, WebP, AVIF, GIF, TIFF), documents (TXT, Markdown, RTF, DOCX, HTML, PDF)
and tables (CSV, TSV, PSV, XLSX, JSON).

⌘ + middle-click an image or PDF to crop, compress, redact, sign (with a date), pick pages
or protect it with a password.

Press ⌃⌥V anywhere for your clipboard history: the last 5 copies plus up to 3 pinned items.

## Install

```sh
brew tap ricardobroeders/convert https://github.com/Ricardobroeders/convert
brew install --cask ricardobroeders/convert/convert
```

Update later with `brew upgrade --cask convert`. You can also download the DMG from
[Releases](https://github.com/Ricardobroeders/convert/releases).

Requires macOS 14 or later (Apple Silicon or Intel). For middle-click, allow Convert in
System Settings › Privacy & Security › Accessibility.
