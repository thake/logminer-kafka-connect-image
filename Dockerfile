ARG KAFKA_CONNECT_VERSION=5.4.2
FROM confluentinc/cp-kafka-connect-base:$KAFKA_CONNECT_VERSION

ARG LOGMINER_KAFKA_CONNECT_VERSION=0.3.0

RUN wget https://github.com/thake/logminer-kafka-connect/releases/download/$LOGMINER_KAFKA_CONNECT_VERSION/thake-logminer-kafka-connect-$LOGMINER_KAFKA_CONNECT_VERSION.zip && \
    confluent-hub install ./thake-logminer-kafka-connect-$LOGMINER_KAFKA_CONNECT_VERSION.zip --no-prompt &&\
    rm ./thake-logminer-kafka-connect-$LOGMINER_KAFKA_CONNECT_VERSION.zip