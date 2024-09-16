FROM debian:latest

RUN apt-get update && apt-get install -y 
    nodejs \
    npm \
    git

RUN git clone https://github.com/DogeLeader/nano.git /app

WORKDIR /app

RUN npm i -g pnpm

RUN pnpm run build

EXPOSE 8080 

CMD ["pnpm", "start"]
