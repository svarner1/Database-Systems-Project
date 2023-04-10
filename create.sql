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