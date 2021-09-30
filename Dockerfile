FROM node:lts-alpine

# installation de vue cli
RUN yarn global add @vue/cli

# définit le dossier 'front-end' comme dossier de travail
WORKDIR /app

# copie 'package.json' et 'package-lock.json' (si disponible)
COPY package*.json ./

# installe les dépendances du projet
RUN yarn install

EXPOSE 8080

# construit l'front-end pour la production en la minifiant
CMD yarn serve
