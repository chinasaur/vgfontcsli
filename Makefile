OBJS=font.o vgft.o graphics.o
LIB=libvgfontcsli.a

INCLUDES+=-I$(SDKSTAGE)/usr/include/freetype2 -I$(SDKSTAGE)/usr/include -I$(SDKSTAGE)/usr/include/arm-linux-gnueabi
CFLAGS+=-D_HAVE_TIMER_T

include /opt/vc/src/hello_pi/Makefile.include
