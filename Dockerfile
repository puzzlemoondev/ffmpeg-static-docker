FROM node AS ffmpeg-static
WORKDIR /build
COPY . .
RUN npm install && \
    echo "console.log(require('ffmpeg-static'))" > ffmpeg-static.js && \
    cp "$(node ffmpeg-static.js)" /ffmpeg

FROM scratch
COPY --from=ffmpeg-static /ffmpeg /
ENTRYPOINT [ "/ffmpeg" ]
