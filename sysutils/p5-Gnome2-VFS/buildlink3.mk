# $NetBSD: buildlink3.mk,v 1.47 2022/06/28 11:36:01 wiz Exp $

BUILDLINK_TREE+=	p5-Gnome2-VFS

.if !defined(P5_GNOME2_VFS_BUILDLINK3_MK)
P5_GNOME2_VFS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.p5-Gnome2-VFS+=	p5-Gnome2-VFS>=1.081
BUILDLINK_ABI_DEPENDS.p5-Gnome2-VFS+=	p5-Gnome2-VFS>=1.083nb21
BUILDLINK_PKGSRCDIR.p5-Gnome2-VFS?=	../../sysutils/p5-Gnome2-VFS

.include "../../sysutils/gnome-vfs/buildlink3.mk"
.include "../../devel/p5-glib2/buildlink3.mk"
.endif # P5_GNOME2_VFS_BUILDLINK3_MK

BUILDLINK_TREE+=	-p5-Gnome2-VFS
