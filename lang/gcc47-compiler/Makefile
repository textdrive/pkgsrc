# $NetBSD$

PKGNAME=        ${GCC_PKGNAME}-compiler-${GCC_DIST_VERSION}
COMMENT=	The GNU Compiler Collection (GCC) 4.7 - Compilers

DEPENDS+=	${GCC_PKGNAME}-runtime>=${PKGVERSION_NOREV}:../../lang/${GCC_PKGNAME}-runtime

.include "../../lang/gcc47/Makefile.common"

TEST_TARGET=	-k check || ${TRUE}

pre-test:
	${RUN} 							\
	if runtest --version >/dev/null 2>/dev/null ; then	\
		: ;						\
	else							\
	  ${ECHO} "ERROR: Please install devel/dejagnu in order to run the test suite." ; \
	  exit 1 ;						\
	fi

post-test:
	${RUN} cd ${WRKSRC} && cd ${OBJDIR} &&		\
	${SHELL} ${WRKSRC}/contrib/test_summary >${WRKDIR}/test_summary.log
	@${INFO_MSG} "Test summary are available in ${WRKDIR}/test_summary.log"

post-install:
	${TEST} -f ${DESTDIR}${GCC_PREFIX}/bin/cc || \
		( cd ${DESTDIR}${GCC_PREFIX}/bin ; ${LN} -f gcc cc )
	# Exclude files provided by gcc47-runtime
	${RM} -f ${DESTDIR}${GCC_PREFIX}/lib/lib* ${DESTDIR}${GCC_PREFIX}/lib/*/lib*
.if !empty(PKG_OPTIONS:Mgcc-java)
	${RM} -f ${DESTDIR}${JAVA_HOME}/bin/javadoc
	${RM} -f ${DESTDIR}${JAVA_HOME}/jre/lib/${JAVA_ARCH}/libjawt.so
.endif
.if !empty(MACHINE_PLATFORM:MSunOS-*-*86*) && ${OS_VERSION} != "5.11"
 	${SH} files/values.c ${DESTDIR}${GCC_PREFIX}/bin/gcc -m32 || ${TRUE}
	${SH} files/values.c ${DESTDIR}${GCC_PREFIX}/bin/gcc -m64 || ${TRUE}
.endif

GENERATE_PLIST= \
	cd ${DESTDIR}${PREFIX} && \
	${FIND} ${GCC_SUBPREFIX} \( -type f -o -type l \) -print | ${SORT};

.include "../../mk/bsd.pkg.mk"
