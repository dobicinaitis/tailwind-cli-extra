# Tailwind CSS standalone CLI [![](https://img.shields.io/static/v1?label=&message=EXTRA&color=green)](#)

Repackaged [Tailwind CSS](https://tailwindcss.com) [standalone CLI](https://tailwindcss.com/blog/standalone-cli)
that comes bundled with [daisyUI](https://daisyui.com/) -
the most popular component library for Tailwind CSS.

This repository employs [GitHub Actions](https://github.com/dobicinaitis/tailwind-cli-extra/actions)
to generate patched versions of the upstream CLI tool whenever a new version of Tailwind CSS or daisyUI is released.

## Usage

* Download the latest binary from
  the [releases](https://github.com/dobicinaitis/tailwind-cli-extra/releases/latest) page.

* Make it executable:

  ```bash
  chmod +x ./tailwindcss-extra*
  ```

  macOS users may also need to remove the quarantine attribute:

  ```bash
  xattr -d com.apple.quarantine ./tailwindcss-extra*
  ```

* Add the daisyUI plugin to your main CSS file:

  ```css
  @import "tailwindcss";
  @plugin "daisyui";
  ```

* Use `tailwindcss-extra` just like the official tool ([example](/example/readme.md)).

## Cheat sheet

```bash
# start a watcher
./tailwindcss-extra -i input.css -o output.css --watch

# compile and minify your CSS for production
./tailwindcss-extra -i input.css -o output.css --minify
```

## Current versions

[![](https://img.shields.io/badge/Tailwind%20CSS-v4.0.17-06B6D4?logo=tailwind-css&logoColor=06B6D4)](https://github.com/tailwindlabs/tailwindcss/releases/tag/v4.0.17)
[![](https://img.shields.io/badge/daisyUI-v5.0.8-1ad1a5?logo=daisyui&logoColor=1ad1a5)](https://github.com/saadeghi/daisyui/releases/tag/v5.0.8)

## Downloads

**Binaries**

[![](https://img.shields.io/badge/Linux-x64-black?logo=linux&logoColor=black)](https://github.com/dobicinaitis/tailwind-cli-extra/releases/latest/download/tailwindcss-extra-linux-x64)
[![](https://img.shields.io/badge/Linux-arm64-black?logo=linux&logoColor=black)](https://github.com/dobicinaitis/tailwind-cli-extra/releases/latest/download/tailwindcss-extra-linux-arm64)
[![](https://img.shields.io/badge/Linux-x64--musl-black?logo=linux&logoColor=black)](https://github.com/dobicinaitis/tailwind-cli-extra/releases/latest/download/tailwindcss-extra-linux-x64-musl)
[![](https://img.shields.io/badge/Linux-arm64--musl-black?logo=linux&logoColor=black)](https://github.com/dobicinaitis/tailwind-cli-extra/releases/latest/download/tailwindcss-extra-linux-arm64-musl)
[![](https://img.shields.io/badge/macOS-x64-white?logo=apple&logoColor=white)](https://github.com/dobicinaitis/tailwind-cli-extra/releases/latest/download/tailwindcss-extra-macos-x64)
[![](https://img.shields.io/badge/macOS-arm64-white?logo=apple&logoColor=white)](https://github.com/dobicinaitis/tailwind-cli-extra/releases/latest/download/tailwindcss-extra-macos-arm64)
[![](https://img.shields.io/badge/Windows-x64-0078D4?logo=windows&logoColor=0078D4)](https://github.com/dobicinaitis/tailwind-cli-extra/releases/latest/download/tailwindcss-extra-windows-x64.exe)

**Snap package**

Get it from the [Snap Store](https://snapcraft.io/tailwindcss-extra) or install using the command line:

```bash
sudo snap install tailwindcss-extra
```
