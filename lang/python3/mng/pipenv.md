ディレクトリごとに、パッケージを管理する。 
dev, prodなどの環境ごとに分けて適用することができる。 

### install 

- by homebrew 
```
$ brew install pipenv
```
 
- by pipx 
```
$ pipx install pyenv
```

### install package by pipenv
  
pipenvでパッケージをインストールするとディレクトリ配下に`Pipfile`が生成される。　
このファイルによって、環境ごとのパッケージ管理を行う。

```
$ pipenv install black isort --dev

$ cat Pipfile
  [[source]]
  name = "pypi"
  url = "https://pypi.org/simple"
  verify_ssl = true
  
  [dev-packages]
  black = "*"
  isort = "*"
  
 [packages]
 
 [requires]
 python_version = "3.7"
```

