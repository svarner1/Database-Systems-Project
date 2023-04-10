CREATE TABLE payment(
    id                  SERIAL PRIMARY KEY,
    customerUsername    VARCHAR(25),
    sellerID            in
)

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
    status              
    sellerID            INTEGER NOT NULL

);

CREATE TABLE category (


    
)