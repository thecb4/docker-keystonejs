FROM node:8.3.0

# http://keystonejs.com/getting-started/
# RUN npm install -g generator-keystone

WORKDIR /user/keystone

RUN npm install

CMD ["node", "keystone.js"]
