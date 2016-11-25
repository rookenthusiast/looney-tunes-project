DROP TABLE IF EXISTS owners;
DROP TABLE IF EXISTS looneys;

CREATE TABLE looneys(
name Varchar(255) not null,
breed Varchar(255) not null,
days_in INT4,
-- owners_id INT4 references null || owners.id 
ID SERIAL8 primary key
);

CREATE TABLE owners(
name Varchar(255) not null,
ID SERIAL8 primary key)