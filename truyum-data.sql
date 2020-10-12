INSERT INTO menu_item(menu,price,active,date_of_launch,category,free_delivery) VALUES('sandwich',99,'yes','15/03/2017','main course','yes'),('burger',129,'yes','23/12/2017','main course','no'),('pizza','149','yes','21/08/2017','main course','no'),('frech fries','57','no','02/07/2017','starters','yes'),('chocolate brownie','32','yes','02/11/2022','dessert','yes');
SELECT * FROM menu_item; 

SELECT * FROM menu_item WHERE date_of_launch > '02/07/2017' AND active = 'yes'; 

UPDATE menu_item SET price = 90 WHERE id = 1; 
SELECT * FROM menu_item; 
INSERT INTO user_table(user_name) VALUES ('admin'),('customer');
SELECT * FROM user_table;

INSERT INTO cart(id,user_id,name,price,free_delivery) 
VALUES(1,2,'sandwich',99,'yes'),(2,2,'burger',129,'no'),(3,2,'pizza',149,'no'); 

SELECT * FROM cart WHERE user_id = 2;

SELECT SUM(price) FROM cart WHERE user_id=2;

DELETE FROM cart WHERE user_id = 2 AND id = 1;
select * from cart;