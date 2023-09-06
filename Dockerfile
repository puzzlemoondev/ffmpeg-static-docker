FROM alpine AS ffmpeg-static
RUN apk add --upgrade --no-cache nodejs npm
WORKDIR /build
COPY . .
RUN npm ci && \
    ./index.js /ffmpeg

FROM scratch
COPY --from=ffmpeg-static /ffmpeg /
ENTRYPOINT [ "/ffmpeg" ]
