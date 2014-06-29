#!/bin/sh
# Exports included user settings into Sublime Text packages user directory.

here=$(dirname "$0") && here=$(cd "$here" && pwd -P)
sublime_text_packages_path="${HOME}/Library/Application Support/Sublime Text 2/Packages"
sublime_text_user_path="${sublime_text_packages_path}/User"

for file in "$here"/user/*; do
  filename="$(basename "$file")"
  target="${sublime_text_user_path}/${filename}"
  cp -v "$file" "$target"
done
