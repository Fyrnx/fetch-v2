FROM ghcr.io/puppeteer/puppeteer:21.6.1

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/google-chrome-stable

WORKDIR /usr/src/app

WORKDIR /usr/app
COPY ./ /usr/app
RUN npm c
COPY . .
CMD [ "node" , "index.js" ]
