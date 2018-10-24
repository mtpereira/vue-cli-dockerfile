FROM node:10.12.0-alpine

ENV VUECLI_VERSION=3.0.5

RUN yarn global add @vue/cli@${VUECLI_VERSION} \
      && mkdir /vue \
      && chown node /vue

USER node
WORKDIR /vue
ENTRYPOINT ["vue"]
CMD ["help"]
