#!/usr/bin/env bash

set -e

# Always run Jekyll from the directory containing this script.
cd -- "$(dirname -- "${BASH_SOURCE[0]}")"

# Jekyll 3.9.0's file watcher is incompatible with Ruby 3, so disable it.
exec bundle exec jekyll serve --livereload --no-watch "$@"
