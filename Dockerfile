FROM Ubuntu:18.04

RUN apt-get -y update && \
    apt-get -y install git sed curl wget jq  && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
ENTRYPOINT ["/bin/bash"]

