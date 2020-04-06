FROM ubuntu:18.04

RUN apt-get -y update && \
    apt-get -y install git sed curl wget jq dnsutils libcap2-bin && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV TINI_VERSION v0.18.0
RUN curl https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini -o /tini
RUN chmod +x /tini

ENTRYPOINT ["/usr/local/bin/tini", "--"]
CMD ["/bin/sleep", "infinity"]
