# Breeze6 GTK
A new GTK theme to mimic the Breeze Qt style used by KDE.

**Why?** <br>
The default Breeze GTK theme is kinda bad imo. <br>
This is still very much a for-fun-first project, and will only be worked on when there is a need for me to do so.

## Completion
- [x] GTK3 Theme.
- [ ] GTK4 Theme. 
- [ ] Libadwaita Theme. <br>
GTK3 (and probably GTK4 non-libadwaita) is pretty much done and usable. Libadwaita is completly broken still, will be worked on.

## Installation
### Dependencies
- Dart Sass (pre v3.0.0)

### Installation
1. Choose/create the colorscheme you want from the colors.scss file located in `source/colors/colors.scss`
  - Make sure to comment out colorschemes you dont want.
  
2. Install theme.
Build the theme (no install).
```
./build.sh
```
Building the theme and installing it.
```
./build-install.sh
```
