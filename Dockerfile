FROM node:14-alphine AS development
ENV NODE_ENV development

WORKDIR /app

COPY package.json .
COPY yarn.lock .
RUN yarn install

COPY . .

EXPOSE  8000

CMD ["yarn", "start"]