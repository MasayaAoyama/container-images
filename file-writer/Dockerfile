FROM ubuntu:20.04

ENV TARGET_DIR=/data
ENV SIZE_MB=1000
ENV NUM_FILES=10

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
