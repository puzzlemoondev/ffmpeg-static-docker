FROM alpine AS ffmpeg-static
RUN apk add --upgrade --no-cache nodejs npm
WORKDIR /build
COPY . .
RUN npm ci && \
    cp "$(node ffmpeg-static.js)" /ffmpeg

FROM scratch
COPY --from=ffmpeg-static /ffmpeg /
ENTRYPOINT [ "/ffmpeg" ]
