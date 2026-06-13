DROP TABLE IF EXISTS users;

DROP table IF EXISTS profile;

CREATE table profile (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    bio VARCHAR(255),
    location VARCHAR(255),
    interests VARCHAR(255)
);

CREATE TABLE users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) UNIQUE,
    name VARCHAR(255),
    age INT,
    password VARCHAR(255),
    profile varchar(255),
    FOREIGN KEY (profile) REFERENCES profile (id)
);