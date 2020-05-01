FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && \
    apt-get -y install git sed curl wget jq dnsutils libcap2-bin iputils-ping traceroute rsync stress tcpdump && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV TINI_VERSION v0.18.0
ARG ARCH=amd64
RUN curl -sL https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini-${ARCH} -o /tini
RUN chmod +x /tini

ENTRYPOINT ["/tini", "--"]
CMD ["/bin/sleep", "infinity"]
