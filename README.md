vgfontcsli
==========

Fork of the libvgfont that's packaged with Raspbian.

Todo:
* Fold in my fixes from chinasaur/firmware; fixes for calculating multiline text extents and displaying from negative pixel origins.
* Fix font file loading so that it can search multiple directories and load multiple fonts.
* Fix vgft draw_line so that it is not limited to 200 characters.  Should work just to while() the whole thing until the whole line is done?  Just need to peek ahead to get the kerning for the start of the next block of chars.
* Check how high up in font size hinting is actually useful for and don't bother to cache above that?
  * http://www.typotheque.com/articles/hinting suggests hinting up to 60 pt; that seems a bit much to me...  Also "fonts are typically hinted up to 50 ppem".