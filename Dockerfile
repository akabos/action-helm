FROM golang:1.14-alpine3.11 AS build

RUN apk add --no-cache git make bash gcc musl-dev
RUN git clone https://github.com/helm/helm.git \
 && cd helm \
 && git checkout tags/v3.1.2 \
 && make

FROM alpine:3.11
COPY --from=build /go/helm/bin/helm /usr/local/bin/
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
