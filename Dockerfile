FROM golang:1.14-alpine

# ARG PATHTOCONTEXT
# WORKDIR ${PATHTOCONTEXT}

# COPY main /go/src/app
# WORKDIR /go/src/app
# ADD main /go/src/app
# RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o main .

# COPY main /go
COPY --from=build main /go
WORKDIR /go

CMD ["./main"]

EXPOSE 9090