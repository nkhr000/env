
#### ubuntu base image

```
docker build -f ./ubuntu/Dockerfile -t ubuntu_ctf_image:1.0 .
docker voliume create data
docker run -it -d -v data:/shared_data --name ctf-ubuntu ubuntu/ctf:latest
```
