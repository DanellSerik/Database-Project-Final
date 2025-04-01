create view hotel_capacity as
select
    h.hotel_id,
    r.capacity,
    count(*) as room_count
from
    room r
        join
    hotel h on r.hotel_id = h.hotel_id
group by
    h.hotel_id, r.capacity;
