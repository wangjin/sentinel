from FROM openjdk:8-jre-alpine
MAINTAINER Jin Wang
ENV SENTINEL_DASHBOARD_USERNAME=sentinel
ENV SENTINEL_DASHBOARD_PASSWORD=sentinel
ENV SERVER_PORT=8080
ENV SENTIENL_VERSION=1.6.2

RUN set -x \
    && https://github.com/alibaba/Sentinel/releases/download/${SENTIENL_VERSION}/sentinel-dashboard-${SENTIENL_VERSION}.jar

EXPOSE ${SERVER_PORT}

ENTRYPOINY ["java","-jar","sentinel-dashboard-${SENTIENL_VERSION}.jar","--server.port=${SERVER_PORT}","--sentinel.dashboard.auth.username=${SENTINEL_DASHBOARD_USERNAME}","--sentinel.dashboard.auth.password=${SENTINEL_DASHBOARD_PASSWORD}"]