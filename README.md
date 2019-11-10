# spleeterDock

## インストール必要なもの

- Docker

## 使い方

- sounds/input/sample.wavを分離するまでの流れ

```
git clone https://github.com/fussy113/spleeterDock
cd spleeterDock
docker build -t spleeter-dock:lts ./
docker run --rm -it -v "#{APPLICATION_PATH}/spleeterDock/input:/work" spleeter-dock:lts bash

# Container内で実行
spleeter separate -i sounds/input/sample.wav -p spleeter:5stems -o sounds/output/
```
