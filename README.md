# How to use this overlay

Add `https://raw.github.com/stefan-langenmaier/sfl-overlay/master/repositories.xml` to overlays section in `/etc/layman/layman.cfg`.

Or read the instructions on the [Gentoo Wiki](http://wiki.gentoo.org/wiki/Layman#Adding_custom_overlays), then invoke the following:

	layman -f -a sfl-overlay

After performing those steps, the following should work (or any other package from this overlay):

	sudo emerge -av app-crypt/sflvault-client
