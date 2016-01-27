# scollector-docker
Bosun's scollector in a tiny Docker image powered by Alpine Linux.

Bosun's scollector is a replacement for OpenTSDB's TCollector and can be used to send metrics to a Bosun, OpenTSDB server and Prometheus scollector exporter. More info at: http://bosun.org/scollector/

# How to use this image

Print help:
```bash
docker run --rm diyan/scollector --help
```

The most simple usage:
```bash
docker run -d --name=scollector \
  diyan/scollector \
  -h=bosun-host:9107
```
