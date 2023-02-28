# ffmpeg-static-docker

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
