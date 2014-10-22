DROP DATABASE equipmanage;
DROP USER equipmanage;

CREATE USER equipmanage CREATEDB CREATEUSER;
CREATE DATABASE equipmanage OWNER equipmanage ENCODING 'UTF8';

\c equipmanage equipmanage;

CREATE TABLE equipmanage (
     src_loc_id text,
     src_equip_name text,
     src_equip_host text,
     src_equip_if text,
     src_equip_status text,
     dst_loc_id text,
     dst_equip_name text,
     dst_equip_host text,
     dst_equip_if text,
     dst_equip_status text
)
WITH (fillfactor=90);

CREATE INDEX idx_em_src_equip_host ON equipmanage (src_equip_host);
CREATE INDEX idx_em_dst_equip_host ON equipmanage (dst_equip_host);

CREATE TABLE equiptree (
     src_loc_id text,
     src_equip_name text,
     src_equip_host text,
     src_equip_status text,
     dst_loc_id text,
     dst_equip_name text,
     dst_equip_host text,
     dst_equip_status text
)
WITH (fillfactor=90);

CREATE INDEX idx_et_src_equip_host ON equiptree (src_equip_host);
CREATE INDEX idx_et_dst_equip_host ON equiptree (dst_equip_host);
