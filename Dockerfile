FROM golang:alpine
LABEL name="golang application" maintainer="adeel <adeel.iqbal99@outlook.com>" summary="a golang apllication project"
WORKDIR /app
EXPOSE 80
COPY main.go .
RUN go env -w GO111MODULE=auto
RUN go build main.go
CMD ["./main"]
