FROM golang as builder
ENV VERSION=v1.3.4
WORKDIR /go/src/github.com/omrikiei/
RUN git clone https://github.com/omrikiei/ktunnel -b ${VERSION} && \
    cd ktunnel && \
    CGO_ENABLED=0 go build -ldflags="-s -w"

FROM alpine
COPY --from=builder /go/src/github.com/omrikiei/ktunnel/ktunnel /usr/local/bin/ktunnel
 

