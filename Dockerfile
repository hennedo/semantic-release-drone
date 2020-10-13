FROM node:12-alpine

ADD release.sh create-credentials.js /semantic-release/

RUN npm i -g semantic-release @semantic-release/changelog @semantic-release/exec @semantic-release/git @saithodev/semantic-release-gitea \
  && apk update && apk add git \
  && chmod +x /semantic-release/release.sh

CMD ["/semantic-release/release.sh"]
