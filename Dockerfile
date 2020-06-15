FROM node:10.15.3
MAINTAINER 500kg.ggwp@gmail.com
WORKDIR /app
COPY . .
RUN      npm install \
      && npm cache clean --force  \
      && npm install sails -g
EXPOSE 1337
ENTRYPOINT ["sails"]
#CMD should be used as a way of defining default arguments for an ENTRYPOINT command 
CMD ["lift"]                 
