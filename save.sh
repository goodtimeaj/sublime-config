#!/bin/sh
# Saves Sublime Text user settings to this location.

here=$(dirname "$0") && here=$(cd "$here" && pwd -P)
sublime_text_packages_path="${HOME}/Library/Application Support/Sublime Text 2/Packages"
sublime_text_user_path="${sublime_text_packages_path}/User"

cp -Rv "$sublime_text_user_path" "$here"
