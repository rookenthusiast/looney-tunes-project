DROP TABLE owners;
DROP TABLE looneys;

CREATE TABLE looneys(
name Varchar(255) not null,
breed Varchar(255) not null,
days_in INT4,
ID SERIAL8 primary key
);

CREATE TABLE owners(
name Varchar(255) not null,
ID SERIAL8 primary key)