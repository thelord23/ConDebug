# ConDebug
This small dockerfile hack is an example of a way to debug a docker container that is not starting,
it also overcomes issues when containers do not start their own shell.

## How to Use
Pull this project.
Copy from alipne container `/bin/busybox` to the project folder.
Copy from alipne container `/lib/ld-musl-x86_64.so.1` to the project folder.
Edit the Dokcerfile and replace `FROM scratch` with your image to debug.
build the image.
Now you can start your image with the following command to start debugging using busybox:
`docker run -it <your image> /bin/busybox sh`
