-- FQ 1: When the customer enters the website, they can see the list of products along with the image, the price, the rating, and the seller's brandname.
SELECT p.name, p.image, p.rating, p.price,s.brandname
FROM product AS p, seller AS s
WHERE p.sellerID = s.id;

-- FQ 1: They will be allowed to filter the view of the products by the highest rating.
SELECT p.name, p.image, p.rating, p.price, s.brandname
FROM product AS p, seller AS s
WHERE p.sellerID = s.id
ORDER BY p.rating DESC;

-- FQ 1: They will be allowed to filter the view of the products from low to the highest price.
SELECT p.name, p.image, p.rating, p.price, s.brandname
FROM product AS p, seller AS s
WHERE p.sellerID = s.id
ORDER BY p.price ASC;

-- FQ 1: They will be allowed to filter the view of the products from a specific seller. 
SELECT p.name, p.image, p.rating, p.price, s.brandname
FROM product AS p, seller AS s
WHERE p.sellerID = s.id AND s.brandName ='ElectricVodka';

SELECT p.name, p.image, p.rating, p.price, s.brandname
FROM product AS p, seller AS s
WHERE p.sellerID = s.id AND s.brandName ='TwoBeerGirls';

SELECT p.name, p.image, p.rating, p.price, s.brandname
FROM product AS p, seller AS s
WHERE p.sellerID = s.id AND s.brandName ='HappyJuice';

SELECT p.name, p.image, p.rating, p.price, s.brandname
FROM product AS p, seller AS s
WHERE p.sellerID = s.id AND s.brandName ='BlissWine';

SELECT p.name, p.image, p.rating, p.price, s.brandname
FROM product AS p, seller AS s
WHERE p.sellerID = s.id AND s.brandName ='SeltzersRUS';


-- FQ 2: The customer has the option to view the products by a particular category. 
--This will show the customer the specific products that are part of the category chosen and the seller.
SELECT p.name, p.image, p.rating, p.price, p.category, s.brandname
FROM product AS p, category AS c, seller AS s
WHERE c.category_name = 'Rum' AND p.category = c.category_name AND p.sellerID = s.id;

SELECT p.name, p.image, p.rating, p.price, p.category, s.brandname
FROM product AS p, category AS c, seller AS s
WHERE c.category_name = 'Wine' AND p.category = c.category_name AND p.sellerID = s.id;

SELECT p.name, p.image, p.rating, p.price, p.category, s.brandName
FROM product AS p, category AS c, seller AS s
WHERE c.category_name = 'Tequila' AND p.category = c.category_name AND p.sellerID = s.id;

SELECT p.name, p.image, p.rating, p.price, p.category, s.brandName
FROM product AS p, category AS c, seller AS s
WHERE c.category_name = 'Beer' AND p.category = c.category_name AND p.sellerID = s.id;

SELECT p.name, p.image, p.rating, p.price, p.category, s.brandName
FROM product AS p, category AS c, seller AS s
WHERE c.category_name = 'Vodka' AND p.category = c.category_name AND p.sellerID = s.id;

SELECT p.name, p.image, p.rating, p.price, p.category, s.brandName
FROM product AS p, category AS c, seller AS s
WHERE c.category_name = 'Whiskey' AND p.category = c.category_name AND p.sellerID = s.id;

SELECT p.name, p.image, p.rating, p.price, p.category, s.brandName
FROM product AS p, category AS c,  seller AS s
WHERE c.category_name = 'Hard Seltzers' AND p.category = c.category_name AND p.sellerID = s.id;



-- FQ 3 :A customer’s order history will be ordered from most recent to least recent. 
--The details for each order will include specific information related to the order(total cost, order date) 
--and delivery info.
SELECT o.id, o.customerusername , o.totalprice, c.size, o.date
FROM orders as o
INNER JOIN order_history oh ON o.id = oh.orderid
INNER JOIN cart c ON o.id=c.id
WHERE o.customerusername = 'solocup'
ORDER BY o.date DESC;

SELECT o.id, o.customerusername , o.totalprice, c.size, o.date
FROM orders as o
INNER JOIN order_history oh ON o.id = oh.orderid
INNER JOIN cart c ON o.id=c.id
WHERE o.customerusername = 'brewbeer'
ORDER BY o.date DESC;

SELECT o.id, o.customerusername , o.totalprice, c.size, o.date
FROM orders as o
INNER JOIN order_history oh ON o.id = oh.orderid
INNER JOIN cart c ON o.id=c.id
WHERE o.customerusername = 'beerpong'
ORDER BY o.date DESC;

SELECT o.id, o.customerusername , o.totalprice, c.size, o.date
FROM orders as o
INNER JOIN order_history oh ON o.id = oh.orderid
INNER JOIN cart c ON o.id=c.id
WHERE o.customerusername = 'drinkdrank'
ORDER BY o.date DESC;

SELECT o.id, o.customerusername , o.totalprice, c.size, o.date
FROM orders as o
INNER JOIN order_history oh ON o.id = oh.orderid
INNER JOIN cart c ON o.id=c.id
WHERE o.customerusername = 'shotsonme'
ORDER BY o.date DESC;


--FQ 4: When the customer clicks on the specific order from the history, 
--they are able to see the products that were in the order.
SELECT o.id, o.customerusername, p.name
FROM adds_product as a
INNER JOIN orders o ON a.cartID = o.id
INNER JOIN product p ON a.productID = p.id
WHERE customerUsername = 'solocup'AND o.id=1;

SELECT o.id, o.customerusername, p.name
FROM adds_product as a
INNER JOIN orders o ON a.cartID = o.id
INNER JOIN product p ON a.productID = p.id
WHERE customerUsername = 'solocup'AND o.id=6;

SELECT o.id, o.customerusername, p.name
FROM adds_product as a
INNER JOIN orders o ON a.cartID = o.id
INNER JOIN product p ON a.productID = p.id
WHERE customerUsername = 'shotsonme'AND o.id=9;

SELECT o.id, o.customerusername, p.name
FROM adds_product as a
INNER JOIN orders o ON a.cartID = o.id
INNER JOIN product p ON a.productID = p.id
WHERE customerUsername = 'shotsonme'AND o.id=4;

SELECT o.id, o.customerusername, p.name
FROM adds_product as a
INNER JOIN orders o ON a.cartID = o.id
INNER JOIN product p ON a.productID = p.id
WHERE customerUsername = 'brewbeer'AND o.id=3;

SELECT o.id, o.customerusername, p.name
FROM adds_product as a
INNER JOIN orders o ON a.cartID = o.id
INNER JOIN product p ON a.productID = p.id
WHERE customerUsername = 'brewbeer'AND o.id=8;

SELECT o.id, o.customerusername, p.name
FROM adds_product as a
INNER JOIN orders o ON a.cartID = o.id
INNER JOIN product p ON a.productID = p.id
WHERE customerUsername = 'drinkdrank'AND o.id=7;

SELECT o.id, o.customerusername, p.name
FROM adds_product as a
INNER JOIN orders o ON a.cartID = o.id
INNER JOIN product p ON a.productID = p.id
WHERE customerUsername = 'drinkdrank'AND o.id=2;

SELECT o.id, o.customerusername, p.name
FROM adds_product as a
INNER JOIN orders o ON a.cartID = o.id
INNER JOIN product p ON a.productID = p.id
WHERE customerUsername = 'beerpong'AND o.id=5;

SELECT o.id, o.customerusername, p.name
FROM adds_product as a
INNER JOIN orders o ON a.cartID = o.id
INNER JOIN product p ON a.productID = p.id
WHERE customerUsername = 'beerpong'AND o.id=10;


-- FQ 5:A seller’s sell history will be ordered by most to least recently placed. 
SELECT s.sellerid, s.orderid, o.date
FROM seller_history AS s
INNER JOIN orders o ON s.orderID = o.id  
WHERE s.sellerID = 1
ORDER BY o.date DESC;

SELECT s.sellerid, s.orderid, o.date
FROM seller_history AS s
INNER JOIN orders o ON s.orderID = o.id  
WHERE s.sellerID = 2
ORDER BY o.date DESC;

SELECT s.sellerid, s.orderid, o.date
FROM seller_history AS s
INNER JOIN orders o ON s.orderID = o.id  
WHERE s.sellerID = 3
ORDER BY o.date DESC;

SELECT s.sellerid, s.orderid, o.date
FROM seller_history AS s
INNER JOIN orders o ON s.orderID = o.id  
WHERE s.sellerID = 4
ORDER BY o.date DESC;

SELECT s.sellerid, s.orderid, o.date
FROM seller_history AS s
INNER JOIN orders o ON s.orderID = o.id  
WHERE s.sellerID = 5
ORDER BY o.date DESC;

-- FQ 6:As part of a seller’s sell history, the total profit a seller makes is calculated 
--and stored as revenue.
SELECT SUM(sh.revenue)
FROM seller_history as sh
WHERE sh.sellerID = 1;

SELECT SUM(sh.revenue)
FROM seller_history as sh
WHERE sh.sellerID = 2;

SELECT SUM(sh.revenue)
FROM seller_history as sh
WHERE sh.sellerID = 3;

SELECT SUM(sh.revenue)
FROM seller_history as sh
WHERE sh.sellerID = 4;

SELECT SUM(sh.revenue)
FROM seller_history as sh
WHERE sh.sellerID = 5;


-- FQ 7:product will be ordered from the most recently added to the customer's cart.
-- The customer can see the quantity and adjust each added product.
SELECT c.id, p.name, p.price 
FROM product as p, cart as c, adds_product as a
WHERE a.cartID = c.id AND a.productID = p.id AND c.id = 1
ORDER BY a.productinsertid DESC;

SELECT SUM(p.price), c.size
FROM product as p, adds_product as a, cart as c
WHERE a.productID = p.id AND a.cartID = c.id AND c.id = 1
GROUP BY c.size;
--

SELECT c.id, p.name, p.price 
FROM product as p, cart as c, adds_product as a
WHERE a.cartID = c.id AND a.productID = p.id AND c.id = 2
ORDER BY a.productinsertid DESC;

SELECT SUM(p.price), c.size
FROM product as p, adds_product as a, cart as c
WHERE a.productID = p.id AND a.cartID = c.id AND c.id = 2
GROUP BY c.size;
--

SELECT c.id, p.name, p.price 
FROM product as p, cart as c, adds_product as a
WHERE a.cartID = c.id AND a.productID = p.id AND c.id = 3
ORDER BY a.productinsertid DESC;

SELECT SUM(p.price), c.size
FROM product as p, adds_product as a, cart as c
WHERE a.productID = p.id AND a.cartID = c.id AND c.id = 3
GROUP BY c.size;
--

SELECT c.id, p.name, p.price 
FROM product as p, cart as c, adds_product as a
WHERE a.cartID = c.id AND a.productID = p.id AND c.id = 4
ORDER BY a.productinsertid DESC;

SELECT SUM(p.price), c.size
FROM product as p, adds_product as a, cart as c
WHERE a.productID = p.id AND a.cartID = c.id AND c.id = 4
GROUP BY c.size;
--

SELECT c.id, p.name, p.price 
FROM product as p, cart as c, adds_product as a
WHERE a.cartID = c.id AND a.productID = p.id AND c.id = 5
ORDER BY a.productinsertid DESC;

SELECT SUM(p.price), c.size
FROM product as p, adds_product as a, cart as c
WHERE a.productID = p.id AND a.cartID = c.id AND c.id = 5
GROUP BY c.size;
--

SELECT c.id, p.name, p.price 
FROM product as p, cart as c, adds_product as a
WHERE a.cartID = c.id AND a.productID = p.id AND c.id = 6
ORDER BY a.productinsertid DESC;

SELECT SUM(p.price), c.size
FROM product as p, adds_product as a, cart as c
WHERE a.productID = p.id AND a.cartID = c.id AND c.id = 6
GROUP BY c.size;
--

SELECT c.id, p.name, p.price 
FROM product as p, cart as c, adds_product as a
WHERE a.cartID = c.id AND a.productID = p.id AND c.id = 7
ORDER BY a.productinsertid DESC;

SELECT SUM(p.price), c.size
FROM product as p, adds_product as a, cart as c
WHERE a.productID = p.id AND a.cartID = c.id AND c.id = 7
GROUP BY c.size;
--

SELECT c.id, p.name, p.price 
FROM product as p, cart as c, adds_product as a
WHERE a.cartID = c.id AND a.productID = p.id AND c.id = 8
ORDER BY a.productinsertid DESC;

SELECT SUM(p.price), c.size
FROM product as p, adds_product as a, cart as c
WHERE a.productID = p.id AND a.cartID = c.id AND c.id = 8
GROUP BY c.size;
-- 

SELECT c.id, p.name, p.price 
FROM product as p, cart as c, adds_product as a
WHERE a.cartID = c.id AND a.productID = p.id AND c.id = 9
ORDER BY a.productinsertid DESC;

SELECT SUM(p.price), c.size
FROM product as p, adds_product as a, cart as c
WHERE a.productID = p.id AND a.cartID = c.id AND c.id = 9
GROUP BY c.size;
-- 

SELECT c.id, p.name, p.price 
FROM product as p, cart as c, adds_product as a
WHERE a.cartID = c.id AND a.productID = p.id AND c.id = 10
ORDER BY a.productinsertid DESC;

SELECT SUM(p.price), c.size
FROM product as p, adds_product as a, cart as c
WHERE a.productID = p.id AND a.cartID = c.id AND c.id = 10
GROUP BY c.size;



-- FQ 8: Some info (particularly an address and payment method) can be retrieved when a user 
-- places an order.
SELECT c.address, c.payment_method
FROM customer as c
WHERE username = 'solocup';

SELECT c.address, c.payment_method
FROM customer as c
WHERE username = 'brewbeer';

SELECT c.address, c.payment_method
FROM customer as c
WHERE username = 'beerpong';

SELECT c.address, c.payment_method
FROM customer as c
WHERE username = 'drinkdrank';

SELECT c.address, c.payment_method
FROM customer as c 
WHERE username = 'shotsonme';


-- -- FQ 9: Retrieving information about seller
SELECT * FROM seller 
WHERE id = 1;

SELECT * FROM seller 
WHERE id = 2;

SELECT * FROM seller 
WHERE id = 3;

SELECT * FROM seller 
WHERE id = 4;

SELECT * FROM seller 
WHERE id = 5;

-- -- FQ 9: Retrieving all products offered by a particular seller
SELECT * FROM product 
WHERE sellerID = 1;

SELECT * FROM product 
WHERE sellerID = 2;

SELECT * FROM product 
WHERE sellerID = 3;

SELECT * FROM product 
WHERE sellerID = 4;

SELECT * FROM product 
WHERE sellerID = 5;


-- -- FQ 10: Sellers and customers can track the delivery status of orders. 
SELECT orderid, delivery_status
FROM delivery
WHERE deliveryid = 1;

SELECT orderid, delivery_status
FROM delivery
WHERE deliveryid = 2;

SELECT orderid, delivery_status
FROM delivery
WHERE deliveryid = 3;

SELECT orderid, delivery_status
FROM delivery
WHERE deliveryid = 4;

SELECT orderid, delivery_status
FROM delivery
WHERE deliveryid = 5;

SELECT orderid, delivery_status
FROM delivery
WHERE deliveryid = 6;

SELECT orderid, delivery_status
FROM delivery
WHERE deliveryid = 7;

SELECT orderid, delivery_status
FROM delivery
WHERE deliveryid = 8;

SELECT orderid, delivery_status
FROM delivery
WHERE deliveryid = 9;

SELECT orderid, delivery_status
FROM delivery
WHERE deliveryid = 10;














