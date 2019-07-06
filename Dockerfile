FROM scratch
ADD ld-musl-x86_64.so.1 /lib/ld-musl-x86_64.so.1
ADD ld-musl-x86_64.so.1 /lib/libc.musl-x86_64.so.1
ADD busybox /bin/sh
ADD busybox /bin/busybox
RUN /bin/busybox ln -s /bin/busybox /bin/ls;/bin/busybox ln -s /bin/busybox /bin/ln;/bin/busybox ln -s /bin/busybox /bin/mv;/bin/busybox ln -s /bin/busybox /bin/cp;/bin/busybox ln -s /bin/busybox /bin/rm;rm /bin/sh;/bin/busybox ln -s /bin/busybox /bin/sh;
CMD ["/bin/sh",""]

