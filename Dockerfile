FROM node:12

WORKDIR /app

LABEL version="1.0.0"
LABEL repository="https://github.com/dmytro-derkach/serverless-github-action"
LABEL homepage="https://github.com/dmytro-derkach/serverless-github-action"
LABEL maintainer="Dmytro Derkach"

LABEL "com.github.actions.name"="serverless github action"
LABEL "com.github.actions.description"="Deploy serverless app to aws"
LABEL "com.github.actions.icon"="zap"
LABEL "com.github.actions.color"="red"

RUN npm install -g serverless

COPY deploy.sh deploy.sh
RUN chmod +x deploy.sh

ENTRYPOINT ["/app/deploy.sh"]
