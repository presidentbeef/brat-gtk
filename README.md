# Brat GTK

This is a little library to provide a basic GUI for [Brat](http://www.brat-lang.org) using [GTK-server](http://www.gtk-server.org/).

*Under Heavy Construction*

## Requirements

Install [GTK-server](http://www.gtk-server.org/) as a shared library:

```
wget http://downloads.sourceforge.net/gtk-server/gtk-server-2.3.1-sr.tar.gz
tar xf gtk-server-2.3.1-sr.tar.gz
cd gtk-server-2.3.1-sr
./configure --enable-library
make
```

Move `libgtk-server.so` to the `brat-gtk` directory.

To make the config file:

```
wget http://www.gtk-server.org/gtk-server.cfg
```

In the gtk-server source directory from above:

```
./gen_config /usr/include/gtk-2.0/gtk/gtk.h
```

Copy the `LIB_NAME` lines to the `gtk-server.cfg`.

*Note: Brat-GTK needs the HUG macros included in the config file*
