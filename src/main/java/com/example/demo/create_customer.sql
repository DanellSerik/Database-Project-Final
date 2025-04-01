create table customer (
    customer_id text,
    id_type varchar(50),
    customer_email varchar(100),
    first_name varchar(50),
    last_name varchar(50),
    address JSON,
    date_of_registration date,
    primary key (customer_id, id_type)
);