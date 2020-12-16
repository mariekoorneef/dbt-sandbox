FROM postgres:12

COPY ./data/stations.json /tmp/
COPY ./data/OD_2014.csv /tmp/
COPY ./data/*.sql /docker-entrypoint-initdb.d/

RUN chmod 775 /docker-entrypoint-initdb.d/load_data.sql /tmp/*.json
RUN chmod 775 /docker-entrypoint-initdb.d/load_data_csv.sql /tmp/*.csv