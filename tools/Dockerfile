FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && \
    apt-get -y install git sed curl wget jq dnsutils libcap2-bin iputils-ping traceroute rsync stress tcpdump iproute2 procps diffutils nmap python3-pip gnupg vim software-properties-common telnet openssh-client && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install yq
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0 && \
    apt-add-repository https://cli.github.com/packages && \
    apt update && \
    apt -y install gh

RUN curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash

ENV TINI_VERSION v0.18.0
ARG ARCH=amd64
RUN curl -sL https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini-${ARCH} -o /tini
RUN chmod +x /tini

ENTRYPOINT ["/tini", "--"]
CMD ["/bin/sleep", "infinity"]
