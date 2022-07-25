FROM alpine:3
RUN apk add git jq curl openssh-client bash \
    && curl -Ls https://storage.googleapis.com/kubernetes-release/release/v1.23.9/bin/linux/amd64/kubectl -o /usr/bin/kubectl \
    && chmod +x /usr/bin/kubectl \
    && curl -Ls https://github.com/mikefarah/yq/releases/download/3.3.2/yq_linux_amd64 -o /usr/bin/yq \
    && chmod +x /usr/bin/yq
