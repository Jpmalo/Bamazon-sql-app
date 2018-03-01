
-- Database creation and initialization
DROP DATABASE IF EXISTS Bamazon;
CREATE DATABASE Bamazon;
USE Bamazon;

-- Creates Products table and its columns
CREATE TABLE products (
    id INT(10) AUTO_INCREMENT NOT NULL,
    product VARCHAR(50) NOT NULL,
    department VARCHAR(20) NOT NULL,
    price DECIMAL(5,2) NOT NULL,
    inventory INTEGER,
    primary key(id)
);

-- Creates new rows containt products
INSERT INTO products (product, department, price, inventory)
VALUES ("Cod Wrangler™ X3000 Fishing Pole", "Sport", 899.99, 7);

INSERT INTO products (product, department, price, inventory)
VALUES ("iPhone 17SC+ Plus Lite", "Electronics", 649.99, 5);

INSERT INTO products (product, department, price, inventory)
VALUES("Simple Jack", "Movies", 4.99, 251);

INSERT INTO products (product, department, price, inventory)
VALUES("Rubber Band", "Hardware", .39, 2000);

INSERT INTO products (product, department, price, inventory)
VALUES("Mama Earth™ Planting Soil w/Earthworms Galore", "Plant", 74.99, 52);

INSERT INTO products (product, department, price, inventory)
VALUES("Majestic Beast™ Koi Food", "Pets", 44.99, 24);

INSERT INTO products (product, department, price, inventory)
VALUES ("Magic Hands™ Fidget Spinner", "Toys", 14.99, 23);

INSERT INTO products (product, department, price, inventory)
VALUES("Soul Plane", "Movies", 19.99, 83);

INSERT INTO products (product, department, price, inventory)
VALUES("LittlePicker™ Lock Picking Set for Children 3-7", "Toys", 8.99, 150);

INSERT INTO products (product, department, price, inventory)
VALUES("Big John's™ Toad Feed", "Pets", 29.99, 14);