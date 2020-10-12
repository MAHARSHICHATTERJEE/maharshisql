CREATE TABLE menu_item( id INT PRIMARY KEY AUTO_INCREMENT, 
menu VARCHAR(20),
price INT, 
active VARCHAR(20), 
date_of_launch VARCHAR(20),
category VARCHAR(20), 
free_delivery VARCHAR(20) );
INSERT INTO menu_item(menu,price,active,date_of_launch,category,free_delivery) VALUES('sandwich',99,'yes','15/03/2017','main course','yes'),('burger',129,'yes','23/12/2017','main course','no'),('pizza','149','yes','21/08/2017','main course','no'),('frech fries','57','no','02/07/2017','starters','yes'),('chocolate brownie','32','yes','02/11/2022','dessert','yes');

CREATE TABLE user_table( 
user_id INT PRIMARY KEY AUTO_INCREMENT,
user_name VARCHAR(20) );
INSERT INTO user_table(user_name) VALUES ('admin'),('customer');
SELECT * FROM user_table;

CREATE TABLE cart( 
cart_id INT PRIMARY KEY AUTO_INCREMENT,
id INT,
user_id INT, 
name VARCHAR(20), 
price INT, 
free_delivery VARCHAR(20),
FOREIGN KEY (id) REFERENCES menu_item(id),
FOREIGN KEY (user_id) REFERENCES user_table(user_id) ); 