# nodejs image with ONBUILD instructions

Extending the nodejs base image, this image uses ONBUILD instructions
to embed nodejs applications.

## Usage

The working directory inside the container is _/usr/src/app_, which is
the location your application files (including **package.json**) will
be copied. `npm install` will ensure the dependencies are present inside
the container once the application is running.

>$ ls
> .dockerignore Dockerfile index.js package.json
>$ docker build -t $USER/my-app .
>$ docker run $USER/my-app