PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man
RM = rm -f

all:
	@echo 'Run "sudo make install" to install rmapp.'

install:
	mkdir -p ${DESTDIR}${PREFIX}/bin
	install -Dm755 rmapp ${DESTDIR}${PREFIX}/bin/rmapp
	mkdir -p ${DESTDIR}${MANPREFIX}/man1
	install -Dm644 rmapp ${DESTDIR}${MANPREFIX}/man1/rmapp

uninstall:
	${RM} ${DESTDIR}${PREFIX}/bin/rmapp ${DESTDIR}${MANPREFIX}/man1/rmapp.1

.PHONY: all install uninstall
