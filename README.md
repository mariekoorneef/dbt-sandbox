# dbt-sandbox

Download dataset from Kaggle: [BIXI Montreal (public bicycle sharing system)](https://www.kaggle.com/aubertsigouin/biximtl) and put files in `data/` folder.

```sh
docker-compose up -d
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