-- create_table.sql

CREATE DATABASE userdb;

USE userdb;

CREATE TABLE register (
    name VARCHAR(100),
    email VARCHAR(100),
    pass VARCHAR(100),
    phone VARCHAR(20),
    address VARCHAR(255)
);
