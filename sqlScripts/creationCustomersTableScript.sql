create schema yandex_market;
create table yandex_market.CUSTOMERS
(
    id           SERIAL PRIMARY KEY,
    name         varchar(250),
    surname      varchar(250),
    age          int CHECK ( age >= 0 AND age < 150),
    phone_number varchar(20) CHECK (phone_number ~ '^[0-9+\- ()]+$' AND CHAR_LENGTH (phone_number) >= 7
)
    );
insert into yandex_market.CUSTOMERS (name, surname, age, phone_number)
VALUES ('Alexey', 'Petrov', 25, '1234567890');
insert into yandex_market.CUSTOMERS (name, surname, age, phone_number)
VALUES ('Sergey', 'Savin', 32, '9876543210');
insert into yandex_market.CUSTOMERS (name, surname, age, phone_number)
VALUES ('Alexander', 'Grand', 47, '123987456');