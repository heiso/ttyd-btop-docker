FROM tsl0922/ttyd:latest AS ttyd

FROM alpine:latest

COPY --from=ttyd /usr/bin/ttyd /usr/bin/ttyd

RUN apk add --no-cache btop htop

ENTRYPOINT [ "ttyd", "-W", "btop", "--force-utf" ]
