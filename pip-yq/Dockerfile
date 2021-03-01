FROM alpine:3.11

RUN apk add --update jq py-pip \
    && pip install yq \
    && rm /var/cache/apk/*

ENTRYPOINT ["yq"]

