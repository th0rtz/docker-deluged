#!/bin/bash
set -euo pipefail

mkdir /app/logs

/usr/bin/deluged \
	--config=/app/ \
	--pidfile=/deluged.pid \
	--logfile=/app/logs/deluged.log \
	--loglevel=info
/usr/bin/deluge-web \
	--config=/app/ \
	--logfile=/app/logs/deluge-web.log \
	--loglevel=info
tail -f /app/logs/deluged.log
