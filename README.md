vgfontcsli
==========

Fork of the libvgfont that's packaged with Raspbian.

Done:
* Fixes in pull request already submitted to raspberrypi/firmware; fixes for calculating multiline text extents and displaying from negative pixel origins.

Todo for raspberrypi/firmware (fixes that will not change interface):
* Fix vgft draw_line so that it is not limited to 200 characters.  Should work just to while() the whole thing until the whole line is done?  Just need to peek ahead to get the kerning for the start of the next block of chars.

Todo here (changes that will change the interface):
* Fix font file loading so that it can search multiple directories and load multiple fonts.
* Check how high up in font size hinting is actually useful for and don't bother to cache above that?
  * http://www.typotheque.com/articles/hinting suggests hinting up to 60 pt; that seems a bit much to me...  Also "fonts are typically hinted up to 50 ppem".