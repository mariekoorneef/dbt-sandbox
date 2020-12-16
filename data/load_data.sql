-- create stations
create table stations (
    id numeric primary key,
    s text,
    n numeric,
    st text,
    b boolean,
    su boolean,
    m boolean,
    read numeric,
    lc numeric,
    bk boolean,
    bl boolean,
    la numeric,
    lo numeric,
    da numeric,
    dx numeric,
    ba numeric,
    bx numeric
);

create table stations_import (doc json);

\copy stations_import from '/tmp/stations.json';

insert into stations (id, s, n ,st, b, su, m ,read, lc, bk, bl, la, lo, da, dx, ba, bx)
select p.*
from stations_import l
cross join lateral json_populate_recordset(null::stations, (doc ->> 'stations')::json) as p;

drop table stations_import;