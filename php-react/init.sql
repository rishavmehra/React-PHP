CREATE DATABASE IF NOT EXISTS react_php_crud;

USE react_php_crud;

CREATE TABLE IF NOT EXISTS users (
    id int(11) NOT NULL AUTO_INCREMENT,
    user_name varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
    user_email varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO users (user_name, user_email) VALUES
    ('User 1', 'user1@example.com'),
    ('User 2', 'user2@example.com');

-- Grant privileges to the root user from any host
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '' WITH GRANT OPTION;
FLUSH PRIVILEGES;
