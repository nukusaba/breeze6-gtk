#!/usr/bin/env bash

if [[ -f "dir-check" ]]; then
  echo "Check file exists, continuing..."
  echo ""
else
  echo "Check file not found, exiting."
  exit 1
fi

theme_name="Breeze6-GTK"

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
echo "Created Dir (Gtk3)"
sass gtk3-dark.scss ~/.themes/"$theme_name"/gtk-3.0/gtk-dark.css
echo "Generated Dark Css (Gtk3)"
sass gtk3.scss ~/.themes/"$theme_name"/gtk-3.0/gtk.css
echo "Generated Default Css (Gtk3)"
rm ~/.themes/"$theme_name"/gtk-3.0/*.map
cp -r assets/ ~/.themes/"$theme_name"/gtk-3.0/
echo "Copied assets (Gtk3)"

echo ""

# gtk4
mkdir -p ~/.themes/"$theme_name"/gtk-4.0/
echo "Created Dir (Gtk4)"
sass gtk4-dark.scss ~/.themes/"$theme_name"/gtk-4.0/gtk-dark.css
echo "Generated Dark Css (Gtk4)"
sass gtk4.scss ~/.themes/"$theme_name"/gtk-4.0/gtk.css
echo "Generated Default Css (Gtk4)"
rm ~/.themes/"$theme_name"/gtk-4.0/*.map
cp -r assets/ ~/.themes/"$theme_name"/gtk-4.0/
echo "Copied assets (Gtk4)"

# index
cp index.theme ~/.themes/"$theme_name"/

# exit
# remove echo to install libadwaita until actually usable (arg still exists)
#echo "To install libadwata version, add --libadwaita argument at the end."
exit 0
