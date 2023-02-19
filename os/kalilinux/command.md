### install and settings

https://hub.docker.com/r/kalilinux/kali-rolling

```
$ docker pull kalilinux/kali-rolling

<macの場合はDocker GUIから起動:name=>kali>
or
$ docker run --tty --interactive kalilinux/kali-rolling

Terminal login
$ docker exec -it kali /bin/bash
or 
$ docker container list --all 
$ docker start [container id]

No tool is default, so install tools
$ apt update && apt -y install kali-linux-large

```