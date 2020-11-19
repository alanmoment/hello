FROM golang:1.14

WORKDIR ${pathToContext}
COPY main.go .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o main .

CMD ["./main"]

EXPOSE 9090