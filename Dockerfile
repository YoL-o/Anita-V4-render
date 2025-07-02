FROM node:lts-buster

WORKDIR /root/Anita-V4

RUN git clone https://github.com/YoL-o/Anita-V4.git .

RUN npm install --legacy-peer-deps

EXPOSE 3000

CMD ["npx", "pm2-runtime", "index.js"]
