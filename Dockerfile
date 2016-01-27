FROM alpine:3.3
MAINTAINER Alexey Diyan <alexey.diyan@gmail.com>

RUN set -x \
  && buildDeps='go git' \
  && apk add --update $buildDeps \
  && GOPATH=/tmp go get bosun.org/cmd/scollector \
  && mv /tmp/bin/scollector /usr/local/bin/scollector \
  && apk del $buildDeps \
  && rm -rf /tmp/*

ENTRYPOINT ["/usr/local/bin/scollector"]
CMD ["--help"]
