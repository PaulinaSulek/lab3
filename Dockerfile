#syntax=docker/dockerfile:1.2
#wskazanie obrazu bazowego:
FROM node:alpine
#wskazanie kat. roboczego:
WORKDIR /usr/app
#instalacja klienta ssh i git:
RUN apk add --no-cache openssh-client git
#pobranie klucza publicznego:
RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts
pobranie plików z repo:
RUN --mount=type=ssh git clone git@github.com:PaulinaSulek/lab3.git lab3.v1
#wskazanie kat. roboczego dla nast. instrukcji:
WORKDIR /usr/app/lab3
#uruchomienie:
RUN npm install

CMD ["npm", "start"]
