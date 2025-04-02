-- hotel chains
insert into hotel_chain
values ('Cherry Blossom Hotels', '(613) 555-9201', 8,
        '{"street": "15 Nidoran Street", "city": "Toronto", "province": "Ontario", "postal": "X9K 3H6", "country": "Canada"}', 'cbhotels@yahoo.com');
insert into hotel_chain
values ('Tiger Lily Hotels', '(613) 555-0382', 8,
        '{"street": "17 Lilligant Street", "city": "Ottawa", "province": "Ontario", "postal": "L4D 2J8", "country": "Canada"}', 'tlhotels@yahoo.com');
insert into hotel_chain
values ('Forget-Me-Not Hotels', '(613) 555-4732', 8,
        '{"street": "92 Houndour Drive", "city": "Kingston", "province": "Ontario", "postal": "D9N 7S3", "country": "Canada"}', 'fmnhotels@yahoo.com');
insert into hotel_chain
values ('Dandelion Hotels', '(613) 555-1739', 8,
        '{"street": "293 Litleo Lane", "city": "Montreal", "province": "Quebec", "postal": "P0H 5F3", "country": "Canada"}', 'dandehotels@yahoo.com');
insert into hotel_chain
values ('Hyacinth Hotels', '(613) 555-2840', 8,
        '{"street": "1500 Oshawott Avenue", "city": "Guelph", "province": "Ontario", "postal": "M8C 4G5", "country": "Canada"}', 'hyahotels@yahoo.com');

-- hotels in Cherry Blossom Hotels

insert into hotel
values ('cbhotel_1', 20, 4, '(613) 555-1029',
        '{"street": "205 Noctowl Street", "city": "Mississauga", "province": "Ontario", "postal": "N3G 6H7", "country": "Canada"}', 'cbmissi@yahoo.com');
-- rooms in hotel 1
insert into room
values (101, 'cbhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'cbhotel_1', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'cbhotel_1', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'cbhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'cbhotel_1', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'cbhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'cbhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'cbhotel_1', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'cbhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'cbhotel_1', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'cbhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'cbhotel_1', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'cbhotel_1', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'cbhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'cbhotel_1', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');
insert into room
values (401, 'cbhotel_1', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (402, 'cbhotel_1', 109.80, null, false, '{TV, air conditioner}', 2, 'sea');
insert into room
values (403, 'cbhotel_1', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (404, 'cbhotel_1', 109.80, null, false, '{TV, air conditioner}', 2, 'sea');
insert into room
values (405, 'cbhotel_1', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');

insert into hotel
values ('cbhotel_2', 15, 3, '(613) 555-1024',
        '{"street": "98 Spinarak Avenue", "city": "Ottawa", "province": "Ontario", "postal": "N3X 6M7", "country": "Canada"}', 'cbottawa@yahoo.com');
-- rooms in hotel 2
insert into room
values (101, 'cbhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'cbhotel_2', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'cbhotel_2', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'cbhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'cbhotel_2', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'cbhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'cbhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'cbhotel_2', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'cbhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'cbhotel_2', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'cbhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'cbhotel_2', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'cbhotel_2', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'cbhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'cbhotel_2', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');

insert into hotel
values ('cbhotel_3', 20, 3.5, '(613) 555-1025',
        '{"street": "276 Tauros Drive", "city": "Toronto", "province": "Ontario", "postal": "D3G 4H7", "country": "Canada"}', 'cbtoro1@yahoo.com');
-- rooms in hotel 3
insert into room
values (101, 'cbhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'cbhotel_3', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'cbhotel_3', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'cbhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'cbhotel_3', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'cbhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'cbhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'cbhotel_3', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'cbhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'cbhotel_3', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'cbhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'cbhotel_3', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'cbhotel_3', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'cbhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'cbhotel_3', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');
insert into room
values (401, 'cbhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (402, 'cbhotel_3', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (403, 'cbhotel_3', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (404, 'cbhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (405, 'cbhotel_3', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');

insert into hotel
values ('cbhotel_4', 10, 4, '(613) 555-1026',
        '{"street": "823 Gengar Street", "city": "Toronto", "province": "Ontario", "postal": "N3D 0H7", "country": "Canada"}', 'cbtoro2@yahoo.com');
-- rooms in hotel 4
insert into room
values (101, 'cbhotel_4', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'cbhotel_4', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'cbhotel_4', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'cbhotel_4', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'cbhotel_4', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'cbhotel_4', 109.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (202, 'cbhotel_4', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'cbhotel_4', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'cbhotel_4', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'cbhotel_4', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');

insert into hotel
values ('cbhotel_5', 15, 2, '(613) 555-1027',
        '{"street": "243 Clodsire Avenue", "city": "Vancouver", "province": "British Colombia", "postal": "N9G 9H7", "country": "Canada"}', 'cbvanc@yahoo.com');
-- rooms in hotel 5
insert into room
values (101, 'cbhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'cbhotel_5', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'cbhotel_5', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'cbhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'cbhotel_5', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'cbhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'cbhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'cbhotel_5', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'cbhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'cbhotel_5', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'cbhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'cbhotel_5', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'cbhotel_5', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'cbhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'cbhotel_5', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');

insert into hotel
values ('cbhotel_6', 30, 3.5, '(613) 555-1028',
        '{"street": "908 Floette Street", "city": "Edmonton", "province": "Alberta", "postal": "N2G 6H7", "country": "Canada"}', 'cbedmonton@yahoo.com');
-- rooms in hotel 6
insert into room
values (101, 'cbhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'cbhotel_6', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'cbhotel_6', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'cbhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'cbhotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'cbhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'cbhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'cbhotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'cbhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'cbhotel_6', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'cbhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'cbhotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'cbhotel_6', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'cbhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'cbhotel_6', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');
insert into room
values (401, 'cbhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (402, 'cbhotel_6', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (403, 'cbhotel_6', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (404, 'cbhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (405, 'cbhotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (501, 'cbhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (502, 'cbhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (503, 'cbhotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (504, 'cbhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (505, 'cbhotel_6', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (601, 'cbhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (602, 'cbhotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (603, 'cbhotel_6', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (604, 'cbhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (605, 'cbhotel_6', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');

insert into hotel
values ('cbhotel_7', 15, 4, '(613) 555-1031',
        '{"street": "8273 Chinchou Avenue", "city": "Toronto", "province": "Ontario", "postal": "N3G 3H7", "country": "Canada"}', 'cbtoro3@yahoo.com');
-- rooms in hotel 7
insert into room
values (101, 'cbhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'cbhotel_7', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'cbhotel_7', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'cbhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'cbhotel_7', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'cbhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'cbhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'cbhotel_7', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'cbhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'cbhotel_7', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'cbhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'cbhotel_7', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'cbhotel_7', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'cbhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'cbhotel_7', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');

insert into hotel
values ('cbhotel_8', 10, 5, '(613) 555-1030',
        '{"street": "9231 Ampharos Court", "city": "Halifax", "province": "Nova Scotia", "postal": "N3G 6F7", "country": "Canada"}', 'cbhali@yahoo.com');
-- rooms in hotel 8
insert into room
values (101, 'cbhotel_8', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'cbhotel_8', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'cbhotel_8', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'cbhotel_8', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'cbhotel_8', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'cbhotel_8', 109.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (202, 'cbhotel_8', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'cbhotel_8', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'cbhotel_8', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'cbhotel_8', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');

-- hotels in Tiger Lily Hotels
insert into hotel
values ('tlhotel_1', 20, 3, '(613) 555-2029',
        '{"street": "4932 Altaria Street", "city": "Mattawa", "province": "Ontario", "postal": "B6W 6H7", "country": "Canada"}', 'tlmatta@yahoo.com');
-- rooms in hotel 1
insert into room
values (101, 'tlhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'tlhotel_1', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'tlhotel_1', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'tlhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'tlhotel_1', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'tlhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'tlhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'tlhotel_1', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'tlhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'tlhotel_1', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'tlhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'tlhotel_1', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'tlhotel_1', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'tlhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'tlhotel_1', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');
insert into room
values (401, 'tlhotel_1', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (402, 'tlhotel_1', 109.80, null, false, '{TV, air conditioner}', 2, 'sea');
insert into room
values (403, 'tlhotel_1', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (404, 'tlhotel_1', 109.80, null, false, '{TV, air conditioner}', 2, 'sea');
insert into room
values (405, 'tlhotel_1', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');

insert into hotel
values ('tlhotel_2', 15, 2.5, '(613) 555-2024',
        '{"street": "100 Vileplume Avenue", "city": "Kingston", "province": "Ontario", "postal": "M7G 6M7", "country": "Canada"}', 'tlkings1@yahoo.com');
-- rooms in hotel 2
insert into room
values (101, 'tlhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'tlhotel_2', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'tlhotel_2', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'tlhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'tlhotel_2', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'tlhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'tlhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'tlhotel_2', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'tlhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'tlhotel_2', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'tlhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'tlhotel_2', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'tlhotel_2', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'tlhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'tlhotel_2', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');

insert into hotel
values ('tlhotel_3', 20, 3.5, '(613) 555-2025',
        '{"street": "384 Gyarados Street", "city": "Kingston", "province": "Ontario", "postal": "D3G 9L5", "country": "Canada"}', 'tlkings2@yahoo.com');
-- rooms in hotel 3
insert into room
values (101, 'tlhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'tlhotel_3', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'tlhotel_3', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'tlhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'tlhotel_3', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'tlhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'tlhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'tlhotel_3', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'tlhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'tlhotel_3', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'tlhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'tlhotel_3', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'tlhotel_3', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'tlhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'tlhotel_3', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');
insert into room
values (401, 'tlhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (402, 'tlhotel_3', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (403, 'tlhotel_3', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (404, 'tlhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (405, 'tlhotel_3', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');

insert into hotel
values ('tlhotel_4', 10, 4, '(613) 555-2026',
        '{"street": "274 Illumise Street", "city": "Toronto", "province": "Ontario", "postal": "N3D 0H7", "country": "Canada"}', 'tltoro@yahoo.com');
-- rooms in hotel 4
insert into room
values (101, 'tlhotel_4', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'tlhotel_4', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'tlhotel_4', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'tlhotel_4', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'tlhotel_4', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'tlhotel_4', 109.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (202, 'tlhotel_4', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'tlhotel_4', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'tlhotel_4', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'tlhotel_4', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');

insert into hotel
values ('tlhotel_5', 15, 3, '(613) 555-2027',
        '{"street": "384 Bewear Avenue", "city": "Thunder Bay", "province": "Ontario", "postal": "G3D 9H7", "country": "Canada"}', 'tltb@yahoo.com');
-- rooms in hotel 5
insert into room
values (101, 'tlhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'tlhotel_5', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'tlhotel_5', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'tlhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'tlhotel_5', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'tlhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'tlhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'tlhotel_5', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'tlhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'tlhotel_5', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'tlhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'tlhotel_5', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'tlhotel_5', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'tlhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'tlhotel_5', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');

insert into hotel
values ('tlhotel_6', 30, 3.5, '(613) 555-2028',
        '{"street": "283 Snom Street", "city": "Edmonton", "province": "Alberta", "postal": "J8M 6H7", "country": "Canada"}', 'tledmonton@yahoo.com');
-- rooms in hotel 6
insert into room
values (101, 'tlhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'tlhotel_6', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'tlhotel_6', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'tlhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'tlhotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'tlhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'tlhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'tlhotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'tlhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'tlhotel_6', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'tlhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'tlhotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'tlhotel_6', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'tlhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'tlhotel_6', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');
insert into room
values (401, 'tlhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (402, 'tlhotel_6', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (403, 'tlhotel_6', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (404, 'tlhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (405, 'tlhotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (501, 'tlhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (502, 'tlhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (503, 'tlhotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (504, 'tlhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (505, 'tlhotel_6', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (601, 'tlhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (602, 'tlhotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (603, 'tlhotel_6', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (604, 'tlhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (605, 'tlhotel_6', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');

insert into hotel
values ('tlhotel_7', 15, 3.5, '(613) 555-2031',
        '{"street": "2831 Slaking Avenue", "city": "Montreal", "province": "Quebec", "postal": "N3G K1D", "country": "Canada"}', 'tlmont@yahoo.com');
-- rooms in hotel 7
insert into room
values (101, 'tlhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'tlhotel_7', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'tlhotel_7', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'tlhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'tlhotel_7', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'tlhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'tlhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'tlhotel_7', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'tlhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'tlhotel_7', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'tlhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'tlhotel_7', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'tlhotel_7', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'tlhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'tlhotel_7', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');

insert into hotel
values ('tlhotel_8', 10, 3, '(613) 555-2030',
        '{"street": "1937 Persian Court", "city": "Ottawa", "province": "Ontario", "postal": "H7F 6F7", "country": "Canada"}', 'tlottawa@yahoo.com');
-- rooms in hotel 8
insert into room
values (101, 'tlhotel_8', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'tlhotel_8', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'tlhotel_8', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'tlhotel_8', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'tlhotel_8', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'tlhotel_8', 109.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (202, 'tlhotel_8', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'tlhotel_8', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'tlhotel_8', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'tlhotel_8', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');

-- hotels in Forget-Me-Not Hotels
insert into hotel
values ('fmnhotel_1', 20, 4, '(613) 555-3029',
        '{"street": "392 Salamence Street", "city": "Brampton", "province": "Ontario", "postal": "B6X 8G1", "country": "Canada"}', 'fmnbrampt1@yahoo.com');
-- rooms in hotel 1
insert into room
values (101, 'fmnhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'fmnhotel_1', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'fmnhotel_1', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'fmnhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'fmnhotel_1', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'fmnhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'fmnhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'fmnhotel_1', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'fmnhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'fmnhotel_1', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'fmnhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'fmnhotel_1', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'fmnhotel_1', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'fmnhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'fmnhotel_1', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');
insert into room
values (401, 'fmnhotel_1', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (402, 'fmnhotel_1', 109.80, null, false, '{TV, air conditioner}', 2, 'sea');
insert into room
values (403, 'fmnhotel_1', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (404, 'fmnhotel_1', 109.80, null, false, '{TV, air conditioner}', 2, 'sea');
insert into room
values (405, 'fmnhotel_1', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');

insert into hotel
values ('fmnhotel_2', 15, 4.5, '(613) 555-3024',
        '{"street": "392 Dragonair Avenue", "city": "Toronto", "province": "Ontario", "postal": "M7G 3T2", "country": "Canada"}', 'fmntoro1@yahoo.com');
-- rooms in hotel 2
insert into room
values (101, 'fmnhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'fmnhotel_2', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'fmnhotel_2', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'fmnhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'fmnhotel_2', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'fmnhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'fmnhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'fmnhotel_2', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'fmnhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'fmnhotel_2', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'fmnhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'fmnhotel_2', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'fmnhotel_2', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'fmnhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'fmnhotel_2', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');

insert into hotel
values ('fmnhotel_3', 20, 3.5, '(613) 555-3025',
        '{"street": "93 Komala Street", "city": "Toronto", "province": "Ontario", "postal": "K9C 9L5", "country": "Canada"}', 'fmntoro2@yahoo.com');
-- rooms in hotel 3
insert into room
values (101, 'fmnhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'fmnhotel_3', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'fmnhotel_3', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'fmnhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'fmnhotel_3', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'fmnhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'fmnhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'fmnhotel_3', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'fmnhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'fmnhotel_3', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'fmnhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'fmnhotel_3', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'fmnhotel_3', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'fmnhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'fmnhotel_3', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');
insert into room
values (401, 'fmnhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (402, 'fmnhotel_3', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (403, 'fmnhotel_3', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (404, 'fmnhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (405, 'fmnhotel_3', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');

insert into hotel
values ('fmnhotel_4', 10, 4, '(613) 555-3026',
        '{"street": "4839 Toxtricity Street", "city": "Kitchener", "province": "Ontario", "postal": "N3D 8J6", "country": "Canada"}', 'fmnkitch@yahoo.com');
-- rooms in hotel 4
insert into room
values (101, 'fmnhotel_4', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'fmnhotel_4', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'fmnhotel_4', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'fmnhotel_4', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'fmnhotel_4', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'fmnhotel_4', 109.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (202, 'fmnhotel_4', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'fmnhotel_4', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'fmnhotel_4', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'fmnhotel_4', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');

insert into hotel
values ('fmnhotel_5', 15, 4, '(613) 555-3027',
        '{"street": "7492 Mareanie Avenue", "city": "Waterloo", "province": "Ontario", "postal": "G3D 9H7", "country": "Canada"}', 'fmnwaterloo@yahoo.com');
-- rooms in hotel 5
insert into room
values (101, 'fmnhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'fmnhotel_5', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'fmnhotel_5', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'fmnhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'fmnhotel_5', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'fmnhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'fmnhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'fmnhotel_5', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'fmnhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'fmnhotel_5', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'fmnhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'fmnhotel_5', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'fmnhotel_5', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'fmnhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'fmnhotel_5', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');

insert into hotel
values ('fmnhotel_6', 30, 5, '(613) 555-3028',
        '{"street": "7392 Absol Street", "city": "Sudbury", "province": "Ontario", "postal": "P7M 6H7", "country": "Canada"}', 'fmnsud@yahoo.com');
-- rooms in hotel 6
insert into room
values (101, 'fmnhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'fmnhotel_6', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'fmnhotel_6', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'fmnhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'fmnhotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'fmnhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'fmnhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'fmnhotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'fmnhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'fmnhotel_6', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'fmnhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'fmnhotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'fmnhotel_6', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'fmnhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'fmnhotel_6', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');
insert into room
values (401, 'fmnhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (402, 'fmnhotel_6', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (403, 'fmnhotel_6', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (404, 'fmnhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (405, 'fmnhotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (501, 'fmnhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (502, 'fmnhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (503, 'fmnhotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (504, 'fmnhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (505, 'fmnhotel_6', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (601, 'fmnhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (602, 'fmnhotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (603, 'fmnhotel_6', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (604, 'fmnhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (605, 'fmnhotel_6', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');

insert into hotel
values ('fmnhotel_7', 15, 4.5, '(613) 555-3031',
        '{"street": "837 Milotic Avenue", "city": "Vaughn", "province": "Ontario", "postal": "N3G K4D", "country": "Canada"}', 'fmnvaughn@yahoo.com');
-- rooms in hotel 7
insert into room
values (101, 'fmnhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'fmnhotel_7', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'fmnhotel_7', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'fmnhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'fmnhotel_7', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'fmnhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'fmnhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'fmnhotel_7', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'fmnhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'fmnhotel_7', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'fmnhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'fmnhotel_7', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'fmnhotel_7', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'fmnhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'fmnhotel_7', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');

insert into hotel
values ('fmnhotel_8', 10, 3, '(613) 555-3030',
        '{"street": "1937 Riolu Avenue", "city": "Brampton", "province": "Ontario", "postal": "H7F 6F7", "country": "Canada"}', 'fmnbrampt2@yahoo.com');
-- rooms in hotel 8
insert into room
values (101, 'fmnhotel_8', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'fmnhotel_8', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'fmnhotel_8', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'fmnhotel_8', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'fmnhotel_8', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'fmnhotel_8', 109.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (202, 'fmnhotel_8', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'fmnhotel_8', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'fmnhotel_8', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'fmnhotel_8', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');

-- hotels in Dandelion Hotels
insert into hotel
values ('ddhotel_1', 20, 4, '(613) 555-4029',
        '{"street": "827 Shiinotic Street", "city": "Markham", "province": "Ontario", "postal": "L8N 6H7", "country": "Canada"}', 'ddmark@yahoo.com');
-- rooms in hotel 1
insert into room
values (101, 'ddhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'ddhotel_1', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'ddhotel_1', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'ddhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'ddhotel_1', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'ddhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'ddhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'ddhotel_1', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'ddhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'ddhotel_1', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'ddhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'ddhotel_1', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'ddhotel_1', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'ddhotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'ddhotel_1', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');
insert into room
values (401, 'ddhotel_1', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (402, 'ddhotel_1', 109.80, null, false, '{TV, air conditioner}', 2, 'sea');
insert into room
values (403, 'ddhotel_1', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (404, 'ddhotel_1', 109.80, null, false, '{TV, air conditioner}', 2, 'sea');
insert into room
values (405, 'ddhotel_1', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');

insert into hotel
values ('ddhotel_2', 15, 3, '(613) 555-4024',
        '{"street": "263 Yamask Avenue", "city": "Ottawa", "province": "Ontario", "postal": "L9X 6M7", "country": "Canada"}', 'ddottawa1@yahoo.com');
-- rooms in hotel 2
insert into room
values (101, 'ddhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'ddhotel_2', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'ddhotel_2', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'ddhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'ddhotel_2', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'ddhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'ddhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'ddhotel_2', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'ddhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'ddhotel_2', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'ddhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'ddhotel_2', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'ddhotel_2', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'ddhotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'ddhotel_2', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');

insert into hotel
values ('ddhotel_3', 20, 3.5, '(613) 555-4025',
        '{"street": "2938 Charmeleon Drive", "city": "Ottawa", "province": "Ontario", "postal": "V7G 4H7", "country": "Canada"}', 'ddottawa2@yahoo.com');
-- rooms in hotel 3
insert into room
values (101, 'ddhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'ddhotel_3', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'ddhotel_3', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'ddhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'ddhotel_3', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'ddhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'ddhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'ddhotel_3', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'ddhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'ddhotel_3', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'ddhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'ddhotel_3', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'ddhotel_3', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'ddhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'ddhotel_3', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');
insert into room
values (401, 'ddhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (402, 'ddhotel_3', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (403, 'ddhotel_3', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (404, 'ddhotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (405, 'ddhotel_3', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');

insert into hotel
values ('ddhotel_4', 10, 4, '(613) 555-4026',
        '{"street": "304 Misdreavus Street", "city": "Brockville", "province": "Ontario", "postal": "N3D 9J6", "country": "Canada"}', 'ddbrock@yahoo.com');
-- rooms in hotel 4
insert into room
values (101, 'ddhotel_4', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'ddhotel_4', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'ddhotel_4', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'ddhotel_4', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'ddhotel_4', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'ddhotel_4', 109.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (202, 'ddhotel_4', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'ddhotel_4', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'ddhotel_4', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'ddhotel_4', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');

insert into hotel
values ('ddhotel_5', 15, 2, '(613) 555-4027',
        '{"street": "29 Simisage Avenue", "city": "Ottawa", "province": "Ontario", "postal": "M0G 9H7", "country": "Canada"}', 'ddottawa3@yahoo.com');
-- rooms in hotel 5
insert into room
values (101, 'ddhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'ddhotel_5', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'ddhotel_5', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'ddhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'ddhotel_5', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'ddhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'ddhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'ddhotel_5', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'ddhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'ddhotel_5', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'ddhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'ddhotel_5', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'ddhotel_5', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'ddhotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'ddhotel_5', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');

insert into hotel
values ('ddhotel_6', 30, 3.5, '(613) 555-4028',
        '{"street": "372 Axew Lane", "city": "Stratford", "province": "Ontario", "postal": "N2P 6H5", "country": "Canada"}', 'ddstrat@yahoo.com');
-- rooms in hotel 6
insert into room
values (101, 'ddhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'ddhotel_6', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'ddhotel_6', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'ddhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'ddhotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'ddhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'ddhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'ddhotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'ddhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'ddhotel_6', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'ddhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'ddhotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'ddhotel_6', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'ddhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'ddhotel_6', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');
insert into room
values (401, 'ddhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (402, 'ddhotel_6', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (403, 'ddhotel_6', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (404, 'ddhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (405, 'ddhotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (501, 'ddhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (502, 'ddhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (503, 'ddhotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (504, 'ddhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (505, 'ddhotel_6', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (601, 'ddhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (602, 'ddhotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (603, 'ddhotel_6', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (604, 'ddhotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (605, 'ddhotel_6', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');

insert into hotel
values ('ddhotel_7', 15, 4, '(613) 555-4031',
        '{"street": "209 Litwick Avenue", "city": "Belleville", "province": "Ontario", "postal": "N3H 4B7", "country": "Canada"}', 'ddbelle@yahoo.com');
-- rooms in hotel 7
insert into room
values (101, 'ddhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'ddhotel_7', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'ddhotel_7', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'ddhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'ddhotel_7', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'ddhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'ddhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'ddhotel_7', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'ddhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'ddhotel_7', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'ddhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'ddhotel_7', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'ddhotel_7', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'ddhotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'ddhotel_7', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');

insert into hotel
values ('ddhotel_8', 10, 3.5, '(613) 555-4030',
        '{"street": "928 Kirlia Court", "city": "London", "province": "Ontario", "postal": "K5G 3R7", "country": "Canada"}', 'ddlondon@yahoo.com');
-- rooms in hotel 8
insert into room
values (101, 'ddhotel_8', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'ddhotel_8', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'ddhotel_8', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'ddhotel_8', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'ddhotel_8', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'ddhotel_8', 109.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (202, 'ddhotel_8', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'ddhotel_8', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'ddhotel_8', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'ddhotel_8', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');

-- hotels in Hyacinth Hotels
insert into hotel
values ('hyahotel_1', 20, 4, '(613) 555-5029',
        '{"street": "932 Frogadier Street", "city": "Ottawa", "province": "Ontario", "postal": "R6S 6T4", "country": "Canada"}', 'hyaottawa1@yahoo.com');
-- rooms in hotel 1
insert into room
values (101, 'hyahotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'hyahotel_1', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'hyahotel_1', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'hyahotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'hyahotel_1', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'hyahotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'hyahotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'hyahotel_1', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'hyahotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'hyahotel_1', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'hyahotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'hyahotel_1', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'hyahotel_1', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'hyahotel_1', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'hyahotel_1', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');
insert into room
values (401, 'hyahotel_1', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (402, 'hyahotel_1', 109.80, null, false, '{TV, air conditioner}', 2, 'sea');
insert into room
values (403, 'hyahotel_1', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (404, 'hyahotel_1', 109.80, null, false, '{TV, air conditioner}', 2, 'sea');
insert into room
values (405, 'hyahotel_1', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');

insert into hotel
values ('hyahotel_2', 15, 4.5, '(613) 555-5024',
        '{"street": "817 Marshadow Avenue", "city": "Ottawa", "province": "Ontario", "postal": "D7G 3Y8", "country": "Canada"}', 'hyaottawa2@yahoo.com');
-- rooms in hotel 2
insert into room
values (101, 'hyahotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'hyahotel_2', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'hyahotel_2', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'hyahotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'hyahotel_2', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'hyahotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'hyahotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'hyahotel_2', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'hyahotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'hyahotel_2', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'hyahotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'hyahotel_2', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'hyahotel_2', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'hyahotel_2', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'hyahotel_2', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');

insert into hotel
values ('hyahotel_3', 20, 3.5, '(613) 555-5025',
        '{"street": "177 Frillish Street", "city": "Ottawa", "province": "Ontario", "postal": "K0W 2C1", "country": "Canada"}', 'hyaottawa3@yahoo.com');
-- rooms in hotel 3
insert into room
values (101, 'hyahotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'hyahotel_3', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'hyahotel_3', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'hyahotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'hyahotel_3', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'hyahotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'hyahotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'hyahotel_3', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'hyahotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'hyahotel_3', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'hyahotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'hyahotel_3', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'hyahotel_3', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'hyahotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'hyahotel_3', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');
insert into room
values (401, 'hyahotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (402, 'hyahotel_3', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (403, 'hyahotel_3', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (404, 'hyahotel_3', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (405, 'hyahotel_3', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');

insert into hotel
values ('hyahotel_4', 10, 4, '(613) 555-5026',
        '{"street": "4825 Morelull Street", "city": "Ottawa", "province": "Ontario", "postal": "N9K 5J2", "country": "Canada"}', 'hyaottawa4@yahoo.com');
-- rooms in hotel 4
insert into room
values (101, 'hyahotel_4', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'hyahotel_4', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'hyahotel_4', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'hyahotel_4', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'hyahotel_4', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'hyahotel_4', 109.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (202, 'hyahotel_4', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'hyahotel_4', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'hyahotel_4', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'hyahotel_4', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');

insert into hotel
values ('hyahotel_5', 15, 4, '(613) 555-5027',
        '{"street": "9722 Luxray Avenue", "city": "Toronto", "province": "Ontario", "postal": "G5D 9L3", "country": "Canada"}', 'hyatoro1@yahoo.com');
-- rooms in hotel 5
insert into room
values (101, 'hyahotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'hyahotel_5', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'hyahotel_5', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'hyahotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'hyahotel_5', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'hyahotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'hyahotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'hyahotel_5', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'hyahotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'hyahotel_5', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'hyahotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'hyahotel_5', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'hyahotel_5', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'hyahotel_5', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'hyahotel_5', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');

insert into hotel
values ('hyahotel_6', 30, 5, '(613) 555-5028',
        '{"street": "9732 Uxie Street", "city": "Toronto", "province": "Ontario", "postal": "V7G 6H9", "country": "Canada"}', 'hyatoro2@yahoo.com');
-- rooms in hotel 6
insert into room
values (101, 'hyahotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'hyahotel_6', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'hyahotel_6', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'hyahotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'hyahotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'hyahotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'hyahotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'hyahotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'hyahotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'hyahotel_6', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'hyahotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'hyahotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'hyahotel_6', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'hyahotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'hyahotel_6', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');
insert into room
values (401, 'hyahotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (402, 'hyahotel_6', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (403, 'hyahotel_6', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (404, 'hyahotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (405, 'hyahotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (501, 'hyahotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (502, 'hyahotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (503, 'hyahotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (504, 'hyahotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (505, 'hyahotel_6', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (601, 'hyahotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (602, 'hyahotel_6', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (603, 'hyahotel_6', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (604, 'hyahotel_6', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (605, 'hyahotel_6', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');

insert into hotel
values ('hyahotel_7', 15, 4.5, '(613) 555-5031',
        '{"street": "34 Azelf Avenue", "city": "Toronto", "province": "Ontario", "postal": "N3G A4A", "country": "Canada"}', 'hyatoro3@yahoo.com');
-- rooms in hotel 7
insert into room
values (101, 'hyahotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'hyahotel_7', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'hyahotel_7', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'hyahotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'hyahotel_7', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'hyahotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (202, 'hyahotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'hyahotel_7', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'hyahotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'hyahotel_7', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');
insert into room
values (301, 'hyahotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (302, 'hyahotel_7', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (303, 'hyahotel_7', 159.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (304, 'hyahotel_7', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (305, 'hyahotel_7', 159.80, null, true, '{TV, air conditioner}', 3, 'sea');

insert into hotel
values ('hyahotel_8', 10, 3, '(613) 555-5030',
        '{"street": "829 Mesprit Avenue", "city": "Toronto", "province": "Ontario", "postal": "P3F 6F7", "country": "Canada"}', 'hyatoro4@yahoo.com');
-- rooms in hotel 8
insert into room
values (101, 'hyahotel_8', 109.80, null, true, '{TV, air conditioner}', 2, 'mountain');
insert into room
values (102, 'hyahotel_8', 109.80, '{small hole in wall}', true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (103, 'hyahotel_8', 269.80, null, false, '{TV, air conditioner}', 5, 'mountain');
insert into room
values (104, 'hyahotel_8', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (105, 'hyahotel_8', 309.80, null, false, '{TV, air conditioner}', 6, 'sea');
insert into room
values (201, 'hyahotel_8', 109.80, null, true, '{TV, air conditioner}', 3, 'mountain');
insert into room
values (202, 'hyahotel_8', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (203, 'hyahotel_8', 309.80, null, false, '{TV, air conditioner}', 6, 'mountain');
insert into room
values (204, 'hyahotel_8', 109.80, null, true, '{TV, air conditioner}', 2, 'sea');
insert into room
values (205, 'hyahotel_8', 249.80, null, false, '{TV, air conditioner}', 4, 'mountain');