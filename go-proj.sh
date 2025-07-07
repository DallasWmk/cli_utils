#!/bin/bash

APP=$(gum input --placeholder "app name")
CWD=$(pwd)
mkdir "$CWD/$APP" || exit 1
mkdir "$CWD/$APP/cmd" || exit 1
cd "$CWD/$APP/cmd" || exit 1
go mod init github.com/DallasWmk/"$APP"
cd ..
touch "$CWD/$APP/cmd/main.go"

mkdir "$CWD/$APP/internal"
mkdir "$CWD/$APP/internal/$APP"
mkdir "$CWD/$APP/internal/config"

mkdir "$CWD/$APP/pkg"

touch "$CWD/$APP/README.md"
