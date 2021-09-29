# go-hello-world
A simple hello-world application written in Go to illustrate multi-stage builds in Docker 17.05, and the builder pattern

`docker build -t single-stage -f Dockerfile .`

```
$ docker images

REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
single-stage        latest              58328409dbf7        2 minutes ago       704MB
multi-stage         latest              9af3c2a2bf40        23 minutes ago      5.54MB
```

😱
