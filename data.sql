-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-10-25 14:08:35.687

-- tables
-- Table: images
CREATE TABLE images (
    id int NOT NULL,
    path varchar(5000) NOT NULL,
    CONSTRAINT images_pk PRIMARY KEY (id)
);

-- Table: product
CREATE TABLE product (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    description varchar(5000) NOT NULL,
    img int NOT NULL,
    price int NOT NULL,
    price_discount int NOT NULL,
    price_promo int NOT NULL,
    sections int NOT NULL,
    sections_id int NOT NULL,
    CONSTRAINT product_pk PRIMARY KEY (id)
);

-- Table: sections
CREATE TABLE sections (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    CONSTRAINT sections_pk PRIMARY KEY (id)
);

INSERT INTO `sections` (`id`, `name`) VALUES
(1, 'Рубашки'),
(2, 'брюки'),
(3, 'Футболки'),
(4, 'Куртки');


INSERT INTO `images` (`id`, `path`) VALUES
(1, 'images/image1.png'),
(2, 'images/image2.png'),
(3, 'images/image3.png'),
(4, 'images/image4.png');

INSERT INTO `product` (`id`, `name`, `description`, `img`, `price`, `price_discount`, `price_promo`, `sections`, `sections_id`) VALUES
(1, 'Рубашка medicine', '123', 1, 1000, 900, 800, 0, 1),
(2, 'брюки', '321', 2, 1500, 1400, 1300, 0, 2);

-- foreign keys
-- Reference: images_product (table: product)
ALTER TABLE product ADD CONSTRAINT images_product FOREIGN KEY images_product (img)
    REFERENCES images (id);

-- Reference: stock_product (table: product)
ALTER TABLE product ADD CONSTRAINT stock_product FOREIGN KEY stock_product (sections_id)
    REFERENCES sections (id);

-- End of file.

