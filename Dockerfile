FROM node:8.3.0

# http://keystonejs.com/getting-started/
# RUN npm install -g generator-keystone

RUN useradd -d /home/thecb4 -m -s /bin/bash thecb4 && echo "thecb4:thecb4" | chpasswd && adduser thecb4 sudo

WORKDIR /user/keystone

RUN chown -R thecb4:thecb4 /home/thecb4

USER thecb4

RUN npm install

CMD ["node", "keystone.js"]
