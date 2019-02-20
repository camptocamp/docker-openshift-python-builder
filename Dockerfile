FROM debian:stretch

RUN apt-get update && \
    apt-get install -y python-virtualenv make && \
	rm -rf /var/lib/apt/lists

RUN useradd -u 1001 builder

RUN mkdir /build && \
    chown -R 1001:1001 /build

USER 1001
