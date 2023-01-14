-- Scripts that creates a table users following the below requirements
-- id, email, name, country(enum of US, co, and TN)

CREATE TABLE IF NOT EXISITS users(
id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
email VARCHAR(255) NOT NULL UNIQUE,
name VARCHAR(255),
country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US'
);

