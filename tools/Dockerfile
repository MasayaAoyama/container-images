FROM ubuntu:18.04

RUN apt-get -y update && \
    apt-get -y install git sed curl wget jq dnsutils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
ENTRYPOINT ["/bin/bash"]

