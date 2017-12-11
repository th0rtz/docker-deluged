#!/bin/sh
#

set -e

if [ "$1" = 'startup' ]; then
	/usr/bin/deluged --config=/app/ --pidfile=/deluged.pid --logfile=/app/deluged.log --loglevel=info
	/usr/bin/deluge-web --config=/app/ --logfile=/app/deluge-web.log --loglevel=info
	tail -f /app/deluged.log
fi
