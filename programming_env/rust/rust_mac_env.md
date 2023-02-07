
#### install

```
$ curl https://sh.rustup.rs -sSf | sh
```

- package manager "Cargo"は `/Users/<User>/.cargo/bin`にインストールされる
- "Cargo"のディレクトリは `CARGO_HOME`を設定することで変更できる
- "RustUp"のホームディレクトリは `/Users/<User>/.rustup`で `RUSTUP_HOME`を設定することで変更できる

#### uninstall

```
$ rustup self uninstall
```

#### version確認

```
$ rustc --version
```

#### compile

```
$ rustc filename.rs
```
