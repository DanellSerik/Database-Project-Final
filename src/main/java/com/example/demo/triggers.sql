CREATE OR REPLACE FUNCTION delete_hotels()
    RETURNS TRIGGER AS $$
BEGIN
    -- Delete the hotels that are linked to the deleted chain
    DELETE FROM hotel
    WHERE hotel_id IN (SELECT hotel_id
                       FROM owns
                       WHERE chain_name = OLD.chain_name);

    RETURN OLD;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER hotel_deletion
    BEFORE DELETE ON hotel_chain
    FOR EACH ROW
EXECUTE FUNCTION delete_hotels();


CREATE OR REPLACE FUNCTION delete_rooms()
    RETURNS TRIGGER AS $$
BEGIN
    -- Delete the hotels that are linked to the deleted chain
    DELETE FROM room
    WHERE hotel_id = OLD.hotel_id;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER room_deletion
    BEFORE DELETE ON hotel
    FOR EACH ROW
EXECUTE FUNCTION delete_rooms();