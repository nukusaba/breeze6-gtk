#!/usr/bin/bash

if [[ -f "dir-check" ]]; then
  echo "Check file exists, continuing..."
else
  echo "Check file not found, exiting."
  exit 1
fi

theme_name="Breeze6-GTK"

if [ "$1" == "" ]; then
  echo ""
  echo "Color options: --breeze-dark, --breeze-light, --hanokira, --sweet"
  echo ""
  exit 1
fi
# colors
if [ "$1" == "--breeze-dark" ]; then
  color="breeze-dark"
elif [ "$1" == "--breeze-light" ]; then
  color="breeze-light"
elif [ "$1" == "--hanokira" ]; then
  color="hanokira"
elif [ "$1" == "--sweet" ]; then
  color="sweet"
elif [ "$1" == "--custom" ]; then
  color="custom"
fi
mv colors/colors."$color".scss colors/colors.scss # this will be reset after the script runs

# libadwaita
if [ "$2" == "--libadwaita" ]; then
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

# reset
mv colors/colors.scss colors/colors."$color".scss

# exit
echo "To install libadwata version, add --libadwaita argument at the end."
exit 0
