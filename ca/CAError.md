CAの証明書エラーになっている場合の対処方法  
Proxyサーバなどでデータを解凍して再度Proxyサーバで暗号化している場合などに発生

### Root証明書のダウンロード

BASE64でRoot証明書を所定のフォルダにダウンロード "/caroot/root.crt"


### gitの場合

```
$ git config --global http.sslCAInfo /caroot/root.crt
$ cat ~/.gitconfig
```

### npmの場合

```
環境変数に設定
NODE_EXTRA_CA_CERTS=/caroot/root.crt
```

### python(pip)の場合

```
$ pip install --trusted-host pypi.python.org --trusted-host files.pythonhosted.org --trusted-host pypi.org --upgrade certifi
$ python
>>> import certifi
>>> certifi.where()

環境変数設定
CERT_PATH=path/to/certifi.where
SSL_CERT_FILE=%CERT_PATH%
REQUESTS_CA_BUNDLE=%CERT_PATH%
```