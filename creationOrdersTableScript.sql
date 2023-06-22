create table yandex_market.ORDERS
(
    id           SERIAL PRIMARY KEY,
    date         DATE,
    customer_id  int REFERENCES yandex_market.CUSTOMERS (id),
    product_name varchar(250),
    amount       int CHECK ( amount > 0 AND amount < 250)
);

insert into yandex_market.ORDERS (date, customer_id, product_name, amount)
VALUES ('2023-06-01', 3, 'Tea', 1),
       ('2023-06-02', 2, 'Bread', 1),
       ('2023-06-01', 1, 'Beer', 10),
       ('2023-06-03', 2, 'Milk', 2),
       ('2023-06-02', 3, 'Meat', 3);