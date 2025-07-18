# Breeze6 GTK
A new GTK theme to mimic the Breeze Qt style used by KDE.

**Why?** <br>
The default Breeze GTK theme is kinda bad imo. <br>
<br>
This *"project"* is a just something i do for fun when there is a reason for me to update it. its not meant to be perfect, its just meant to give me some more accuracy between gtk and qt apps that i use. i do *not* test with anything that i dont personaly use.


## Completion
- [x] GTK3 Theme.
- [ ] GTK4 Theme. 
- [ ] Libadwaita Theme. <br>
GTK3 (and probably GTK4 non-libadwaita) is pretty much done and usable. Libadwaita is completly broken still, will be worked on (maybe).

## Dependencies
- Dart Sass (pre v3.0.0)

## Installation
- Clone repo
```
git clone https://github.com/mellowaru/breeze6-gtk.git
cd breeze6-gtk/source
```

- Install theme <br>
You can run without a argument to see all colorscheme options.
```
./build-install.sh --[colorscheme]
```

If you want to make your own colorscheme you can do so in the `colors-custom/colors.custom.scss` file and than run.
```
./build-install.sh --custom
```

## Colorschemes
All preset colorschemes are schemes that i personaly use, colorschemes will only be added when i use them.
