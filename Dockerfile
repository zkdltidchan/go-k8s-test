ARG GO_VERSION=1.21
FROM golang:${GO_VERSION}-alpine

    
WORKDIR /app

COPY . .

RUN go mod download
RUN go build -o /main

EXPOSE 3000

CMD [ "/main" ]
