### files

- `Dockerfile` : 基本的には新規ファイルの中にこのファイルのみ置く。ビルドのための設計書
- `.dockerignore` : ビルド時に除外するファイルを記載する。ワールドカードも利用可能。


### Dockerfile

```
FROM [image-name]:[tag-name]
RUN [command *基本的には1行にまとめレイヤーを節約する]
```

### build

```
docker build -t [image-name]:[tag-name] [dir-of-dockerfile]
```

