INSERT INTO customer (username, name, dateOfBirth, address, payment_method)
VALUES('solocup', 'Abbrey Levine' , '1993-02-02', '145 Lancaster Ln, SanFrancisco, CA','Mastercard'),
('brewbeer', 'Jack Michaels' , '1984-06-05', '123 Main St, New York, NY','Discover'),
('beerpong', 'Tyler Scombs' , '1989-10-21', '118 Bridgeport St, St. Louis, MI','Visa'),
('drinkdrank', 'Stacey Willingston' , '2001-01-02', '688 Disney St, Orlando,FL ','Amex'),
('shotsonme', 'Perry Plymouth' , '1996-12-14', '898 Sesame St, Atlanta, GA','Mastercard')
;


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
('shotsonme', 5)
;


INSERT INTO orders (cartID, customerUsername, date, totalPrice, shippingAddress)
VALUES(1,'solocup', '2023-04-11', 30.59 , '145 Lancaster Ln, SanFrancisco, CA'),
(4, 'drinkdrank', '2023-02-25', 50.88,'688 Disney St, Orlando,FL'),
(2,'brewbeer', '2023-03-28', 15.26, '123 Main St, New York, NY'),
(5, 'shotsonme', '2023-03-09', 76.42, '898 Sesame St, Atlanta, GA'),
(3, 'beerpong', '2023-01-21', 100.15 ,'118 Bridgeport St, St. Louis, MI')
(6,'solocup', '2023-04-26', 120.59 , '145 Lancaster Ln, SanFrancisco, CA'),
(9, 'drinkdrank', '2023-03-25', 25.88,'688 Disney St, Orlando,FL'),
(7,'brewbeer', '2023-03-03', 90.26, '123 Main St, New York, NY'),
(10, 'shotsonme', '2023-04-09', 176.42, '898 Sesame St, Atlanta, GA'),
(8, 'beerpong', '2023-02-12', 80.15 ,'118 Bridgeport St, St. Louis, MI')
;


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
(10, 'beerpong')
;