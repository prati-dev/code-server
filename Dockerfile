FROM linuxserver/code-server

# Update and upgrade repo
RUN apt-get update -y -q && apt-get upgrade -y -q  && \
curl -fsSL https://get.docker.com | sh && \
curl -s https://storage.googleapis.com/golang/go1.2.2.linux-amd64.tar.gz| tar -v -C /usr/local -xz

ENV PATH $PATH:/usr/local/go/bin


