#!/bin/sh
# Installs Package Control and runs `export.sh`.

here=$(dirname "$0") && here=$(cd "$here" && pwd -P)
sublime_text_packages_path="${HOME}/Library/Application Support/Sublime Text 2/Installed Packages"

# Install Sublime Text Package Control to the default location if not yet
# installed
if [ ! -f "${sublime_text_packages_path}/Package Control.sublime-package" ]; then
  cd "$sublime_text_packages_path"
  curl -fsSO https://sublime.wbond.net/Package%20Control.sublime-package
  mv "Package%20Control.sublime-package" "Package Control.sublime-package"
fi

# Run `./export.sh` to export settings
sh "${here}/export.sh"
