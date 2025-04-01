create table booking (
    booking_id char(10),
    check_in_date date,
    check_out_date date,
    room_num    SMALLINT,
    hotel_id    CHAR(10) NOT NULL,
    primary key (booking_id, room_num, hotel_id),
    foreign key (room_num, hotel_id) references room(room_num, hotel_id)
);

create table books
(
    customer_id text,
    id_type     varchar(10),
    booking_id  char(10),
    room_num    SMALLINT,
    hotel_id    CHAR(10) NOT NULL,
    primary key (customer_id, id_type, booking_id, room_num),
    FOREIGN KEY (room_num, hotel_id) REFERENCES room (room_num, hotel_id)
);

create table renting (
    renting_id char(10),
    check_in_date date,
    check_out_date date,
    room_num SMALLINT,
    hotel_id CHAR(10),
    primary key (renting_id, room_num, hotel_id),
    foreign key (room_num, hotel_id) references room(room_num, hotel_id)

);

create table check_in (
    booking_id char(10),
    renting_id char(10),
    employee_id text,
    id_type varchar(50),
    room_num SMALLINT,
    hotel_id CHAR(10),
    primary key (booking_id, renting_id, employee_id, id_type, room_num),
    foreign key (booking_id) references booking,
    foreign key (renting_id) references renting,
    foreign key (employee_id, id_type) references employee(employee_id, id_type),
    FOREIGN KEY (room_num, hotel_id) REFERENCES room(room_num, hotel_id)
);

create table starts_renting (
    customer_id TEXT,
    customer_id_type varchar(50),
    renting_id char(10),
    employee_id TEXT,
    employee_id_type varchar(50),
    primary key (customer_id, customer_id_type, renting_id, employee_id, employee_id_type),
    foreign key (customer_id, customer_id_type) references customer(customer_id, id_type),
    foreign key (renting_id) references  renting,
    foreign key (employee_id, employee_id_type) references employee(employee_id, id_type)
);

create table pays (
    customer_id text,
    customer_id_type varchar(50),
    renting_id varchar(10),
    primary key (customer_id, customer_id_type, renting_id),
    foreign key (customer_id, customer_id_type) references customer(customer_id, id_type),
    foreign key (renting_id) references renting
);