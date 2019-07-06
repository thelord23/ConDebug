# ConDebug
This small dockerfile hack is an example of a way to debug a docker container that is not starting,
it also overcomes issues when containers do not start their own shell.

## How to Use
Step by step guide:
1. Pull this project.
2. Copy from alipne container `/bin/busybox` to the project folder.
3. Copy from alipne container `/lib/ld-musl-x86_64.so.1` to the project folder.
4. Edit the Dokcerfile and replace `FROM scratch` with your image to debug.
5. build the image.
6. Now you can start your image with the following command to start debugging using busybox:
`docker run -it <your image> /bin/busybox sh`
