FROM golang
WORKDIR /go/src/github.com/p6m7g8/p6-go-hello-world/
COPY main.go .
RUN go build -o hello .

FROM scratch
WORKDIR /root/
COPY --from=0 /go/src/github.com/p6m7g8/p6-go-hello-world/hello .
CMD ["./hello"]
