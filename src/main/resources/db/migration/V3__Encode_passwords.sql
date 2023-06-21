SET search_path TO blogger_schema, public;

create extension if not exists pgcrypto;

update usr set password = crypt(password, gen_salt('bf', 8));



