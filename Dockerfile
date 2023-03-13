FROM alpine AS ffmpeg-static
RUN apk add --upgrade --no-cache nodejs npm
WORKDIR /build
COPY . .
RUN npm install && \
    echo "console.log(require('ffmpeg-static'))" > ffmpeg-static.js && \
    cp "$(node ffmpeg-static.js)" /ffmpeg

FROM scratch
COPY --from=ffmpeg-static /ffmpeg /
ENTRYPOINT [ "/ffmpeg" ]
