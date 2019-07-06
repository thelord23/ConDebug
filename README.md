# ConDebug
This small dockerfile hack is an example of a way to debug a docker container that is not starting,
it also overcomes issues when containers do not start their own shell.

## How to Use
Step by step guide:
1. Pull this project.
2. Run the `prepare.sh` script. 
3. Edit the Dokcerfile and replace `FROM scratch` with your image to debug.
4. build the image.
5. Now you can start your image with the following command to start debugging using busybox:
`docker run -it <your image> /bin/busybox sh`
