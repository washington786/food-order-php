DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories`(
    `category_id` int(10)  NOT NULL,
    `category_name` varchar(50) NOT NULL,
    `category_description` varchar(100) NOT NULL,
    PRIMARY KEY (`category_id`)
);

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
    `product_id` INT(10) NOT NULL,
    `product_name` VARCHAR(50) NOT NULL,
    `product_description` VARCHAR(150) NOT NULL,
    `product_price` DECIMAL(10,2) NOT NULL,
    `category_id` INT(10) NOT NULL,
    PRIMARY KEY (`product_id`),
    KEY `category_id` (`category_id`),
    CONSTRAINT `products_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
);