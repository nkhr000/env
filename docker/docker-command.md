### insatall docker on linux 

- ubuntu

```
$ sudo apt update
$ sudo apt upgrade
$ sudo apt install docker.io
```

- centos

```
$ su -
# yum install update
# yum install -y docker
```

### get images from docker hub

```
docker pull <image name>
docker pull ubuntu

-- Lightweight OS --
docker pull busybox
docker pull alpine
```

### confirming images/containers

```
docker images -a

docker ps -a
```

### delete images/containers

```
-- images
docker rmi <image-name/image-id>
docker image prune

-- container
docker rm <container-id>
docker container prune

-- tag
docker rmi <image-name/image-id>:<tag-name>
```

### create container

- docker run [option] <image-name>[:tag] [command] [args]
  - ディレクトリマウントオプション： `-v`
  - バックグラウンド実行オプション： `-d`

```
docker run -it ubuntu /bin/bash

-- コンテナ終了時に自動削除
docker run --rm -it ubuntu /bin/bash

-- ディレクトリをマウント
docker run -v /root/:/tmp/ -it ubuntu /bin/bash
```

### start/attach

- docker start [option] <container-id>

```
docker start -ai $(docker ps -lq)
* aiは標準入出力の利用オプション
```

- docker attach <container-id>

### save

```
1. create image from container
docker commit <container-id> <image-id>

2. create tag
docker tag <image-name>:<old-tag-name> <image-name>:<new-tag-name>

3-1. save 
docker save [image-name]:[tag-name] > [file-name].tar

3-2. export (Do not keep base image)
docker export [container-id] > [file-name].tar

4-1. load (from save file)
docker load < [save-file-name].tar

4-2. import (from export file)
docker import [export-file-name].tar
```

### data volume

```
docker volume create --name=[volume-name]
docker volume ls
docker volume rm [volume-name]
docker volume prune 

* データボリュームのhost-os上の保存先を見る場合
docker inspect [volume-name]
```

### data volume container

```
docker run --name=[container-name] -v [volume-name]:[mount-point-directory] [image-name]
* データボリュームやマウント先のディレクトリが作成されていない場合は自動で作成される
```

### backup/restore

```
-- backup container
docker run --volumes-from [volume-container-name] -v [host-os-dir]:/backup [image-name] tar cvf /backup/container-bkup.tar -C [backup-parent-dir] [backup-dir-name] 

-- restore container
docker run --volumes-from [volume-container-name] -v [host-os-dir]:/backup [image-name] tar xvf /backup/container-bkup.tar -C [backup-parent-dir]
```

### log

```
docker logs [container-id]
* Exited(0)以外で異常終了(100など)した場合に、ログを確認できる
```
