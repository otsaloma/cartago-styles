# -*- coding: us-ascii-unix -*-

PORT = 8080

serve:
	@echo "Starting server on http://localhost:$(PORT)/"
	nodemon `which tileserver-gl` -p $(PORT)

.PHONY: serve
