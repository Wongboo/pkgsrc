# $NetBSD: Makefile,v 1.143 2022/06/28 11:37:57 wiz Exp $

PKGNAME=	qt4-libs-${QTVERSION}
PKGREVISION=	29
COMMENT=	C++ X GUI toolkit

.include "../../x11/qt4-libs/Makefile.common"

# XXX this is to test what really gets installed when 'do-install' is disabled
INSTALL_DIRS+=		src

TOOLS_BROKEN+=		perl
BUILD_TARGET=		sub-src

PTHREAD_OPTS+=			require
UNLIMIT_RESOURCES=		datasize
BUILDLINK_PASSTHRU_DIRS+=	${QTPREFIX}

PLIST_SRC=		${WRKDIR}/PLIST ${PKGDIR}/PLIST

# built as plugins
CONFIGURE_ARGS+=	-no-dbus
CONFIGURE_ARGS+=	-no-libmng
CONFIGURE_ARGS+=	-no-libtiff
CONFIGURE_ARGS+=	-no-sql-sqlite

# kdelibs4 requires openssl support!
CONFIGURE_ARGS+=	-openssl-linked

CONFIGURE_ARGS+=	-iconv

INSTALLATION_DIRS=	lib/pkgconfig
INSTALLATION_DIRS+=	${QTPREFIX}/bin
INSTALLATION_DIRS+=	${QTPREFIX}/imports/Qt/labs/folderlistmodel
INSTALLATION_DIRS+=	${QTPREFIX}/imports/Qt/labs/gestures
INSTALLATION_DIRS+=	${QTPREFIX}/imports/Qt/labs/particles
INSTALLATION_DIRS+=	${QTPREFIX}/imports/Qt/labs/shaders
INSTALLATION_DIRS+=	${QTPREFIX}/imports/QtWebKit
INSTALLATION_DIRS+=	${QTPREFIX}/include
INSTALLATION_DIRS+=	${QTPREFIX}/lib
INSTALLATION_DIRS+=	${QTPREFIX}/plugins/accessible
INSTALLATION_DIRS+=	${QTPREFIX}/plugins/bearer
INSTALLATION_DIRS+=	${QTPREFIX}/plugins/codecs
INSTALLATION_DIRS+=	${QTPREFIX}/plugins/graphicssystems
INSTALLATION_DIRS+=	${QTPREFIX}/plugins/iconengines
INSTALLATION_DIRS+=	${QTPREFIX}/plugins/imageformats
.if ${OPSYS} == "Darwin"
INSTALLATION_DIRS+=	${QTPREFIX}/qt_menu.nib
.else
INSTALLATION_DIRS+=	${QTPREFIX}/plugins/inputmethods
.endif

INSTALL_ENV+=		INSTALL_ROOT=${DESTDIR}

SUBST_CLASSES+=			no-libtool
SUBST_MESSAGE.no-libtool=	Removing unwanted libtool link command.
SUBST_STAGE.no-libtool=		post-configure
SUBST_FILES.no-libtool=		translations/Makefile
SUBST_SED.no-libtool=		-e '/@: IGNORE THIS LINE/s,=.*$$,= @:,'

do-install:
.for f in moc rcc uic
	${INSTALL_PROGRAM} ${WRKSRC}/bin/${f} ${DESTDIR}${QTPREFIX}/bin/
.endfor
	${LIBTOOL} --mode=install ${INSTALL_PROGRAM} ${WRKSRC}/bin/uic3 \
		${DESTDIR}${QTPREFIX}/bin/
	${LIBTOOL} --mode=install ${INSTALL_LIB} \
		${WRKSRC}/imports/Qt/labs/folderlistmodel/libqmlfolderlistmodelplugin.la \
		${DESTDIR}${QTPREFIX}/imports/Qt/labs/folderlistmodel/
	${LIBTOOL} --mode=install ${INSTALL_LIB} \
		${WRKSRC}/imports/Qt/labs/gestures/libqmlgesturesplugin.la \
		${DESTDIR}${QTPREFIX}/imports/Qt/labs/gestures/
	${LIBTOOL} --mode=install ${INSTALL_LIB} \
		${WRKSRC}/imports/Qt/labs/particles/libqmlparticlesplugin.la \
		${DESTDIR}${QTPREFIX}/imports/Qt/labs/particles/
	${LIBTOOL} --mode=install ${INSTALL_LIB} \
		${WRKSRC}/imports/Qt/labs/shaders/libqmlshadersplugin.la \
		${DESTDIR}${QTPREFIX}/imports/Qt/labs/shaders/
	${LIBTOOL} --mode=install ${INSTALL_LIB} \
		${WRKSRC}/imports/QtWebKit/libqmlwebkitplugin.la \
		${DESTDIR}${QTPREFIX}/imports/QtWebKit/
.for f in corelib declarative gui multimedia network opengl qt3support script scripttools sql svg testlib xml xmlpatterns 3rdparty/webkit/Source/WebKit/qt
	cd ${WRKSRC}/src/${f} && env ${MAKE_ENV} ${INSTALL_ENV} \
		${MAKE_PROGRAM} install_flat_headers install_targ_headers install_class_headers
.endfor
	cd ${DESTDIR}${PREFIX} && find qt4/include -type f -print > ${WRKDIR}/PLIST
.for f in Qt3Support QtCore QtDeclarative QtGui QtMultimedia QtNetwork QtOpenGL QtScript QtScriptTools QtSql QtSvg QtTest QtWebKit QtXml QtXmlPatterns jscore webcore
	${LIBTOOL} --mode=install ${INSTALL_LIB} ${WRKSRC}/lib/lib${f}.la \
		${DESTDIR}${QTPREFIX}/lib/
	sed	-e "s:${WRKSRC}:${QTPREFIX}:g" \
		-e "s:${QTPREFIX}/lib/lib\\([A-Za-z3]*\\)\\.la:-l\\1:g" \
		${WRKSRC}/lib/pkgconfig/${f}.pc | ${AWK} '!x[$$0]++' > ${WRKDIR}/${f}.pc
	${INSTALL_DATA} ${WRKDIR}/${f}.pc ${DESTDIR}${PREFIX}/lib/pkgconfig/
.endfor
	${INSTALL_DATA} ${WRKSRC}/tools/porting/src/q3porting.xml ${DESTDIR}${QTPREFIX}
.for f in qtaccessiblecompatwidgets qtaccessiblewidgets
	${LIBTOOL} --mode=install ${INSTALL_LIB} \
		${WRKSRC}/plugins/accessible/lib${f}.la \
		${DESTDIR}${QTPREFIX}/plugins/accessible/
.endfor
#.for f in qcorewlanbearer qgenericbearer
.if ${OPSYS} == "Darwin"
	${LIBTOOL} --mode=install ${INSTALL_LIB} \
		${WRKSRC}/plugins/bearer/libqcorewlanbearer.la \
		${DESTDIR}${QTPREFIX}/plugins/bearer/
.endif
	${LIBTOOL} --mode=install ${INSTALL_LIB} \
		${WRKSRC}/plugins/bearer/libqgenericbearer.la \
		${DESTDIR}${QTPREFIX}/plugins/bearer/
#.endfor
.for f in qcncodecs qjpcodecs qkrcodecs qtwcodecs
	${LIBTOOL} --mode=install ${INSTALL_LIB} \
		${WRKSRC}/plugins/codecs/lib${f}.la \
		${DESTDIR}${QTPREFIX}/plugins/codecs/
.endfor
.for f in qglgraphicssystem qtracegraphicssystem
	${LIBTOOL} --mode=install ${INSTALL_LIB} \
		${WRKSRC}/plugins/graphicssystems/lib${f}.la \
		${DESTDIR}${QTPREFIX}/plugins/graphicssystems/
.endfor
.for f in qsvgicon
	${LIBTOOL} --mode=install ${INSTALL_LIB} \
		${WRKSRC}/plugins/iconengines/lib${f}.la \
		${DESTDIR}/${QTPREFIX}/plugins/iconengines/
.endfor
.for f in qgif qico qjpeg qsvg qtga
	${LIBTOOL} --mode=install ${INSTALL_LIB} \
		${WRKSRC}/plugins/imageformats/lib${f}.la \
		${DESTDIR}${QTPREFIX}/plugins/imageformats/
.endfor
.if ${OPSYS} == "Darwin"
	${INSTALL_DATA} ${WRKSRC}/src/gui/mac/qt_menu.nib/*.nib \
		${DESTDIR}${QTPREFIX}/qt_menu.nib/
.else
	${LIBTOOL} --mode=install ${INSTALL_LIB} \
		${WRKSRC}/plugins/inputmethods/libqimsw-multi.la \
		${DESTDIR}/${QTPREFIX}/plugins/inputmethods/
.endif

.if ${OPSYS} != "Darwin"
.include "../../graphics/glu/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../x11/libXcursor/buildlink3.mk"
.include "../../x11/libXft/buildlink3.mk"
.include "../../x11/libXmu/buildlink3.mk"
.include "../../x11/libXrandr/buildlink3.mk"
.endif

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../fonts/fontconfig/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"

.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
