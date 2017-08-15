FROM node:8.3.0

# http://keystonejs.com/getting-started/
# RUN npm install -g generator-keystone

RUN useradd -d /home/thecb4 -m -s /bin/bash thecb4 && echo "thecb4:thecb4" | chpasswd && adduser thecb4 sudo

RUN chown -R thecb4:thecb4 /home/thecb4

WORKDIR /usr/keystone

RUN chown -R thecb4:thecb4 /usr/keystone

USER thecb4

RUN mkdir /usr/keystone/node_modules

# COPY package.json /node/lib/
# WORKDIR /node/lib/
# RUN npm install
# ENV PATH /node/lib/node_modules/.bin:$PATH

# RUN npm install

CMD /bin/bash -c 'npm install; npm start'

# CMD ["npm", "start"]
