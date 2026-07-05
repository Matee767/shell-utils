# shell-utils

A small collection of portable bash string utilities.

## Functions

### `slugify`

Converts a string into a URL-friendly slug: lowercases it, replaces
runs of non-alphanumeric characters with a single hyphen, and trims
leading/trailing hyphens.

```bash
source lib/strings.sh
slugify "Hello, World!"   # => hello-world
```

## Running tests

```bash
bash test/test_strings.sh
```
