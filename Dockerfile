FROM node:22.13.1-alpine3.21

WORKDIR ["/koishi"]
COPY . /koishi
RUN corepack yarn

FROM node:22.13.1-alpine3.21

WORKDIR ["/koishi"]
COPY --from=0 /koishi /koishi
RUN apk add --no-cache chromium nss freetype harfbuzz ca-certificates ttf-freefont font-noto-cjk
CMD ["/koishi/node_modules/.bin/koishi", "start"]
