CREATE INDEX booking_avail
    ON booking (hotel_id, room_num, check_in_date, check_out_date);

CREATE INDEX renting_avail
    ON renting (hotel_id, room_num, check_in_date, check_out_date);
CREATE INDEX cust_booking
ON books (id_type, customer_id, room_num, booking_id);
