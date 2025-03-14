FROM golang:1.19

WORKDIR /app

COPY . .

RUN go mod tidy
RUN go build -o pos-backend

CMD ["/app/pos-backend"]