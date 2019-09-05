- docker composeは、コンテナをまとめて操作するための仕組み
- docker composeは、dockerの拡張機能ツールのため別途インストールが必要

### インストール

```
-- ubuntu
sudo apt install docker-compose
```

### 定義ファイル: `docker-compose.yml`

```
version: "2"
services:
  ub-container:
    image: ubuntu:latest
```

### 起動

```
cd [dir-to-docker-compose-yml]
docker-compose up
```
