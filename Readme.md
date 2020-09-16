# Logminer Kafka connect Docker image

This repository contains the Dockerfile for a docker image containing a Confluent Kafka 
Connect installation with [logminer-kafka-connect](https://github.com/thake/logminer-kafka-connect) connector installed.

The docker image does NOT contain the required oracle jdbc drivers because of license issues. This image can not be used as it is. You can only use this docker image as a base layer for your custom
docker image that includes the oracle jdbc driver. 

You'll find an example docker file at [Dockerfile-Derived](Dockerfile-Derived). This Dockerfile leverages this image to make a runnable
docker image of the logminer kafka connect component. 