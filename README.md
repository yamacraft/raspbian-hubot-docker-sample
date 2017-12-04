# Hubot Docker in Raspbian

主にRaspbian上でDocker越しにHubotを動作させるためのサンプルプロジェクトです。

## Raspbianの初期設定（Docker環境構築）について

下記のGistにてまとめています。

[Raspberry Pi3にRaspbianを入れてDockerを動かすまで](https://gist.github.com/yamacraft/8135ddf016e8e8b1bb671238863aecb1)

## Hubotの作成

`/hubot` の中身が空であることを前提としています。
つまりこのリポジトリは、既にそれが済んでいます。

```
$ docker-compose -f ./hubot-compose.yml build
$ docker-compose -f ./hubot-compose.yml run --rm hubot yo --no-insight hubot --defaults --name=rasbot --adapter slack
```

hubotの名前やdescriptionなどは、好きなように引数で設定してください。

## Hubotの実行

```
$ docker-compose -f ./hubot-compose.yml up --build -d
```

必要に応じて、 `HUBOT_NAME` や `HUBOT_SLACK_TOKEN` を環境変数で設定したり、compose.ymlに直接記述してください。

## 開発

立ち上げたコンテナをrestartすれば、scriptsの中身が再読み込みされます。
変更を自動で見てhubotを立ち上げ直す仕組みは知らない…。