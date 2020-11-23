FROM golang:1.15-alpine

# Set the Current Working Directory inside the container
WORKDIR /src/

COPY app.go /src/

# Build the Go app
RUN CGO_ENABLED=0 GOOS=linux go build -o /bin/app

# Run the binary program produced by `go build`
ENTRYPOINT ["/bin/app"]

# This container exposes port 8080 to the outside world
EXPOSE 8080