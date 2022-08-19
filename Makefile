PREFIX = /opt

configure:
	chmod +x ./bin/tidal_connect_application
	chmod +x ./start.sh


.PHONY: install
install: bin/tidal_connect_application
	install -d $(DESTDIR)$(PREFIX)/tidal-connect/
	cp -r ./* $(DESTDIR)$(PREFIX)/tidal-connect
	chmod +x $(DESTDIR)$(PREFIX)/tidal-connect/bin/tidal_connect_application
	chmod +x $(DESTDIR)$(PREFIX)/tidal-connect/start.sh
	cp tidal-connect.service /lib/systemd/system/
	systemctl enable tidal-connect.service
	systemctl start tidal-connect.service

.PHONY: uninstall
uninstall:
	systemctl stop tidal-connect.service
	systemctl disable tidal-connect.service
	rm -rf $(DESTDIR)$(PREFIX)/tidal-connect
	rm /lib/systemd/system/tidal-connect.service
