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

-- Retrieving a customer's order history (ordered from most to least recent)
-- product, cost, delivery info needed
-- SELECT  o2.customerUsername, 
--         o2.date, 
--         o2.totalPrice, 
--         p.name,
--         d.delivery_status,
--         c.size
-- FROM order_history as o, orders as o2, adds_product as a, cart as c, producs as p
-- WHERE c.customerUsername = 'solocup' AND o.orderID = o2.id AND c.id = o2.cartID AND d.orderID = o2.orders AND a.cartID = o2.cartID AND a.productID = p.id
-- GROUP BY o.orderID
-- ORDER BY o.orderID DESC;

SELECT  o2.customerUsername, 
        o2.date, 
        o2.totalPrice, 
        p.name,
        d.delivery_status,
        c.size
FROM order_history as o, orders as o2, adds_product as a, cart as c, product as p, d as delivery_status
WHERE c.customerUsername = 'solocup' AND o.orderID = o2.id AND c.id = o2.cartID AND d.orderID = o2.orders AND a.cartID = o2.cartID AND a.productID = p.id
GROUP BY o.orderID
ORDER BY o.orderID DESC;
