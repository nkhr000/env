### install

```
python3をpythonで呼び出せるように設定している

$ python -m ensurepip --upgrade
$ pip install pipx
```

### setting PATH

```
export PATH=~/.local/bin:$PATH
source ~/.bash_profile

* bash_profileはログイン時に1回のみ起動されるため、sourceで反映する
* bashrcはシェル起動ごとに実行される
```
