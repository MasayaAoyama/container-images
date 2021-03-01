FROM ubuntu:20.04

ARG INSTALL_KEY=379CE192D401AB61
RUN apt-get install gnupg1 apt-transport-https dirmngr \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $INSTALL_KEY \
    && echo "deb https://ookla.bintray.com/debian generic main" > /etc/apt/sources.list.d/speedtest.list \
    && apt-get update \
    && apt-get install speedtest \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["speedtest"]
CMD ["--unit=auto-binary-bits", "--precision=1", "--format=json"]

