# pull node image v14 from docker hub
FROM node:14-alpine

# set working directory
WORKDIR /app

# copy all files from current directory to working directory
COPY . .

# database env
ENV NODE_ENV=production
ENV DB_HOST=item-db

# install dependencies
RUN npm install --production --unsafe-perm && npm run build

# expose port 8080
EXPOSE 8080

# start app
CMD ["npm", "start"]

# command for build and run
# docker build -t item-app .
# docker run -dp 8080:8080 --name item-app --network item-app item-app