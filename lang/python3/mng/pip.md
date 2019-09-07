#### 仮想環境とpipの更新

```
$ python -m venv [venv-dir-name]
$ cd [venv-dir-name]
$ source bin/activate
$ pip install -U
```

#### pipパッケージの保存と再インストール

```
$ pip freeze > requiremetns.txt
$ cat requirements.txt
$ pip install -r requirements.txt
```
