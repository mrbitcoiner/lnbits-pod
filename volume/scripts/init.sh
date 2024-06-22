#!/usr/bin/env bash
####################
set -e
####################
####################
init() {
	printf "running\n"
	cd /lnbits
	poetry run lnbits &
	printf ${!} > /tmp/lnbits.pid
	while kill -0 $(cat /tmp/lnbits.pid) 1>/dev/null 2>&1; do
		sleep 1
	done
}
####################
init
