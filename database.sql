-- Run this file in MySQL Workbench or via the terminal:
--   mysql -u root -p < database.sql

CREATE DATABASE IF NOT EXISTS login_app
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE login_app;

CREATE TABLE IF NOT EXISTS users (
  id         INT          NOT NULL AUTO_INCREMENT,
  name       VARCHAR(100) NOT NULL,
  email      VARCHAR(150) NOT NULL UNIQUE,
  password   VARCHAR(255) NOT NULL,           -- bcrypt hash
  created_at DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
