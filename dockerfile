FROM nginx:alpine

ARG ORG_NAME
ARG ORG_TAGLINE
ARG ORG_MISSION
ARG ORG_VISION
ARG ORG_FOUNDED
ARG ORG_MEMBERS
ARG ORG_DIVISION
ARG ORG_EMAIL
ARG ORG_LOCATION

LABEL org.name="$ORG_NAME"
LABEL org.founded="$ORG_FOUNDED"
LABEL maintainer="$ORG_EMAIL"

COPY html/ /usr/share/nginx/html/

RUN sed -i "s|ORG_NAME_PLACEHOLDER|${ORG_NAME}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|ORG_TAGLINE_PLACEHOLDER|${ORG_TAGLINE}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|ORG_MISSION_PLACEHOLDER|${ORG_MISSION}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|ORG_VISION_PLACEHOLDER|${ORG_VISION}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|ORG_FOUNDED_PLACEHOLDER|${ORG_FOUNDED}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|ORG_MEMBERS_PLACEHOLDER|${ORG_MEMBERS}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|ORG_DIVISION_PLACEHOLDER|${ORG_DIVISION}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|ORG_EMAIL_PLACEHOLDER|${ORG_EMAIL}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|ORG_LOCATION_PLACEHOLDER|${ORG_LOCATION}|g" /usr/share/nginx/html/index.html

EXPOSE 80
