# Vistual Studio Code設定
https://code.visualstudio.com/docs
  
  
### For mac 
 
macにインストールしたvisual stadio codeのパスを通し、`code`コマンドを使えるようにする
 
```
$ ls /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code
$ ln -s /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code /usr/local/bin/code
```
  
- 実行: 
```
$ mkdir workdir
$ cd workdir
$ code .
```


### C++実行

- 前提：
  - gcc, g++をhomebrewでインストールし、/usr/local/binにgcc, g++のリンクを作成
  - プラグインC/C++をインストール
- 実行手順:
  - xxx.cppファイルを作成する
  - `c_cpp_properties.json`ファイルの`compilePath`をg++(/usr/local/g++）に変更する
  - `⌘+shift+B`で、g++を選択し、ビルドする
  - `xxx`という名前の実行ファイルができるので、ターミナル上で`./xxx`を実行する
  
### python設定

- pythonプラグインのインストール
- PEP8インストール `pip install pep8`
- 
