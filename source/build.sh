#!/usr/bin/bash

if [[ -f "dir-check" ]]; then
  echo "Check file exists, continuing..."
else
  echo "Check file not found, exiting."
  exit 1
fi

build_dir="build"

# gtk3
mkdir -p "$build_dir"
mkdir -p "$build_dir"/gtk-3.0/
sass gtk3-dark.scss "$build_dir"/gtk-3.0/gtk-dark.css
sass gtk3.scss "$build_dir"/gtk-3.0/gtk.css
rm "$build_dir"/gtk-3.0/*.map
cp -r assets/ "$build_dir"/gtk-3.0/

# gtk4
mkdir -p "$build_dir"
mkdir -p "$build_dir"/gtk-4.0/
sass gtk4-dark.scss "$build_dir"/gtk-4.0/gtk-dark.css
sass gtk4.scss "$build_dir"/gtk-4.0/gtk.css
rm "$build_dir"/gtk-4.0/*.map
cp -r assets/ "$build_dir"/gtk-4.0/

# index
cp index.theme "$build_dir"/
