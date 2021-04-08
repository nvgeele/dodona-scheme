FROM racket/racket:7.7

RUN apt-get update \
 && apt-get install -y jq \
 && rm -rf /var/lib/apt/lists/* \
 && chmod 711 /mnt \
 && useradd -m runner

WORKDIR /home/runner
USER runner

RUN mkdir /home/runner/workdir

WORKDIR /home/runner/workdir
COPY main.sh /main.sh
