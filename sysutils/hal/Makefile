# $NetBSD: Makefile,v 1.100 2022/06/28 11:35:56 wiz Exp $

DISTNAME=		hal-0.5.14
PKGREVISION=		30
CATEGORIES=		sysutils
MASTER_SITES=		http://hal.freedesktop.org/releases/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		https://www.freedesktop.org/wiki/Software/hal/
COMMENT=		FreeDesktop hardware abstraction layer
LICENSE=		gnu-gpl-v2

DEPENDS+=		pciids-[0-9]*:../../misc/pciids

BUILD_DEFS+=		VARBASE PKG_SYSCONFBASE

GNU_CONFIGURE=		YES
USE_PKGLOCALEDIR=	YES
USE_TOOLS+=		gmake intltool msgfmt perl pkg-config
USE_TOOLS+=		autoconf automake autoreconf
USE_LIBTOOL=		YES

MAKE_DIRS+=		/media
MAKE_DIRS+=		${VARBASE}/cache/hald
SPECIAL_PERMS+=		${VARBASE}/cache/hald ${HAL_USER} ${HAL_GROUP} 0644

# devinfo_mass.c: In function 'devinfo_mass_disklabel_add':
# devinfo_mass.c:340:28: error: array subscript has type 'char'
#   part = &label.d_partitions[unit];
# Maybe fix this later.
BUILDLINK_TRANSFORM+=	rm:-Werror=char-subscripts

EGDIR=			${PREFIX}/share/examples/hal

CONF_FILES=		${EGDIR}/hal.conf ${PKG_SYSCONFBASE}/dbus-1/system.d/hal.conf

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFBASE}
CONFIGURE_ARGS+=	--localstatedir=${VARBASE}
CONFIGURE_ARGS+=	--with-pci-ids=${PREFIX}/share/pciids
CONFIGURE_ARGS+=	--with-usb-ids=${PREFIX}/share/usbids
CONFIGURE_ARGS+=	--without-os-type

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "DragonFly"
.include "../../devel/libvolume_id/buildlink3.mk"
CONFIGURE_ARGS+=	--with-eject=/usr/sbin/cdcontrol
CONFIGURE_ARGS+=	--with-backend=freebsd
PLIST_SRC=		PLIST.DragonFly PLIST

.elif ${OPSYS} == "FreeBSD"
.include "../../devel/libvolume_id/buildlink3.mk"
CONFIGURE_ARGS+=	--with-eject=/usr/sbin/cdcontrol
CONFIGURE_ARGS+=	--with-backend=freebsd
PLIST_SRC=		PLIST.FreeBSD PLIST

.elif ${OPSYS} == "NetBSD"
.include "../../devel/libvolume_id/buildlink3.mk"
CONFIGURE_ARGS+=	--with-backend=netbsd
HAL_GROUP=		operator

.elif ${OPSYS} == "Linux"
.include "../../devel/gperf/buildlink3.mk"
.include "../../devel/libblkid/buildlink3.mk"
.include "../../devel/libvolume_id/buildlink3.mk"
# XXX we install libpci headers to an unexpected location
# as far as this package is concerned, so it fails
# to detect libpci!
#.include "../../sysutils/pciutils/buildlink3.mk"
CONFIGURE_ARGS+=	--with-backend=linux
MAKE_DIRS+=		/etc/udev
MAKE_DIRS+=		/etc/udev/rules.d
CONF_FILES+=		${EGDIR}/90-hal.rules \
			/etc/udev/rules.d/90-hal.rules
PLIST_VARS+=	imac
.  if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "x86_64"
PLIST.imac=	yes
CONFIGURE_ARGS+=	--with-imac
.  else
CONFIGURE_ARGS+=	--without-imac
.  endif
.else	# Unsupported systems
# Pull in the dummy backend
.include "../../devel/libvolume_id/buildlink3.mk"
CONFIGURE_ARGS+=	--with-backend=dummy
PLIST_SRC=		PLIST
.endif

CFLAGS.SunOS+=		-Du_int32_t=uint32_t

BUILDLINK_TRANSFORM.SunOS+=	opt:-Wl,--as-needed:-Wl,-zignore

REPLACE_INTERPRETER+=	bash
REPLACE.bash.old=	/bin/bash
REPLACE.bash.new=	${SH}
.for halscript in luks-remove luks-setup luks-teardown system-wol-enable system-wol-enabled system-wol-supported
REPLACE_FILES.bash+=	tools/hal-${halscript}
.endfor

HAL_USER?=		haldaemon
HAL_GROUP?=		haldaemon
CONFIGURE_ARGS+=	--with-hal-user=${HAL_USER}
CONFIGURE_ARGS+=	--with-hal-group=${HAL_GROUP}
CONFIGURE_ARGS+=	--disable-pmu

RCD_SCRIPTS=		hal
SMF_METHODS=		hal

.if ${HAL_GROUP} != "operator"
PKG_GROUPS=		${HAL_GROUP}
.endif
PKG_USERS=		${HAL_USER}:${HAL_GROUP}
PKG_HOME.haldaemon=	${VARBASE}/run/hald

FILES_SUBST+=		HAL_USER=${HAL_USER}
FILES_SUBST+=		HAL_GROUP=${HAL_GROUP}
FILES_SUBST+=		PKG_HOME.haldaemon=${PKG_HOME.haldaemon}

PLIST_SUBST+=		PKG_SYSCONFDIR=${PKG_SYSCONFDIR}

TEST_TARGET=		check

post-extract:
	${CP} -r ${FILESDIR}/hald-netbsd ${WRKSRC}/hald/netbsd
	${CP} -r ${FILESDIR}/tools-netbsd ${WRKSRC}/tools/netbsd

pre-configure:
	cd ${WRKSRC} && autoreconf -vi ${AUTORECONF_ARGS}

.include "../../devel/glib2/buildlink3.mk"
.include "../../misc/usbids/buildlink3.mk"
.include "../../security/policykit/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../sysutils/hal-info/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
