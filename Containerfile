FROM docker.io/library/debian:bookworm-slim

ARG DEBIAN_FRONTEND=noninteractive

RUN \
	set -e; \
	apt update; \
	apt install -y --no-install-recommends \
		git ca-certificates python3 python3-poetry pkg-config gcc make libc-dev \
		python3-dev

ADD ./volume/scripts/build.sh /scripts/build.sh

RUN set -e; \
	/scripts/build.sh

ENTRYPOINT ["/app/scripts/init.sh"]
