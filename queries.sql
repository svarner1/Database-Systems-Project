--When the customer enters the website, they can see the list of products along with the image, the price, the rating, and the seller's brandname. (Bullet pt 1)
SELECT p.name, p.image, p.rating, p.price,s.brandname
FROM product AS p, seller AS s
WHERE p.sellerID = s.id;

-- They will be allowed to filter the view of the products by the highest rating. (Bullet pt 1)
SELECT p.name, p.image, p.rating, p.price, s.brandname
FROM product AS p, seller AS s
WHERE p.sellerID = s.id
ORDER BY p.rating DESC;

-- They will be allowed to filter the view of the products from low to the highest price (Bullet pt 1)
SELECT p.name, p.image, p.rating, p.price, s.brandname
FROM product AS p, seller AS s
WHERE p.sellerID = s.id
ORDER BY p.price ASC;

--They will be allowed to filter the view of the products from a specific seller. (Bullet pt 1)
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


--The customer also has the option to view the products by a particular category. This will show the customer the specific products that are part of the category chosen and the seller's brandname. (Bullet pt 2) 
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



--A customer’s order history will be ordered from most recent to least recent. The details for each order will include specific information related to the order(total cost, order date) and delivery info. (Bullet pt 3)
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

-- Retrieving information about seller (bullet point 9)
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

-- Retrieving all products offered by a particular seller (bullet point 9)
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

<<<<<<< HEAD
-- product will be ordered from the most recently added to the customer's cart
-- customer can see the quantity and adjust each added product (bullet point 7)
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

-- DB table will maintain each customer’s information, including their username, 
-- first and last name, date of birth, address, and preferred payment method.
-- Information will be a part of a user’s account information (bullet point 8)
SELECT * FROM customer 
WHERE username = 'solocup';

SELECT * FROM customer 
WHERE username = 'brewbeer';

SELECT * FROM customer 
WHERE username = 'beerpong';

SELECT * FROM customer 
WHERE username = 'drinkdrank';

SELECT * FROM customer 
WHERE username = 'shotsonme';

-- Some info can be retrieved when a user places an order. (bullet point 8)
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

-- Sellers and customers can track the delivery status of orders. 
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

SELECT orderid, delivery_status
FROM delivery
WHERE deliveryid = 11;

SELECT orderid, delivery_status
FROM delivery
WHERE deliveryid = 12;

SELECT orderid, delivery_status
FROM delivery
WHERE deliveryid = 13;

SELECT orderid, delivery_status
FROM delivery
WHERE deliveryid = 14;

SELECT orderid, delivery_status
FROM delivery
WHERE deliveryid = 15;

SELECT orderid, delivery_status
FROM delivery
WHERE deliveryid = 16;
=======
--When the customer looks at the specific order from the history, they are able to see the products that were in the order.(Bullet pt 4)
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



-- Retrieving a customer's order history (ordered from most to least recent)
-- product, cost, delivery info needed
SELECT  o2.customerUsername, 
        o2.date, 
        o2.totalPrice, 
        p.name,
        d.delivery_status,
        c.size
FROM order_history as o, orders as o2, adds_product as a, cart as c
INNER JOIN o.orderID = o2.id  
INNER JOIN c.id = o2.cartID
INNER JOIN d.orderID = o2.orders
INNER JOIN a.cartID = o2.cartID
INNER JOIN a.productID = p.id
WHERE  c.customerUsername = 'solocup'
GROUP BY o.orderID
ORDER BY o.orderID DESC;
>>>>>>> 0eb4cbfb960a8298b25e4332cd4a4416f5021c3a

-- Seller History - calculates and stores revenue

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







