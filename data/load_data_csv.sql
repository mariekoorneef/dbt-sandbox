-- create od_2014
create table od_2014 (
    row_id numeric,
    start_date timestamp,
    start_station_code numeric,
    end_date timestamp,
    end_station_code numeric,
    duration_sec numeric,
    is_member boolean
);

\copy od_2014 from '/tmp/OD_2014.csv' with delimiter ',' csv header;