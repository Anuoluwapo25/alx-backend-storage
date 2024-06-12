-- creates a table users
-- with attributes (id, email, name)

CREATE TABLE IF NOT EXISTS users {
    id INT NOT NULL AUTO_INCREMENT,
    email STRING(255) NOT NULL UNIQUE,
    name STRING(255),
    PRIMARY KEY (id)
};
