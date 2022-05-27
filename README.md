# s3_mount_docker
Using goofys


# goofys
```
$ sudo docker run -it --privileged IMAGE_ID

# in container 
$ aws configure
$ goofys -f S3_BUCKET YOURDIR
```
