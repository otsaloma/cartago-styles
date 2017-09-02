# -*- coding: us-ascii-unix -*-

PORT = 8080
TARBALL = ../cartago-styles-`date +%Y%m%d`.tar.xz

backup:
	tar -C .. -cJf $(TARBALL) --exclude="**.mbtiles" `basename $$PWD`
	dropbox-uploader -p upload $(TARBALL) Backups
	dropbox-uploader -h list Backups | grep cartago-styles
	rm $(TARBALL)

serve:
	@echo "Starting server on http://localhost:$(PORT)/"
	nodemon /usr/local/bin/tileserver-gl -p $(PORT)

.PHONY: backup serve
