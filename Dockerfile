FROM --platform=amd64 golang:1.17.5-alpine3.15

WORKDIR /go/src/app
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

EXPOSE 9999

CMD ["app"]