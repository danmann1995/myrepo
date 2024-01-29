# syntax=docker/dockerfile:1

FROM golang:1.21.6-alpine

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /docker-gs-ping

EXPOSE 8080

CMD [ "/go docker-gs-ping" ]