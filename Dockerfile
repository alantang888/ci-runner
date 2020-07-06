FROM alpine:3
RUN apk add git curl openssh-client \
    && curl -Ls https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl -o /usr/bin/kubectl \
    && chmod +x /usr/bin/kubectl \
    && curl -Ls https://github.com/mikefarah/yq/releases/download/3.3.2/yq_linux_amd64 -o /usr/bin/yq \
    && chmod +x /usr/bin/yq \
    && apk add hub --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
    && wget https://github.com/kelseyhightower/hub-credential-helper/releases/download/0.0.1/hub-credential-helper-linux-amd64-0.0.1.tgz \
    && tar -xvf hub-credential-helper-linux-amd64-0.0.1.tgz \
    && mv hub-credential-helper /usr/local/bin/
