Command for python3 settings
------------------------------------------

1. Add the Dockerfile and the requirements.txt in a created directory (./python3) .

```
mkdir ./python3
```

2. execute docker commands

```
docker build -t datapython .  
docker images  
docker run -i -v /private/var/shared_data:/var/shared_data -t datapython /bin/bash  
```
  
   -v option can specify the shared directory (usage: -v <local directory>:<docker directory>)  

3. confirm the shared directory at the image

```
ls /var/shared_data/  
exit  
```
