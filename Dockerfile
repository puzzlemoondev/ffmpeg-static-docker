FROM alpine AS ffmpeg-static
RUN apk add --upgrade --no-cache nodejs npm
WORKDIR /build
COPY . .
RUN npm ci && \
    node index.js

FROM scratch
COPY --from=ffmpeg-static /ffmpeg /
ENTRYPOINT [ "/ffmpeg" ]
