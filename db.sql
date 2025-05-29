drop database if exists `shoping`;
create database `shoping`;
use `shoping`;


create table shop_owners (
    `id` INT PRIMARY KEY AUTO_INCREMENT, 
    `name` VARCHAR(1000),
    `email` VARCHAR(1000),
    `shop_name` VARCHAR(1000),
    `location` VARCHAR(5000),
    `mobile` INT,
    `password` VARCHAR(225),
    `status` VARCHAR(225) DEFAULT 'pending'
);


create table products (
    `id` INT PRIMARY KEY AUTO_INCREMENT, 
    `name` VARCHAR(1000),
    `category` VARCHAR(1000),
    `price` VARCHAR(1000),
    `description` VARCHAR(5000),
    `img` LONGBLOB,
    `shop_owner_id` INT
);


create table customers (
    `id` INT PRIMARY KEY AUTO_INCREMENT, 
    `name` VARCHAR(1000),
    `email` VARCHAR(1000),
    `age` INT,
    `mobile` INT,
    `location` VARCHAR(5000),
    `password` VARCHAR(225)
);


create table carts (
    `id` INT PRIMARY KEY AUTO_INCREMENT, 
    `product_id` INT, 
    `customer_id` INT, 
    `product_shop_owner_id` INT,
    `product_name` VARCHAR(1000),
    `product_category` VARCHAR(1000),
    `product_price` VARCHAR(1000),
    `product_description` VARCHAR(5000),
    `product_img` LONGBLOB
);


create table purchases (
    `id` INT PRIMARY KEY AUTO_INCREMENT, 
    `product_id` INT, 
    `customer_id` INT, 
    `product_shop_owner_id` INT,
    `product_name` VARCHAR(1000),
    `product_category` VARCHAR(1000),
    `product_price` VARCHAR(1000),
    `product_description` VARCHAR(5000),
    `product_img` LONGBLOB,
    `debit_card_no` INT, 
    `cvv_no` INT
);