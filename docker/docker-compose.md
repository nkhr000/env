- docker composeは、コンテナをまとめて操作するための仕組み
- docker composeは、dockerの拡張機能ツールのため別途インストールが必要

#### インストール

```
-- ubuntu
sudo apt install docker-compose
```

#### 定義ファイル: `docker-compose.yml`

```
version: "2"
services:
  # container name
  ub-container:
    image: ubuntu:latest
    
    # 入出力の利用
    tty: true
    stdin_open: true
    
    # 起動時のコマンド指定
    command: /bin/bash
```

#### 起動

```
cd [dir-to-docker-compose-yml]

-- ymlファイル全体を実行する場合
docker-compose up

-- 特定のコンテナを実行する場合
docker-compose run [container name in yml file]
```

# log

```
docker-compose logs
```
