FROM golang:1.14-alpine

# ARG PATHTOCONTEXT

# WORKDIR ${PATHTOCONTEXT}

WORKDIR /go/src/app
ADD main /go/src/app
# COPY main.go .

# RUN pwd
# RUN ls -all
# RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o main .

CMD ["./main"]

EXPOSE 9090