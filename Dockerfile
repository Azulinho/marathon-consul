FROM bitnami/minideb:stretch
RUN apt-get update && apt-get install -y curl
RUN curl -L https://github.com/allegro/marathon-consul/releases/download/1.5.0/marathon-consul_1.5.0_linux_amd64.tar.gz > marathon-consul_1.5.0_linux_amd64.tar.gz && \
    tar xvzf marathon-consul_1.5.0_linux_amd64.tar.gz  && \
    cp marathon-consul_1.5.0_linux_amd64/marathon-consul /usr/bin/marathon-consul && \
    chmod +x /usr/bin/marathon-consul && \
    rm -rf marathon-consul_1.5.0_linux_amd64*


CMD /usr/bin/marathon-consul
