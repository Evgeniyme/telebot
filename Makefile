VERSION=$(shell git describe --tags --abbrev=0)-$(shell git rev-parse --short HEAD)


format:
	gofmt -s -w ./

build:
	go build -v -o telebot -ldflags "-X="github.dev/Evgeniyme/telebot/cmd.appVersion=${VERSION}