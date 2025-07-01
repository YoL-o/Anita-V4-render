FROM node:lts-buster

WORKDIR /root/Anita-V4

RUN git clone https://github.com/DavidCyrilTech/Anita-V4.git /root/Anita-V4

RUN npm install pm2 -g
RUN npm install --legacy-peer-deps

EXPOSE 3000

CMD ["pm2-runtime", "index.js"]
