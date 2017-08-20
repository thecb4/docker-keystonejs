FROM node:6.11.2

# http://keystonejs.com/getting-started/
# RUN npm install -g generator-keystone

# RUN useradd -d /home/thecb4 -m -s /bin/bash thecb4 && echo "thecb4:thecb4" | chpasswd && adduser thecb4 sudo





# RUN mkdir /home/thecb4/keystone
#
# RUN chown -R thecb4:thecb4 /home/thecb4/keystone
#
# WORKDIR /home/thecb4/keystone
#
# RUN chown -R thecb4:thecb4 /usr/a

# USER thecb4

# RUN chown -R thecb4:thecb4 /home/thecb4

# COPY package.json /node/lib/
# WORKDIR /node/lib/
# RUN npm install
# ENV PATH /node/lib/node_modules/.bin:$PATH

# RUN npm install

# CMD /bin/bash -c 'npm install; npm start'

# CMD ["./run.sh"]

WORKDIR /usr/app

CMD ["npm", "start"]
