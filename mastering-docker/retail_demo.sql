CREATE DATABASE retail_db;
CREATE USER retail_user WITH ENCRYPTED PASSWORD 'itversity';
GRANT ALL ON DATABASE retail_db TO retail_user;

CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  user_first_name VARCHAR(30),
  user_last_name VARCHAR(30)
);

INSERT INTO users (user_first_name, user_last_name)
VALUES ('Scott', 'Tiger'), ('Donald', 'Duck');
