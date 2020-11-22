FROM golang:1.14-alpine

WORKDIR /go

# ARG PATHTOCONTEXT
# WORKDIR ${PATHTOCONTEXT}

# COPY main /go/src/app
# WORKDIR /go/src/app
# COPY main /go
ADD main.go /go

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o main .

CMD ["./main"]

EXPOSE 9090