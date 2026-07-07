#!/usr/bin/env bash
set -e
source "$(dirname "$0")/../lib/strings.sh"

assert_eq() {
  local expected="$1" actual="$2" desc="$3"
  if [ "$expected" != "$actual" ]; then
    echo "FAIL: $desc (expected '$expected', got '$actual')"
    exit 1
  fi
  echo "PASS: $desc"
}

assert_eq "hello-world" "$(slugify "Hello World")" "basic sentence"
assert_eq "foo-bar" "$(slugify "Foo_Bar!!")" "special characters"
assert_eq "multiple-spaces" "$(slugify "  Multiple   Spaces  ")" "collapses repeated separators and trims edges"

echo "All tests passed."
