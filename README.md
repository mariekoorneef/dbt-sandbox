# dbt-sandbox

### Bicycle sharing
The original dataset on Kaggle: [BIXI Montreal (public bicycle sharing system)](https://www.kaggle.com/aubertsigouin/biximtl).

I have randomly selected 500 rows (excl header) by running the (MacOS) `gshuf` shell command:

```sh
{ IFS= read -r head; echo "$head"; gshuf | head -n 500; } < OD_2014.csv 
```

### pgadmin
- The `dpage/pgadmin4` image has a environment variable `PGADMIN_SERVER_JSON_FILE`, see [container_deployment](https://www.pgadmin.org/docs/pgadmin4/latest/container_deployment.html) and [Import/Export Servers](https://www.pgadmin.org/docs/pgadmin4/development/import_export_servers.html)
- `./postgres/servers.json` is the server definition in a json file.

### dbt
- dbt CLI [Installation](https://docs.getdbt.com/dbt-cli/installation)
- By default, dbt expects the `profiles.yml` file to be located in the `~/.dbt/` directory.
 For more information on how to configure the `profiles.yml` file, see [link](https://docs.getdbt.com/docs/configure-your-profile)

#### Overriding the entrypoint
The entrypoint of the Docker base image `fishtownanalytics/dbt:0.18.1` is:
```yaml
ENTRYPOINT dbt
```
which means when running the container you can only specify one of the sub-commands; e.g. `deps`

Therefore I overwrite the `ENTRYPOINT` in the `docker-compose.yml` file.

### Run

```sh
./start.sh
```

- PGAdmin, PostgreSQL web administration: http://localhost:5050

PGAdmin | value
--- | ---
email | `user@domain.com`
password | `SuperSecret`
password server "bixi" | `postgres`

- dbt Docs: http://localhost:8082

---

```sh
docker-compose stop
docker-compose down --volumes --remove-orphans  --rmi all
```