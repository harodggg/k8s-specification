FROM golang:1.11.4-alpine3.8 AS build-env
 
ENV GO111MODULE=off
RUN mkdir -p /go/src/${GITPATH}
 
FROM alpine:latest
ENV apk –no-cache add ca-certificates
COPY --from=build-env /usr/bin/ls /root/ls
WORKDIR /root
CMD ["/root/ls"]