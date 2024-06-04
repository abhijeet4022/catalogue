FROM        nginx:18
RUN         mkdir /app
WORKDIR     /app
COPY        node_module/ /app/node_module/
COPY        package.json /app/package.json
COPY        server.js /app/server.js
ENTRYPOINT  ["node", "/app/server.js"]

