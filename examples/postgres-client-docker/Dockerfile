FROM alpine:3.16
RUN set -ex && \
  apk update && apk --no-cache add postgresql14-client
ENTRYPOINT [ "psql" ]
