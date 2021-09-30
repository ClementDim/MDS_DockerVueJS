FROM node:lts-alpine

# installation de vue cli
RUN npm install -g @vue/cli

# définit le dossier 'front-end' comme dossier de travail
WORKDIR /app

# copie 'package.json' et 'package-lock.json' (si disponible)
COPY package*.json ./

# installe les dépendances du projet
RUN npm install

# copie les fichiers et dossiers du projet dans le dossier de travail (par exemple : le dossier 'front-end')
COPY . .

# construit l'front-end pour la production en la minifiant
RUN npm run start

EXPOSE 80
