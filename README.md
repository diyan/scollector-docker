# scollector-docker
Bosun's scollector in a tiny Docker image powered by Alpine Linux

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
