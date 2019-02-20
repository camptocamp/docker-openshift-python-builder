FROM debian:stretch

RUN apt-get update && \
    apt-get install -y python-virtualenv make && \
	rm -rf /var/lib/apt/lists

RUN useradd builder

RUN mkdir /build && \
    chown -R builder:0 /build

USER builder
