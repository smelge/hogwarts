DROP TABLE students;
DROP TABLE houses;

CREATE TABLE houses(
  id SERIAL8 PRIMARY KEY,
  house VARCHAR(20),
  logo TEXT
);

CREATE TABLE students(
  id SERIAL8 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  house INT2 REFERENCES houses(id),
  age INT2
);
