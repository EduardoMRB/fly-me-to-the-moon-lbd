CREATE TABLE companies (
  id SERIAL PRIMARY KEY,
  name varchar(50) NOT NULL,
  document integer NOT NULL
);

CREATE TABLE engineers (
  id SERIAL PRIMARY KEY,
  company_id integer NOT NULL,
  name varchar(50) NOT NULL,
  birth_date date NOT NULL,

  FOREIGN KEY (company_id) REFERENCES companies (id) ON DELETE CASCADE
);

CREATE TABLE pilots (
  id SERIAL PRIMARY KEY,
  company_id integer NOT NULL,
  name varchar(50) NOT NULL,
  birth_date date NOT NULL,

  FOREIGN KEY (company_id) REFERENCES companies (id) ON DELETE CASCADE
);

CREATE TABLE flight_attendants (
  id SERIAL PRIMARY KEY,
  company_id integer NOT NULL,
  name varchar(50) NOT NULL,
  birth_date date NOT NULL,

  FOREIGN KEY (company_id) REFERENCES companies (id) ON DELETE CASCADE
);

