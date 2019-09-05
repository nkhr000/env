### files

- `Dockerfile` : 基本的には新規ファイルの中にこのファイルのみ置く。ビルドのための設計書
- `.dockerignore` : ビルド時に除外するファイルを記載する。ワールドカードも利用可能。


### Dockerfile

- 複数行に分けて記載する場合は「\(バックスラッシュ）」を利用する
- 命令の書き方はShell形式とExec形式がある
- COPY/ADDはbuild対象のディレクトリより上位を指定できない（buildディレクトリがルート位置になるため）
- buildは同じ中間イメージがあれば再利用するため、build時にキャッシュの利用をやめるオプションをつけるか、`LABEL latestupdate=2019-03-21`のように`FROM`の後に異なる中間イメージとなるようにする
- ADD/COPY命令以降はキャッシュが利用されない

```
FROM [image-name]:[tag-name]
LABEL [key=value] [key=value]...

# RUNで実行するコマンドは、レイヤー節約のため基本的には1行にまとめる
RUN [命令]

# イメージからコンテナが生成される際に、コンテナがデフォルトで実行する命令
# docker runでコマンドを指定した場合は、上書きされる
CMD [命令]

# ホストOSを経由して外部から接続させる場合はdocker run時の-pオプションも必要
EXPOSE [port number]

# 環境変数
ENV [key=value] [key=value]...

# ホストOS上のファイルをそのままコピー
COPY [src path(absolute or relative)] [dist path]
# ホストOS上の圧縮ファイルを展開して、コンテナにコピー
ADD [src path(absolute or relative)] [dist path]

# コンテナ作成後に実行される命令。docker runのコマンドで上書きされない
ENTRYPOINT [命令]

# 指定したディレクトリをマウントポイントにする
VOLUME [dir]

# RUN/CMD/ENTRYPOINT/COPY/ADDを実行する際の作業ディレクトリ
WORKDIR [dir]

# build時（このDockerfileで作成したimageからbuildを実行する場合）に実行するコマンド
# 1つ目のDockerfileでimage-Aを作り、2つ目のDockerfileでimage-Aからimage-Bを作成する場合に、image-AのDockerfileのONBUILD命令が実行される
ONBUILD [命令]
```

### build

```
docker build -t [image-name]:[tag-name] [dir-of-dockerfile]

-- キャッシュを利用しない場合
docker build -t [image-name]:[tag-name] [dir-of-dockerfile] --no-chche=true
```

