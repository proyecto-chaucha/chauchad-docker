FROM ubuntu:16.04

# deps
RUN apt update
RUN apt install -y software-properties-common
RUN add-apt-repository ppa:bitcoin/bitcoin
RUN apt update

# bitcoin deps
RUN apt install -y libboost-all-dev libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev
RUN apt install -y libdb4.8-dev libdb4.8++-dev libminiupnpc-dev
RUN apt install -y libevent-dev
RUN apt install -y libzmq5

RUN mkdir -p chauchad

WORKDIR /chauchad

# Chauchad
ENTRYPOINT ["./chauchad", "-datadir=datadir", "-conf=chaucha.conf"]
