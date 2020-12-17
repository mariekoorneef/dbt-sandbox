# dbt-sandbox

### Bicycle sharing
The original dataset on Kaggle: [BIXI Montreal (public bicycle sharing system)](https://www.kaggle.com/aubertsigouin/biximtl).

We randomly selected 500 rows (excl header) by running the (MacOS) `gshuf` shell command:

```sh
{ IFS= read -r head; echo "$head"; gshuf | head -n 500; } < OD_2014.csv 
```

Note: to use `gshuf` homebrew install: `brew install coreutils`

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


---

```sh
docker-compose stop
docker-compose down --volumes --remove-orphans  --rmi all
```