#!/usr/bin/bash

if [[ -f "dir-check" ]]; then
  echo "Check file exists, continuing..."
else
  echo "Check file not found, exiting."
  exit 1
fi

theme_name="BBbreeze"

# libadwaita
if [ "$1" == "--libadwaita" ]; then
  mkdir -p ~/.config/gtk-4.0/
  rm -rf ~/.config/gtk-4.0/*.css
  sass gtk4-dark.scss ~/.config/gtk-4.0/gtk-dark.css
  sass gtk4.scss ~/.config/gtk-4.0/gtk.css
  rm ~/.config/gtk-4.0/*.map
  cp -r assets/ ~/.config/gtk-4.0/
  exit 0
fi

# gtk3
mkdir -p ~/.themes/"$theme_name"/
mkdir -p ~/.themes/"$theme_name"/gtk-3.0/
sass gtk3-dark.scss ~/.themes/"$theme_name"/gtk-3.0/gtk-dark.css
sass gtk3.scss ~/.themes/"$theme_name"/gtk-3.0/gtk.css
rm ~/.themes/"$theme_name"/gtk-3.0/*.map
cp -r assets/ ~/.themes/"$theme_name"/gtk-3.0/

# gtk4
mkdir -p ~/.themes/"$theme_name"/gtk-4.0/
sass gtk4-dark.scss ~/.themes/"$theme_name"/gtk-4.0/gtk-dark.css
sass gtk4.scss ~/.themes/"$theme_name"/gtk-4.0/gtk.css
rm ~/.themes/"$theme_name"/gtk-4.0/*.map
cp -r assets/ ~/.themes/"$theme_name"/gtk-4.0/

# index
cp index.theme ~/.themes/"$theme_name"/

# exit
echo "To install libadwata version, use --libadwaita argument."
