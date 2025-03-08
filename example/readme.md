# Example

Download the latest executable from
the [releases](https://github.com/dobicinaitis/tailwind-cli-extra/releases/latest) page.

```bash
# Linux x64 example
curl -sL https://github.com/dobicinaitis/tailwind-cli-extra/releases/latest/download/tailwindcss-extra-linux-x64 -o /tmp/tailwindcss-extra
```

Make the file executable:

```bash
chmod +x /tmp/tailwindcss-extra
```

Use the CLI tool to scan [demo.html](demo.html) for Tailwind CSS and daisyUI classes,
and populate [output.css](output.css) with the utilized utility classes.

```bash
/tmp/tailwindcss-extra --input input.css --output output.css
```

Open [demo.html](demo.html) in a browser to see the result.

```bash
open demo.html
```
