FROM postgres:16

WORKDIR /docker-entrypoint-initdb.d

COPY Database/SistemaDestino.sql /docker-entrypoint-initdb.d/
COPY Database/SistemaOrigem.sql /docker-entrypoint-initdb.d/

COPY . . 

EXPOSE 5432 

