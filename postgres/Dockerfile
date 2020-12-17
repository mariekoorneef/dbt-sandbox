FROM postgres:12

COPY ./data/*.json /tmp/
COPY ./data/*.csv /tmp/
COPY ./data/*.sql /docker-entrypoint-initdb.d/

RUN chmod 775 /docker-entrypoint-initdb.d/load_data.sql /tmp/*.json
RUN chmod 775 /docker-entrypoint-initdb.d/load_data_csv.sql /tmp/*.csv