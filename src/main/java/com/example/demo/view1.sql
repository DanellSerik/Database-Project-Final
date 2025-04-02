CREATE OR REPLACE VIEW area_avail AS
SELECT
    h.address->>'city' AS city,
    r.hotel_id,
    COUNT(r.room_num) AS avail_rooms
FROM
    hotel h
        JOIN
    room r ON h.hotel_id = r.hotel_id
        LEFT JOIN
    booking ba ON r.hotel_id = ba.hotel_id AND r.room_num = ba.room_num
        LEFT JOIN
    renting ra ON r.hotel_id = ra.hotel_id AND r.room_num = ra.room_num
WHERE
    (ba.booking_id IS NULL OR
     (ba.check_out_date <= CURRENT_DATE OR ba.check_in_date >= CURRENT_DATE))
  AND
    (ra.renting_id IS NULL OR
     (ra.check_out_date <= CURRENT_DATE OR ra.check_in_date >= CURRENT_DATE))
GROUP BY
    city, r.hotel_id;