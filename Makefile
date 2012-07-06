#
# Dreamcast PLIB Derivative makefile by Peter Hatch
# based on
# addons/libgl Makefile
# (c)2001 Dan Potter
#

TARGET = libdcplib.a
OBJS =  ulError.o sg.o fnt.o fntTXF.o
# Comment the next line out if you don't want sgd (SG stuff using doubles instead of floats) or sgIsect (I haven't checked, but FNT doesn't need it).
OBJS += sgd.o sgIsect.o
SUBDIRS =

defaultall: create_kos_link $(OBJS) subdirs linklib

include $(KOS_BASE)/addons/Makefile.prefab

# creates the kos link to the headers
create_kos_link:
	rm -f ../include/dcplib
	ln -s ../libdcplib/include ../include/dcplib
