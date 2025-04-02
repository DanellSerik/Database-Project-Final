create view area_avail as
select
    h.address->>'city' as city,
    r.room_num,
    r.hotel_id,
    count(r.room_num) as avail_rooms
from
    hotel h
        join
    room r on h.hotel_id = r.hotel_id
        left join
    booking ba on r.hotel_id = ba.hotel_id
        and r.room_num = ba.room_num
        left join
    renting ra on r.hotel_id = ra.hotel_id
        and r.room_num = ra.room_num
where
    (ba.booking_id is null or
     (ba.check_out_date <= current_date or ba.check_in_date >= current_date))
  and
    (ra.renting_id is null or
     (ra.check_out_date <= current_date or ra.check_in_date >= current_date))
group by
    city, r.room_num, h.hotel_id;
