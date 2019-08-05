### ユーザ名/メールアドレスの設定

- グローバルに設定する場合  
  ユーザディレクトリ配下に.gitconfigファイルが作成される。
 
```
$ git config --global user.name "User Name"
$ git config --global user.email "user@email.com"
```

### gitリポジトリの初期化

```
$ git init
```

### ファイル操作

```
$ git status

### ファイルをgit管理に追加
$ git add <file-name/directory/.>

### 管理ファイルをリポジトリーに追加
$ git commit -m <commit-comments>
```
