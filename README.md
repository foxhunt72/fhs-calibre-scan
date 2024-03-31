# fhs-calibre-scan

Small container with scripts to add epub to image

usage:

```bash
docker run --rm -v /home/richard/epub:/books -v /tmp/library:/library calibre-scan
```

or with log
```
docker run --rm -v /home/richard/epub:/books -v /tmp/library:/library -v /tmp/logs:/logs calibre-scan
