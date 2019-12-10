FROM openjdk:8-jre-alpine
MAINTAINER Jin Wang
ENV SENTINEL_DASHBOARD_USERNAME=sentinel
ENV SENTINEL_DASHBOARD_PASSWORD=sentinel
ENV SERVER_PORT=8080
ENV SENTIENL_VERSION=1.7.0

RUN set -x \
    && wget https://github.com/alibaba/Sentinel/releases/download/${SENTIENL_VERSION}/sentinel-dashboard-${SENTIENL_VERSION}.jar \
    && mv sentinel-dashboard-${SENTIENL_VERSION}.jar /usr/local/bin/ \
    && chmod +x /usr/local/bin/sentinel-dashboard-${SENTIENL_VERSION}.jar

EXPOSE ${SERVER_PORT}

ENTRYPOINT java -jar /usr/local/bin/sentinel-dashboard-${SENTIENL_VERSION}.jar --server.port=${SERVER_PORT} --auth.username=${SENTINEL_DASHBOARD_USERNAME} --auth.password=${SENTINEL_DASHBOARD_PASSWORD}