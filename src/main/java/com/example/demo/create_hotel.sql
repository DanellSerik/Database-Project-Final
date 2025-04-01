create TABLE hotel_chain(
    chain_name VARCHAR(100) NOT NULL,
    phone_num  VARCHAR(20) NOT NULL,
    num_hotels INTEGER NOT NULL,
    address JSON NOT NULL,
    email TEXT NOT NULL,
    PRIMARY KEY (chain_name)
);

create TABLE hotel(
    hotel_id CHAR(10) NOT NULL,
    num_rooms INTEGER NOT NULL,
    star_rating NUMERIC (2,1) CHECK (star_rating >= 0.0 AND star_rating <= 5.0),
    phone_num  VARCHAR(20) NOT NULL,
    address JSON NOT NULL,
    email TEXT NOT NULL,
    PRIMARY KEY (hotel_id)
);

create TABLE owns (
    chain_name VARCHAR(100) NOT NULL,
    hotel_id CHAR(10) NOT NULL,
    PRIMARY KEY (chain_name, hotel_id),
    FOREIGN KEY (chain_name) REFERENCES hotel_chain ON DELETE CASCADE,
    FOREIGN KEY (hotel_id) REFERENCES hotel ON DELETE CASCADE
);

create TABLE room(
    room_num SMALLINT NOT NULL,
    hotel_id CHAR(10) NOT NULL,
    price DECIMAL(10,2) NOT NULL CHECK (price >= 0),
    problems TEXT[],
    extendable BOOLEAN,
    amenities TEXT[],
    capacity INTEGER NOT NULL,
    view TEXT,
    PRIMARY KEY (room_num, hotel_id),
    FOREIGN KEY (hotel_id) REFERENCES hotel ON DELETE CASCADE
);



