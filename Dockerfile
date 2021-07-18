FROM ubuntu:focal

ARG DEBIAN_FRONTEND=noninteractive
ARG TFLINT_VER=v0.30.0
ARG SHELLCHECK_VER=https://github.com/koalaman/shellcheck/releases/download/v0.7.2/shellcheck-v0.7.2.linux.x86_64.tar.xz
RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt-get -qq install curl

RUN curl -q -o /root/tflint_linux_amd64.zip https://github.com/terraform-linters/tflint/releases/download/v0.30.0/tflint_linux_amd64.zip && \
    curl -q -o /root/shellcheck.tar.xz https://github.com/koalaman/shellcheck/releases/download/v0.7.2/shellcheck-v0.7.2.linux.x86_64.tar.xz 
COPY hooks /hooks
