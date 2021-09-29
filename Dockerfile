FROM golang:1.8 AS builder 

RUN apt-get update &&\
    apt-get install curl -y &&\
    apt-get install gnupg -y

WORKDIR /go/src/github.com/codeship/go-hello-world
COPY hello-world.go .
RUN go build -o hello-world .

#CMD ./hello-world

FROM alpine:latest AS final
WORKDIR /app
COPY --from=builder /go/src/github.com/codeship/go-hello-world/hello-world .

ENTRYPOINT ["./hello-world"]
