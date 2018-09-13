FROM golang:1.11-alpine3.8 AS build-env
COPY . /workspace
WORKDIR /workspace
RUN go build -o hello server.go

FROM alpine:3.8
COPY --from=build-env /workspace/hello /usr/local/bin/hello
ENTRYPOINT ["/usr/local/bin/hello"]
