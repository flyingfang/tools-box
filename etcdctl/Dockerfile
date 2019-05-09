FROM alpine:3.7

ENV ETCD_VERSION 3.3.13

RUN apk update && \
    apk add curl && \
    curl -LOks https://github.com/etcd-io/etcd/releases/download/v${ETCD_VERSION}/etcd-v${ETCD_VERSION}-linux-amd64.tar.gz && \
    tar zxvf etcd-v${ETCD_VERSION}-linux-amd64.tar.gz && \
    cp etcd-v${ETCD_VERSION}-linux-amd64/etcdctl /bin/etcdctl && \
    rm -rf etcd-v* && \
    chmod +x /bin/etcdctl
