FROM golang:1.17.1-alpine3.14 as builder
ADD . /app
WORKDIR /app
RUN go mod download
RUN go build -o /lms
CMD ["/lms"]
