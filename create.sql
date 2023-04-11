--Obehi Here! Pls look at the bottom for notes before starting!

CREATE TABLE cart(
    id                  SERIAL PRIMARY KEY,
    customerUsername    VARCHAR(50) NOT NULL,
    size                INTEGER NOT NULL,
    FOREIGN KEY (customerUsername) REFERENCES customer(username) ON DELETE CASCADE
);

CREATE TABLE product(
    id                  SERIAL PRIMARY KEY,
    sellerID            INTEGER NOT NULL,
    image               TEXT NOT NULL,
    name                VARCHAR(15) NOT NULL,
    category            VARCHAR(50) NOT NULL,
    rating              INTEGER NOT NULL,
    price               FLOAT(2) NOT NULL, 
    description         TEXT NOT NULL,
    FOREIGN KEY (sellerID) REFERENCES seller(id) ON DELETE CASCADE,
    FOREIGN KEY (category) REFERENCES category(name) ON DELETE CASCADE
);

CREATE TABLE order_history(
    orderID             INTEGER NOT NULL,
    customerUsername    VARCHAR(50) NOT NULL,
    FOREIGN KEY (orderID) REFERENCES order(id) ON DELETE CASCADE,
    FOREIGN KEY (customerUsername) REFERENCES customer(username) ON DELETE CASCADE
);

CREATE TABLE adds_product(
    cartID               INTEGER NOT NULL,
    productID            INTEGER NOT NULL,
    FOREIGN KEY (cartID) REFERENCES cart(id) ON DELETE CASCADE,
    FOREIGN KEY (productID) REFERENCES product(id) ON DELETE CASCADE
);
CREATE TABLE customer(
    username        VARCHAR(25) NOT NULL UNIQUE PRIMARY KEY,
    name            TEXT NOT NULL,
    dateOfBirth     DATE,
    address         TEXT NOT NULL,
    payment_method  TEXT NOT NULL,
);


CREATE TABLE payment(
    id                  SERIAL PRIMARY KEY,customerUsername    VARCHAR(25) NOT NULL,
    sellerID            INTEGER NOT NULL,
    type                VARCHAR(10) NOT NULL,
    date                DATE,
    status              VARCHAR(25) NOT NULL,
    FOREIGN KEY (customerUsername) REFERENCES customer(username) ON DELETE CASCADE
);

CREATE TABLE seller(
    id              SERIAL PRIMARY KEY,
    email           VARCHAR(40) NOT NULL,
    phoneNumber     VARCHAR(10) NOT NULL,
    brandName       VARCHAR(20) NOT NULL,   
);

CREATE TABLE order(
    id                  SERIAL PRIMARY KEY,
    cartID              INTEGER NOT NULL,
    customerUsername    VARCHAR(25) NOT NULL,
    date                DATE,
    quantity            INTEGER NOT NULL,
    totalPrice          Float(2) NOT NULL,
    shippingAddress     TEXT NOT NULL,
    FOREIGN KEY (customerUsername) REFERENCES customer(username) ON DELETE CASCADE
    FOREIGN KEY (cartID) REFERENCES cart(id) ON DELETE CASCADE
);

CREATE TABLE seller_history(
    sellerID            INTEGER NOT NULL,
    orderID             INTEGER NOT NULL,
    revenue             INTEGER NOT NULL,
    FOREIGN KEY (sellerID) REFERENCES seller(id) ON DELETE CASCADE
);

CREATE TABLE delivery (
    deliveryID          SERIAL PRIMARY KEY,
    customerUsername    VARCHAR(25),
    orderID             INTEGER NOT NULL,
    delivery_status     TEXT NOT NULL,              
    sellerID            INTEGER NOT NULL,
    FOREIGN KEY (sellerID) REFERENCES seller(id) ON DELETE CASCADE
);

CREATE TABLE category (
    category_name       SERIAL PRIMARY KEY,
    category_description TEXT NOT NULL,
);

/
-- So I want able to create my tables within my database, 
-- but there was slight changes i had to make for it to work
--for example I had to change the "category_name"  to Varchar unique not null primary key
-- cause it should be an integer.

--Also when you insert this into your database using the extension we downloaded on
--vs code, create the tables one-by-one, in this specific order. Here are my changes:

-- CREATE TABLE customer (
--     username        VARCHAR(25) NOT NULL UNIQUE PRIMARY KEY,
--     name            TEXT NOT NULL,
--     dateOfBirth     DATE,
--     address         TEXT NOT NULL,
--     payment_method  TEXT NOT NULL
-- );

-- CREATE TABLE seller (
--     id              SERIAL PRIMARY KEY,
--     email           VARCHAR(40) NOT NULL,
--     phoneNumber     VARCHAR(10) NOT NULL,
--     brandName       VARCHAR(20) NOT NULL
-- );

-- CREATE TABLE category (
--     category_name        VARCHAR(25) NOT NULL UNIQUE PRIMARY KEY,
--     category_description TEXT NOT NULL
-- );


-- CREATE TABLE product (
--     id                  SERIAL PRIMARY KEY,
--     sellerID            INTEGER NOT NULL,
--     image               TEXT NOT NULL,
--     name                VARCHAR(15) NOT NULL,
--     category            VARCHAR(50) NOT NULL,
--     rating              INTEGER NOT NULL,
--     price               FLOAT(2) NOT NULL, 
--     description         TEXT NOT NULL,
--     FOREIGN KEY (sellerID) REFERENCES seller(id) ON DELETE CASCADE,
--     FOREIGN KEY (category) REFERENCES category(category_name) ON DELETE CASCADE
-- );


-- CREATE TABLE cart (
--     id                  SERIAL PRIMARY KEY,
--     customerUsername    VARCHAR(50) NOT NULL,
--     size                INTEGER NOT NULL,
--     FOREIGN KEY (customerUsername) REFERENCES customer(username) ON DELETE CASCADE
-- );

-- CREATE TABLE orders (
--     id                  SERIAL PRIMARY KEY,
--     cartID              INTEGER NOT NULL,
--     customerUsername    VARCHAR(25) NOT NULL,
--     date                DATE,
--     quantity            INTEGER NOT NULL,
--     totalPrice          Float(2) NOT NULL,
--     shippingAddress     TEXT NOT NULL,
--     FOREIGN KEY (customerUsername) REFERENCES customer(username) ON DELETE CASCADE,
--     FOREIGN KEY (cartID) REFERENCES cart(id) ON DELETE CASCADE
-- );

-- CREATE TABLE order_history (
--     orderID             INTEGER NOT NULL,
--     customerUsername    VARCHAR(50) NOT NULL,
--     FOREIGN KEY (orderID) REFERENCES orders(id) ON DELETE CASCADE,
--     FOREIGN KEY (customerUsername) REFERENCES customer(username) ON DELETE CASCADE
-- );

-- CREATE TABLE adds_product (
--     cartID               INTEGER NOT NULL,
--     productID            INTEGER NOT NULL,
--     FOREIGN KEY (cartID) REFERENCES cart(id) ON DELETE CASCADE,
--     FOREIGN KEY (productID) REFERENCES product(id) ON DELETE CASCADE
-- );


-- CREATE TABLE payment(
--     id                  SERIAL PRIMARY KEY,customerUsername    VARCHAR(25) NOT NULL,
--     sellerID            INTEGER NOT NULL,
--     type                VARCHAR(10) NOT NULL,
--     date                DATE,
--     status              VARCHAR(25) NOT NULL,
--     FOREIGN KEY (customerUsername) REFERENCES customer(username) ON DELETE CASCADE
-- );


-- CREATE TABLE seller_history(
--     sellerID            INTEGER NOT NULL,
--     orderID             INTEGER NOT NULL,
--     revenue             INTEGER NOT NULL,
--     FOREIGN KEY (sellerID) REFERENCES seller(id) ON DELETE CASCADE
-- );

-- CREATE TABLE delivery (
--     deliveryID          SERIAL PRIMARY KEY,
--     customerUsername    VARCHAR(25),
--     orderID             INTEGER NOT NULL,
--     delivery_status     TEXT NOT NULL,              
--     sellerID            INTEGER NOT NULL,
--     FOREIGN KEY (sellerID) REFERENCES seller(id) ON DELETE CASCADE
-- );