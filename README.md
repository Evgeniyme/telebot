# Bot Link 
t.me/thegeka_promv1bot

# Telebot
How to run telegram bot
https://github.com/tucnak/telebot
#
1. Init go module

```bash
go mod init github.com/Evgeniyme/telebot
``` 
2. Generate main.go, cmd dir, version.go
```bash
cobra-cli init 
cobra-cli add version 
``` 
3. Generate telebot.go with Cobra cli 

```bash
cobra-cli add telebot 
``` 
4. To set version run next
```bash
go build -ldflags "-X="github.com/Evgeniyme/telebot/cmd.appVersion=v1.0.*
``` 
5. Download and install dependencies

```bash
go get 
``` 
4. Test run
Without Telegram API token you should recive an error

```bash
./telebot run
``` 

5. Export API tocken to variable TELE_TOKEN
```bash
read -s TELE_TOKEN 
CTRL+V copied token
echo $TELE_TOKEN
export TELE_TOKEN
```
6. Run bot 

```bash
./telebot run
```

During execution, telebot will create a new telebot.Context for each incoming message, which you can use in your message handlers.
