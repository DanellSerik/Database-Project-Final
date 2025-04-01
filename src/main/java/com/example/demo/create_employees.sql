CREATE TABLE employee (
                          employee_id TEXT NOT NULL,
                          id_type VARCHAR(50) NOT NULL,
                          first_name VARCHAR(50) NOT NULL,
                          last_name VARCHAR(50) NOT NULL,
                          address JSON NOT NULL,
                          PRIMARY KEY (employee_id, id_type)
);


CREATE TABLE works_in (
                          employee_id TEXT,
                          id_type VARCHAR(50),
                          hotel_id CHAR(10),
                          PRIMARY KEY (employee_id, id_type, hotel_id),
                          FOREIGN KEY (employee_id, id_type) REFERENCES employee(employee_id, id_type),
                          FOREIGN KEY (hotel_id) REFERENCES hotel(hotel_id)
);

CREATE TABLE manages (
                         employee_id TEXT,
                         id_type VARCHAR(50),
                         hotel_id CHAR(10),
                         PRIMARY KEY (employee_id, id_type, hotel_id),
                         FOREIGN KEY (employee_id, id_type) REFERENCES employee(employee_id, id_type),
                         FOREIGN KEY (hotel_id) REFERENCES hotel(hotel_id)
);

CREATE TABLE role (
                      role_id CHAR(10) PRIMARY KEY,
                      role_name TEXT NOT NULL
);

CREATE TABLE has_role (
                          employee_id TEXT,
                          id_type VARCHAR(50),
                          role_id CHAR(10),
                          PRIMARY KEY (employee_id, id_type, role_id),
                          FOREIGN KEY (employee_id, id_type) REFERENCES employee(employee_id, id_type),
                          FOREIGN KEY (role_id) REFERENCES role(role_id)
);
