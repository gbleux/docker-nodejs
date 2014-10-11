# Rolling release image: AlpineLinux + nodejs

A Docker image based on [AlpineLinux] with [nodejs] pre-installed.

[AlpineLinux]: https://registry.hub.docker.com/u/alpinelinux/base/
[nodejs]: http://alpinelinux.org/apk/main/x86_64/nodejs

## ONBUILD

The working directory inside the container is _/usr/src/app_, which is
the location your application files (including **package.json**) will
be copied. `npm install` will ensure the dependencies are present inside
the container once the application is running.

>$ ls  
> .dockerignore Dockerfile index.js package.json  
>$ docker build -t $USER/my-app .  
>$ docker run $USER/my-app  