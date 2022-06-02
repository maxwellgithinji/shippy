FROM golang:alpine as builder

RUN apk update && apk upgrade && \
    apk add --no-cache git

WORKDIR /app

COPY . .

CMD go mod download


RUN cd /app/ && CGO_ENABLED=0 GOOS=linux go build -v -o shippy-cli-consignment github.com/maxwellgithinji/shippy/shippy-cli-consignment

# Run container
FROM alpine:latest

RUN apk --no-cache add ca-certificates

RUN mkdir /app
WORKDIR /app
ADD consignment.json /app/consignment.json
COPY --from=builder /app/shippy-cli-consignment .

CMD ["./shippy-cli-consignment"]