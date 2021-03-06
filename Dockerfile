FROM brimstone/debian:sid

RUN package build-essential git libncurses5-dev libssl-dev libelf-dev bison \
    flex bc kmod cpio rsync

COPY config /

COPY entrypoint /

ENTRYPOINT ["/entrypoint"]
