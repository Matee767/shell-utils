#!/usr/bin/env bash
# slugify: convert a string into a URL-friendly slug
slugify() {
  local input="$1"
  echo "$input" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g; s/^-+|-+$//g'
}
