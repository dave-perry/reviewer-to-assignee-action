FROM debian:9.6-slim

LABEL "com.github.actions.name"="Reviewer to assignee"
LABEL "com.github.actions.description"="Automatically assign reviewers"
LABEL "com.github.actions.icon"="arrow-up-right"
LABEL "com.github.actions.color"="gray-dark"

LABEL version="1.0.0"
LABEL repository="https://github.com/dave-perry/reviewer-to-assignee-action"
LABEL homepage="https://github.com/dave-perry/reviewer-to-assignee-action"
LABEL maintainer="Dave Perry <insertwittyname@gmail.com>"

RUN apt-get update && apt-get install -y \
    curl \
    jq

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
