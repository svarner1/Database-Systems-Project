INSERT INTO customer (username, name, dateOfBirth, address, payment_method)
VALUES('solocup', 'Abbrey Levine' , '1993-02-02', '145 Lancaster Ln, SanFrancisco, CA','Mastercard'),
('brewbeer', 'Jack Michaels' , '1984-06-05', '123 Main St, New York, NY','Discover'),
('beerpong', 'Tyler Scombs' , '1989-10-21', '118 Bridgeport St, St. Louis, MI','Visa'),
('drinkdrank', 'Stacey Willingston' , '2001-01-02', '688 Disney St, Orlando,FL ','Amex'),
('shotsonme', 'Perry Plymouth' , '1996-12-14', '898 Sesame St, Atlanta, GA','Mastercard')
;


INSERT INTO seller(email, phoneNumber, brandName)
VALUES ('abc@gmail.com', '145557007', 'TwoBeerGirls'),
('anAwesomeCompany', '2225057007', 'ElectricVodka'),
('wow@yahoo.com', '885750000', 'SeltzersRUS'),
('flowerPower@123.com', '5557007229', 'BlissWine'),
('funTimes@aol.com', '6782220000', 'HappyJuice');


INSERT INTO category(category_name, category_description)
VALUES ('Wine', 'An alcoholic drink typically made from fermented grapes. - 5-16% ABV'),
('Tequila','A distilled beverage made from the blue agave plant. - 38-55% ABV '),
('Beer', 'One of the oldest and most widely consumed types of alcoholic drinks in the world. It''s produced by the brewing and fermentation of starches. - 4-7%'),
('Vodka', 'A clear distilled alcoholic beverage. Composed of mostly water and ethanol. - 35-46% ABV'),
('Whiskey', 'A type of distilled alcoholic beverage made from fermented grain mash. - at least 40% ABV'),
('Rum', 'A liquor made by fermenting and then distillling sugarcane molasses or sugarcane juice. 40-80% ABV'),
('Hard Seltzers', 'A type of highball drink containing seltzer (carbonated water) alcohol, and often fruit flavorings. - 4-5%');


INSERT INTO product (sellerID, image, name, category, rating, price, description)
VALUES(2, 'image_emaraldbay.png', 'Emerald Bay Pinot Noir', 'Wine', 4.5, 22.99, 'This California Pinot Noir is medium-bodied with flavors of cherry, raspberry, and a hint of oak'),
(4, 'image_eldiablo.png','El Diablo Reposado Tequila', 'Tequila', 4.8, 55.99, 'Aged in oak barrels for six months, this tequila has a smooth and complex flavor with notes of caramel and vanilla.'),
(1, 'summerhaze_image.png', 'Summer Haze IPA', 'Beer', 4.3, 12.99, 'A hoppy and refreshing IPA with citrus and pine notes and a crisp finish.'),
(5, 'snowqueen_image.png' ,'Snow Queen Vodka', 'Vodka', 4.7, 39.99, 'Distilled in Kazakhstan from organic wheat, this vodka has a smooth and clean taste with a hint of sweetness.'),
(3, 'image_blackstonewhiskey.png', 'Blackstone Reserve Bourbon Whiskey', 'Whiskey', 4.6, 49.99, 'A rich and complex bourbon with flavors of caramel, vanilla, and toasted oak.'),
(4, 'carribeansunset_image.png', 'Caribbean Sunset Spiced Rum', 'Rum', 4.2, 19.99, 'A smooth and spicy rum with flavors of cinnamon, nutmeg, and vanilla.'),
(2, 'image_berryseltzer.png', 'Wild Berry Hard Seltzer', 'Hard Seltzers', 4.0, 14.99, 'This refreshing hard seltzer features the sweet and tart flavors of wild berries.'),
(1, 'cascadecabernet_image.png', 'Cascade Ridge Cabernet Sauvignon', 'Wine', 4.8, 32.99, 'This Washington State Cabernet Sauvignon is full-bodied with rich flavors of blackberry, currant, and dark chocolate.'),
(3, 'image_aztectequila.png', 'Aztec Gold Anejo Tequila', 'Tequila', 4.9, 59.99, 'Aged in oak barrels for two years, this tequila has a smooth and complex flavor with notes of caramel and oak.'),
(5, 'snowyowl_image.png', 'Snowy Owl Vodka', 'Vodka', 4.5, 4.99, 'Distilled in Canada from organic wheat, this vodka has a clean and smooth taste with a hint of citrus.'),
(2, 'mountanmist_image.png' ,'Mountain Mist Pale Ale', 'Beer', 4.4, 11.99, 'A light and refreshing pale ale with hoppy and citrusy flavors.'),
(4, 'image_pineappleexpress.png', 'Pineapple Express Silver Tequila', 'Tequila', 4.7, 49.99, 'Made from 100% blue agave, this tequila is light and refreshing with flavors of pineapple and lime.'),
(1, 'sunset_image.png' ,'Vineyard Sunset Chardonnay', 'Wine',4.6, 19.99, 'This California Chardonnay is medium-bodied with flavors of apple, pear, and a hint of vanilla.');


INSERT INTO cart (customerUsername, size)
VALUES('solocup', 2),
('brewbeer', 5),
('beerpong', 1),
('drinkdrank', 3),
('shotsonme', 4),
('solocup', 6),
('brewbeer', 1),
('beerpong', 3),
('drinkdrank', 2),
('shotsonme', 5);


INSERT INTO adds_product (cartID, productID)
VALUES(4, 4),
(4, 7),
(4, 9),
(9, 10),
(9, 8),
(6, 5),
(6, 1),
(6, 6),
(6, 13),
(6, 4),
(6, 2),
(1, 1),
(1, 2),
(8, 1),
(8, 9),
(8, 13),
(2, 2),
(2, 1),
(2, 8),
(2, 4),
(2, 3),
(5, 3),
(3, 4),
(3, 1),
(3, 7),
(7, 6),
(10, 10),
(10, 11),
(10, 3),
(10, 7),
(10, 1);


INSERT INTO payment (customerUsername, sellerID, type, date, status)
VALUES ('solocup', 2, 'credit', '2023-04-11', 'approved'),
('drinkdrank', 4, 'debit', '2023-02-25', 'approved'),
('brewbeer', 1, 'debit', '2023-03-28', 'processing'),
('shotsonme', 5, 'debit', '2023-03-09', 'processing'),
('beerpong', 3, 'credit', '2023-01-21', 'approved'),
('solocup', 4, 'credit', '2023-04-26', 'processing'),
('drinkdrank', 2, 'debit', '2023-03-25', 'approved'),
('brewbeer', 1, 'credit', '2023-03-03', 'processing'),
('shotsonme', 3, 'debit', '2023-04-09', 'approved'),
('beerpong', 5, 'credit', '2023-02-12', 'approved');



INSERT INTO orders (cartID, customerUsername, date, totalPrice, shippingAddress)
VALUES(1,'solocup', '2023-04-11', 30.59 , '145 Lancaster Ln, SanFrancisco, CA'),
(4, 'drinkdrank', '2023-02-25', 50.88,'688 Disney St, Orlando,FL'),
(2,'brewbeer', '2023-03-28', 15.26, '123 Main St, New York, NY'),
(5, 'shotsonme', '2023-03-09', 76.42, '898 Sesame St, Atlanta, GA'),
(3, 'beerpong', '2023-01-21', 100.15 ,'118 Bridgeport St, St. Louis, MI'),
(6,'solocup', '2023-04-26', 120.59 , '145 Lancaster Ln, SanFrancisco, CA'),
(9, 'drinkdrank', '2023-03-25', 25.88,'688 Disney St, Orlando,FL'),
(7,'brewbeer', '2023-03-03', 90.26, '123 Main St, New York, NY'),
(10, 'shotsonme', '2023-04-09', 176.42, '898 Sesame St, Atlanta, GA'),
(8, 'beerpong', '2023-02-12', 80.15 ,'118 Bridgeport St, St. Louis, MI');


INSERT INTO delivery (customerUsername, orderID, delivery_status, sellerID)
VALUES ('solocup', 1, 'DELIVERED', 2),
('shotsonme', 9, 'DELIVERED', 4),
('shotsonme', 4, 'ON THE WAY', 1),
('solocup', 6, 'SHIPPED', 5),
('brewbeer', 3, 'ON THE WAY', 3),
('drinkdrank', 7, 'SHIPPED', 4),
('drinkdrank', 2, 'DELIVERED', 2),
('brewbeer', 8, 'ON THE WAY', 1),
('beerpong', 5, 'SHIPPED', 3),
('beerpong', 10, 'SHIPPED', 5);


INSERT INTO seller_history (sellerID, orderID, revenue)
VALUES (2, 1, 30.59),
(4, 9, 50.88),
(1, 4, 15.26),
(5, 6, 76.42),
(3, 3, 100.15),
(4, 7, 120.59),
(2, 2, 25.88),
(1, 8, 90.26),
(3, 5, 176.42),
(5, 10, 80.15);



INSERT INTO order_history (orderID, customerUsername)
VALUES(1,'solocup'),
(9, 'shotsonme'),
(4, 'shotsonme'),
(6, 'solocup'),
(3,'brewbeer'),
(7, 'drinkdrank'),
(2, 'drinkdrank'),
(8, 'brewbeer'),
(5, 'beerpong'),
(10, 'beerpong');