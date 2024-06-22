#!/usr/bin/env bash
####################
set -e
####################
readonly COMMIT_V="2db5a83f4ed5dd21d99123a0947238f0674270c0"
####################
build() {
	cd /
	git clone https://github.com/lnbits/lnbits lnbits
	cd lnbits
	git checkout "${COMMIT_V}"
	poetry install --only main
}
####################
build
