# Tailwind CSS standalone CLI [![](https://img.shields.io/static/v1?label=&message=EXTRA&color=green)](#)

Repackaged [Tailwind CSS](https://tailwindcss.com) [standalone CLI](https://tailwindcss.com/blog/standalone-cli)
that comes bundled with [daisyUI](https://daisyui.com/) -
the most popular component library for Tailwind CSS.

This repository employs [GitHub Actions](https://github.com/dobicinaitis/tailwind-cli-extra/actions)
to generate patched versions of the upstream CLI tool whenever a new version of Tailwind CSS or daisyUI is released.

## Usage

* Download the latest executable from
  the [releases](https://github.com/dobicinaitis/tailwind-cli-extra/releases/latest) page.

* Add the daisyUI plugin to your Tailwind CSS config file:

  ```js
  export default {
      // ...
      plugins: [
          require("daisyui")
      ]
  }
  ```

* Use `tailwindcss-extra` just like the official tool ([example](/example/readme.md)).

## Cheat sheet

```bash
# create a tailwind.config.js file
./tailwindcss-extra init

# start a watcher
./tailwindcss-extra -i input.css -o output.css --watch

# compile and minify your CSS for production
./tailwindcss-extra -i input.css -o output.css --minify
```

## Current versions

[![](https://img.shields.io/badge/Tailwind%20CSS-v3.4.1-06B6D4?logo=tailwind-css&logoColor=06B6D4)](https://github.com/tailwindlabs/tailwindcss/releases/tag/v3.4.1)
[![](https://img.shields.io/badge/daisyUI-v4.6.2-1ad1a5?logo=daisyui&logoColor=1ad1a5)](https://github.com/saadeghi/daisyui/releases/tag/v4.6.2)
