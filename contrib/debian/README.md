
Debian
====================
This directory contains files used to package mergexd/mergex-qt
for Debian-based Linux systems. If you compile mergexd/mergex-qt yourself, there are some useful files here.

## mergex: URI support ##


mergex-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install mergex-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your mergex-qt binary to `/usr/bin`
and the `../../share/pixmaps/mergex128.png` to `/usr/share/pixmaps`

mergex-qt.protocol (KDE)

