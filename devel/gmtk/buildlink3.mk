# $NetBSD: buildlink3.mk,v 1.52 2022/09/11 12:51:05 wiz Exp $
#

BUILDLINK_TREE+=	gmtk

.if !defined(GMTK_BUILDLINK3_MK)
GMTK_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gmtk+=	gmtk>=1.0.7
BUILDLINK_ABI_DEPENDS.gmtk+=	gmtk>=1.0.9nb32
BUILDLINK_PKGSRCDIR.gmtk?=	../../devel/gmtk

pkgbase := gmtk
.include "../../mk/pkg-build-options.mk"

.if !empty(PKG_BUILD_OPTIONS.gmtk:Mpulseaudio)
.include "../../audio/pulseaudio/buildlink3.mk"
.endif
.if !empty(PKG_BUILD_OPTIONS.gmtk:Malsa)
.include "../../audio/alsa-lib/buildlink3.mk"
.endif

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/GConf/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.endif	# GMTK_BUILDLINK3_MK

BUILDLINK_TREE+=	-gmtk
