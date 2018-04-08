# -*- coding: us-ascii-unix -*-

PORT = 8080

check:
	find . -name "*.json" -exec jsonlint -cq {} \;

serve:
	@echo "Starting server on http://localhost:$(PORT)/"
	nodemon `which tileserver-gl` -p $(PORT)

.PHONY: check serve
