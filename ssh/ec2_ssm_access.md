## EC2にSSM経由でSSHアクセスするための設定

### 事前確認

VS CodeでもSSHできるように同時に設定する

```
> ssh -V

> code --version

> aws --version

> session-manager-plugin --version
```

SSM Pluginが入っていない場合は、以下のサイトから設定する
https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html

### SSH設定

~/.ssh/configに以下の設定を追加する
aws.exeはWindowsの場合の設定、他の環境では環境に合わせた設定が必要である

```
host ssm-remote
    HostName "インスタンスID"
    Port 22
    User ec2-user
    IdentityFile "EC2キーペア秘密鍵のフルパス" 
    ProxyCommand C:\Program Files\Amazon\AWSCLIV2\aws.exe ssm start-session --target %h --document-name AWS-StartSSHSession --parameters "portNumber=%p" --profile "profile name"
```

### SSH接続確認

ssh configで設定したHost名で接続可能か確認する

```
ssh ssm-remote
```

### VS Code設定

1. 「Remote - SSH」（Microsoft純正）をMarketPlaceから取得する
2. 左下に「><」のようなマークが表示されるので、クリックし「Connect to Host... (Remote-SSH)」を選択する
3. SSH Configに設定したHostを選択する
4. リモートプラットフォームを選択する
5. 