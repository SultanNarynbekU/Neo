CREATE TABLE cars (
                          car_id integer PRIMARY KEY,
                          car_name varchar(30),
                          car_brand varchar (30)
                          car_price int
                  );

CREATE TABLE clients (
                         client_id int PRIMARY KEY,
                         client_name varchar(50)
                     );

CREATE TABLE orders (
                           orders_id int PRIMARY KEY,
                           client_id int,
                           car_id int,
                           FOREIGN KEY (client_id) REFERENCES clients (client_id),
                           FOREIGN KEY (car_id) REFERENCES cars (car_id)
);
