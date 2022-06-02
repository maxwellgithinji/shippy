FROM golang:alpine as builder

RUN apk update && apk upgrade && \
    apk add --no-cache git

WORKDIR /app

COPY go.* $D/

CMD go mod download

COPY . /app/

RUN cd /app/ && CGO_ENABLED=0 GOOS=linux go build -v -o shippy-cli-consignment github.com/maxwellgithinji/shippy/shippy-cli-consignment

# Run container
FROM alpine:latest

RUN apk --no-cache add ca-certificates

COPY --from=builder /app/shippy-cli-consignment .

CMD ["./shippy-cli-consignment"]