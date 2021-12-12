FROM openjdk:8u181-jdk-alpine
RUN apk update && apk add unzip wget bash
WORKDIR /app
RUN wget https://github.com/feihong-cs/JNDIExploit/releases/download/v1.2/JNDIExploit.v1.2.zip
RUN unzip JNDIExploit.v1.2.zip
COPY entry.sh /app/entry.sh
RUN chmod +x /app/entry.sh
ENTRYPOINT /app/entry.sh