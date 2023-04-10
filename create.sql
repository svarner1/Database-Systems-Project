CREATE TABLE customer(
    username        VARCHAR(25) NOT NULL UNIQUE PRIMARY KEY,
    name            TEXT NOT NULL,
    dateOfBirth     DATE,
    address         TEXT NOT NULL,
    payment_method  TEXT NOT NULL,
);

CREATE TABLE payment(
    id                  SERIAL PRIMARY KEY,
    customerUsername    VARCHAR(25) NOT NULL,
    sellerID            INTEGER NOT NULL,
    type                VARCHAR(10) NOT NULL,
    date                DATE,
    status              VARCHAR(25) NOT NULL,
    FOREIGN KEY (customerUsername) REFERENCES customer(username) ON DELETE CASCADE
    FOREIGN KEY (sellerID) REFERENCES seller(id) ON DELETE CASCADE
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
