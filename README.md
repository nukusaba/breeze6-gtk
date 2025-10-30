# Breeze6 GTK
A new GTK theme to mimic the Breeze Qt style used by KDE.

---

**Repostories:** [GitHub](https://github.com/snow-hai/breeze6-gtk) [GitLab](https://gitlab.com/snow-hai/breeze6-gtk). These repositories are automaticaly mirrored. However if you want to contribute please do so on the GitLab.

---

**Why?** <br>
The default Breeze GTK theme is kinda bad imo. <br>
<br>
**NOTE** <br>
This is a personal project. It might not work perfectly for everyone. If you want to reccomend apps to test with this theme, and eventually have fixes be implemented, please write a Issue.

---

## Completion
- [x] GTK3 Theme. (Check completion Notes)
- [ ] GTK4 Theme. (Check completion Notes)
- [ ] Libadwaita Theme. (Check completion Notes)<br>

- **Gtk3**
  - Generaly done, and should be fully usable.
  - Tab bars (notebook) needs more fixes to look more like breeze.
  - Need to make decision on Tab bar (notebook) styling (breeze has two different styles, therefor its hard to do it acuratly).
  - Need to implement fade animations (sometimes buttons in breeze have them, sometimes they dont, so im contemplating on it).
- **Gtk4 (No Libadwaita)**
  - Untested, i do not know of any apps that dont use libadwaita that are also Gtk4. If you know of any, please write a Issue.
- **Gtk4 (Libadwaita)**
  - Tested, completly broken, wont be worked on for a long while.
  - Colorscheme for libadwaita exists, however not a full theme.

---
  
## Dependencies
- Dart Sass

## Installation
- Clone repo
```
git clone https://gitlab.com/sabaneko/breeze6-gtk.git
cd breeze6-gtk/source
```

- Install theme <br>
```
./build-install.sh
```

---

## Colorschemes
Colorschemes are matched to your current plasma colorscheme automaticaly finally!
