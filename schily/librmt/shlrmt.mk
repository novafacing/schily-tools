#ident @(#)shlrmt.mk	1.6 13/04/22 
###########################################################################
SRCROOT=	..
RULESDIR=	RULES
include		$(SRCROOT)/$(RULESDIR)/rules.top
###########################################################################

SUBARCHDIR=	/pic
#.SEARCHLIST:	. $(ARCHDIR) stdio $(ARCHDIR)
#VPATH=		.:stdio:$(ARCHDIR)
INSDIR=		lib
TARGETLIB=	rmt
CPPOPTS +=	-DUSE_REMOTE
CPPOPTS +=	-DUSE_RCMD_RSH
CPPOPTS +=	-DUSE_LARGEFILES
include		Targets
#
# LIB_CAP is needed for Linux capability support in librscg.
#
LIBS=		-lschily $(LIB_SOCKET) $(LIB_CAP) -lc

###########################################################################
include		$(SRCROOT)/$(RULESDIR)/rules.shl
###########################################################################
#CC=		echo "	==> COMPILING \"$@\""; cc
###########################################################################
