FROM node:22.13.1-alpine3.21

WORKDIR ["/koishi"]
COPY . /koishi
RUN apk add --no-cache chromium nss freetype harfbuzz ca-certificates ttf-freefont font-noto-cjk && corepack yarn
CMD ["/koishi/node_modules/.bin/koishi", "start"]
