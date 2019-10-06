ディレクトリごとに、パッケージを管理する。 
dev, prodなどの環境ごとに分けて適用することができる。 

### install 

- homebrew 
```
$ brew install pipenv
```

-- pip

```
$ pip install --user pipenv
```

### setting

```
$ echo "export LANG=ja_JP.UTF-8" >> ~/.bash_profile
```

### package management by pipenv
  
- pipenvでパッケージをインストールするとディレクトリ配下に`Pipfile`が生成される。　
- このファイルによって、環境ごとのパッケージ管理を行う。
- 実際のパッケージは`~/.local/`ディレクトリ配下で管理される
 
#### install  

- pipenv install --python [version:3.7] [lib-name]
 - `python`でバージョンを指定するとpyenvでの環境管理と同じように利用するpythonバージョンで仮想環境が構築される

```
$ pipenv install flake8 --dev

$ cat Pipfile
  [[source]]
  name = "pypi"
  url = "https://pypi.org/simple"
  verify_ssl = true
  
  [dev-packages]
  flake8 = "*"
  
 [packages]
 
 [requires]
 python_version = "3.7"
```  
※ `--dev`をつけると`[dev-packages]`にバージョンが定義される。`[[source]]`は複数指定（自分で追記）することができる。

#### create setup.cfg

- インストールパッケージの設定は`setup.cfg`に記載する
- 例） flake8の設定例：　設定がない場合は記載する必要はない。

```
$ vim setup.cfg

[flake8]
ignore = E203, E266, E501, W503
max-line-length = 100
max-complexity = 20
select = B,C,E,F,W,T4
```

#### インストールパッケージの実行

- プロジェクト内でパッケージを実行する場合は`run`コマンドを利用する

```
$ pipenv run flake8
```

#### 仮想環境のアクティベート

-- `pip freeze`で確認すると仮想環境でインストールしたパッケージのみが表示される。

```
$ pipenv shell
```

#### 仮想環境の削除

```
$ pipenv -rm
```



