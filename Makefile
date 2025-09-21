VERSION=1.0.1

PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man
RM = rm -f

all:
	@echo "Run \"sudo make install\" to install rmapp."

install:
	mkdir -p ${DESTDIR}${PREFIX}/bin
	install -Dm755 rmapp ${DESTDIR}${PREFIX}/bin/rmapp
	mkdir -p ${DESTDIR}${MANPREFIX}/man1
	sed "s/VERSION/${VERSION}/g" < rmapp.1 > ${DESTDIR}${MANPREFIX}/man1/rmapp.1
	chmod 644 ${DESTDIR}${MANPREFIX}/man1/rmapp.1

uninstall:
	${RM} ${DESTDIR}${PREFIX}/bin/rmapp ${DESTDIR}${MANPREFIX}/man1/rmapp.1

.PHONY: all install uninstall
