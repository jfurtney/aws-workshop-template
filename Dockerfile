FROM ubuntu:latest
RUN apt-get update && apt-get install -y hugo
COPY . /home/app
WORKDIR /home/app
RUN git submodule update --init
ENTRYPOINT ["hugo", "server", "--bind=0.0.0.0"]
