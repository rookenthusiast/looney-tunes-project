DROP TABLE IF EXISTS looneys;
DROP TABLE IF EXISTS owners;


CREATE TABLE owners(
  id SERIAL8 primary key,
  name Varchar(255) not null
  -- contact_number Varchar(255) not null
  -- email Varchar(255) 
  
  );

CREATE TABLE looneys(
  id SERIAL8 primary key,
  name Varchar(255) not null,
  breed Varchar(255) not null,
  days_in INT8,
  URl text,
  owners_id INT8 references owners(id)
  );





