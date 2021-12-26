FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && \
    apt-get -y install openssl curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl

ENV TINI_VERSION v0.18.0
ARG ARCH=amd64
RUN curl -sL https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini-${ARCH} -o /tini
RUN chmod +x /tini

ENTRYPOINT ["/tini", "--"]
CMD ["/bin/sleep", "infinity"]
