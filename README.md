# A tiny docker image running darkhttpd

## Credit
I did not write [darkhttpd](https://unix4lyfe.org/darkhttpd/). Credit goes to Emil Mikulic <emikulic@gmail.com> \
Also thanks to [Daniel Lundin](https://github.com/dln/darkhttpd) for the brilliant Dockerfile

## Base Docker Image
SCRATCH

## Get the image from Docker Hub
```
docker pull fullaxx/darkhttpd
```
## Run the image
```
docker run -d -p 80:80 -v /srv/docker/darkhttpd/www:/www fullaxx/darkhttpd /www
```
## Build it locally using the github repository
```
docker build -t="fullaxx/darkhttpd" github.com/Fullaxx/darkhttpd
```
