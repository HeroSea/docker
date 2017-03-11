FROM herosea/ubuntu-golang:latest

MAINTAINER Herosea Zhou <herosea.zhou@gmail.com>

RUN go get github.com/herosea/shadowsocks-go && \
    cd ~/.go/src/github.com/herosea/shadowsocks-go/mu && \
    go get && \
    go build && \
    cp example.conf ~/.go/bin/config.conf && \
    ln -s ~/.go/bin/mu /usr/bin/mu

CMD ["/usr/bin/mu"]



