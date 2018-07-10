#### command for creating python3 environment

mkdir ./python3
 --> add Dockerfile and requirements.txt in the above directory.

docker build -t datapython . 
docker images 
docker run -i -v /private/var/shared_data:/var/shared_data -t datapython /bin/bash 
  --> -v option can specified shared directory (usage: -v <local directory>:<docker directory>) 
  --> before running the docker image, you should setting the local directory at docker settings. 

ls /var/shared_data/ 

exit 
