# ffmpeg-static-docker

[![Publish](https://github.com/puzzlemoondev/ffmpeg-static-docker/actions/workflows/publish.yml/badge.svg)](https://github.com/puzzlemoondev/ffmpeg-static-docker/actions/workflows/publish.yml)
[![Docker Image Version (latest semver)](https://img.shields.io/docker/v/puzzlemoondev/ffmpeg-static?sort=semver)](https://hub.docker.com/r/puzzlemoondev/ffmpeg-static)
[![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/puzzlemoondev/ffmpeg-static?sort=semver)](https://hub.docker.com/r/puzzlemoondev/ffmpeg-static)

ffmpeg static binary dockerized using [ffmpeg-static](https://github.com/eugeneware/ffmpeg-static).

## Usage

### Dockerfile

```Dockerfile
COPY --from=puzzlemoondev/ffmpeg-static /ffmpeg /usr/local/bin/
```

### Run directly

```sh
docker run -i --rm -u $UID:$GROUPS -v "$PWD:$PWD" -w "$PWD" puzzlemoondev/ffmpeg-static -i file.wav file.mp3
```
