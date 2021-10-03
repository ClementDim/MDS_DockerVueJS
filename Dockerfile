# build stage
# build from node official image (v16.10), based on Alpine Linux project
FROM node:16.10-alpine as build-stage
# set work directory on /app
WORKDIR /app
# copy local package.json and package-lock.json to app container 
COPY package*.json ./
# install packages into the app container with npm
RUN npm install
# copy local project to container project (~~volume)
COPY . .
# build project in container
RUN npm run build


# production stage
# build from nginx official image (v1.21.3), based on Alpine Linux project
FROM nginx:1.21.3-alpine as production-stage
# copy build project
COPY --from=build-stage /app/dist /usr/share/nginx/html
# expose ::80 port
EXPOSE 80
# run ngninx command to globally stop deamon
CMD ["nginx", "-g", "daemon off;"]