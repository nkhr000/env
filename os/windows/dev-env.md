Windowsディスクトップ開発設定
-----------------------------------

参考URL：https://docs.microsoft.com/ja-jp/windows/dev-environment/

# Windows OS設定

## 環境変数の設定

- VIM_HOME=C:\ProgramData\Microsoft\Windows\Start Menu\Programs\<Version of VIM>
- PIPENV_VENV_IN_PROJECT=true
  - pipenvの仮想環境に使用するフォルダの作成先を実行プロジェクトとする設定
- JAVA_HOME=C:\Program Files\AdoptOpenJDK\<Version of JDK>
- PATH

# Toolインストール設定

## Winget



## Visual Stadio Code

[ダウンロードサイト](https://code.visualstudio.com/)から取得

### 拡張機能のインストール

- Python (Microsoft)
- 

## Git

Gitの[ダウンロードサイト](https://git-scm.com/download/win)からダウンロード

## Docker

## Python

- ローカル環境にインストールする場合：「Microsoft Store」> 検索ボックスでPythonを検索 > インストール

#### PipEnv

[マニュアル](https://pipenv-ja.readthedocs.io/ja/translate-ja/index.html)

```
$ pip install pipenv
$ pipenv install     <-- PipfileやPipfile.Lockファイルが存在する場合に、そのファイルの内容を元に仮想環境を作成する
$ pipenv run python  <-- 仮想環境を利用するpythonインタプリタを起動する
$ pipenv runn <>.py  <-- 指定したpythonファイルを実行する
$ pipenv shell       <-- 仮想環境のシェルを起動する
```

- 設定情報
  - .env
    - pipenvで起動する仮想環境に読み込まれる環境変数の設定ファイル。実行フォルダ以外に配置する場合は PIPENV_DOTENV_LOCATION環境変数でパスを指定。
  - PIPENV_VENV_IN_PROJECT
    - Windows環境変数でtrueを設定することで、プロジェクトフォルダ(pipenv実行フォルダ）配下に.venvを作成。デフォルトはホームディレクトリ。  

## Go

## Node.js

## Rust

## WSL 
https://docs.microsoft.com/ja-jp/windows/wsl/about

### Kali Linux

### Ubuntu


## Windows Terminal

## Slack

## VIM for Windows

## draw.io

# Document

## PowerPoint

### Templateの取り込み

- テンプレートを保存  例) C:\Users\<Username>\Documents\Office のカスタム テンプレート
- PowerPointに個人用テンプレートフォルダを設定
  - ファイル > オプション > 保存 > 個人用テンプレートの既存の保存場所
  - テンプレートを保存したフォルダパスを上記に設定

### ショートカット

- Altキー：ツールバー上でショートカットのアルファベットを表示
- 表示されるアルファベットを順番にキー入力すればキーボード操作のみで操作可能（Shift+H：ホームタブ表示)
- クイックアクセスツールバーに登録すれば (Alt+SHift+数字で指定可能）
  - 登録はツールバー右端の下向き矢印 > その他のコマンド > コマンド選択：すべてのコマンドを設定
  - 下記のコマンドを追加
    - グリッド線
    - オブジェクトの配置
    - コメント
    - コメント削除
    - フォントの色
    - フォント

