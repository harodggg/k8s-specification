FROM golang:1.11.4-alpine3.8 AS build-env
 
ENV GO111MODULE=off
ENV GO15VENDOREXPERIMENT=1
ENV GITPATH=github.com/lattecake/hello
RUN mkdir -p /go/src/${GITPATH}
COPY ./ /go/src/${GITPATH}
RUN cd /go/src/${GITPATH} && CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go install -v
 
FROM alpine:latest
ENV apk –no-cache add ca-certificates
COPY --from=build-env /go/bin/hello /root/hello
WORKDIR /root
CMD ["/root/hello"]