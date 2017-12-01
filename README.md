# Hubot Docker in Raspbian

主にRaspbian上でHubotを動作させるためのDockerプロジェクトです。

## 実行

```
$ docker-compose -f ./hubot-compose.yml up --build -d
```

必要に応じて、 `HUBOT_NAME` や `HUBOT_SLACK_TOKEN` を環境変数で設定したり、compose.ymlに直接記述してください。