### ユーザ名/メールアドレスの設定

- グローバルに設定する場合  
  ユーザディレクトリ配下に.gitconfigファイルが作成される。
 
```
$ git config --global user.name "User Name"
$ git config --global user.email "user@email.com"
```

Keep my email address privateにしている場合、以下のメールアドレス形式でないとpushを受け付けてくれない
`{ID}+{username}@users.noreply.github.com`

Emailの再設定と、commitのメールアドレス変更を行う

``
$ git config --global user.email {ID}+{username}@users.noreply.github.com
$ git commit --amend --reset-author
``


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

### 差分確認
$ git diff

### コミット前の変更を削除
$ git checkout <file-name/directory/.>
```
