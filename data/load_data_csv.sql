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

create table od_2015 as table od_2014 with no data;
\copy od_2015 from '/tmp/OD_2015.csv' with delimiter ',' csv header;