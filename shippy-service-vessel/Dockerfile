FROM golang:alpine as builder

RUN apk update && apk upgrade && \
    apk add --no-cache git

WORKDIR /app

COPY go.* $D/

CMD go mod download

COPY . /app/

RUN cd /app/ && CGO_ENABLED=0 GOOS=linux go build -v -o shippy-service-vessel github.com/maxwellgithinji/shippy/shippy-service-vessel

# Run container
FROM alpine:latest

RUN apk --no-cache add ca-certificates

COPY --from=builder /app/shippy-service-vessel .

CMD ["./shippy-service-vessel"]