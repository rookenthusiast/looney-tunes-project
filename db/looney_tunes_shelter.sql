DROP TABLE IF EXISTS looneys;
DROP TABLE IF EXISTS owners;


CREATE TABLE owners(
  id SERIAL8 primary key,
  name Varchar(255) not null
  );

CREATE TABLE looneys(
  id SERIAL8 primary key,
  name Varchar(255) not null,
  breed Varchar(255) not null,
  days_in INT8,
  owners_id INT8 references owners(id)
  );





