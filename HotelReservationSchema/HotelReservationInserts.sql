USE HotelReservations;

DELETE FROM LineItems
WHERE 1=1;

DELETE FROM Invoice
WHERE 1=1;

DELETE FROM PaymentType
WHERE 1=1;

DELETE FROM ReservationAddon
WHERE 1=1;

DELETE FROM ReservationRoom
WHERE 1=1;

DELETE FROM ReservationGuestDetails
WHERE 1=1;

DELETE FROM Reservation
WHERE 1=1;

DELETE FROM Promotion
WHERE 1=1;

DELETE FROM AmenityRate
WHERE 1=1;

DELETE FROM RoomTypeRate
WHERE 1=1;

DELETE FROM RoomAmenity
WHERE 1=1;

DELETE FROM Amenity
WHERE 1=1;

DELETE FROM AddonRate
WHERE 1=1;

DELETE FROM Rate
WHERE 1=1;

DELETE FROM room
WHERE 1=1;

DELETE FROM RoomType
WHERE 1=1;

DELETE FROM PromotionType
WHERE 1=1;

DELETE FROM DiscountType
WHERE 1=1;

DELETE FROM Customer
WHERE 1=1;

DELETE FROM Addon
WHERE 1=1;

DELETE FROM Location
WHERE 1=1;

DELETE FROM GuestDetails
WHERE 1=1;

INSERT INTO Rate (RateID, StartDate, EndDate, RateType, Rate)
VALUES (1, '2018/1/1', '2018/6/1', 'RoomCostPerNightSingle', 75.00),
(2, '2018/1/1', '2018/6/1', 'RoomCostPerNightDouble', 100.00),
(3, '2018/1/1', '2018/6/1', 'RoomCostPerNightTriple', 125.00),
(4, '2018/1/1', '2018/6/1', 'RoomCostPerNightQuad', 150.00),
(5, '2018/1/1', '2018/6/1', 'RoomCostPerNightQueen', 125.00),
(6, '2018/1/1', '2018/6/1', 'RoomCostPerNightKing', 150.00),
(7, '2018/1/1', '2018/6/1', 'RoomCostPerNightStudio', 90.00),
(8, '2018/1/1', '2018/6/1', 'RoomCostPerNightMasterSuite', 200.00),
(9, '2018/1/1', '2018/6/1', 'RoomCostPerNightPenthouseSuite', 300.00),
(10, '2018/1/1', '2018/6/1', 'RoomCostPerNightVilla', 850.00),
(11, '2018/1/1', '2018/6/1', 'AmenityNatureView', 15.00),
(12, '2018/1/1', '2018/6/1', 'AmenityKitchen', 30.00),
(13, '2018/1/1', '2018/6/1', 'AmenityBalcony', 45.00),
(14, '2018/1/1', '2018/6/1', 'AmenityMinibar', 100.00),
(15, '2018/1/1', '2018/6/1', 'AmenityJacuzzi', 75.00),
(16, '2018/1/1', '2018/6/1', 'AmenityOull-out Couch', 25.00),
(17, '2018/1/1', '2018/6/1', 'AmenityFridge', 20.00),
(18, '2018/1/1', '2018/6/1', 'AmenitySauna', 150.00),
(19, '2018/1/1', '2018/6/1', 'AddonRoomService', 50.00),
(20, '2018/1/1', '2018/6/1', 'AddonMovie', 5.00),
(21, '2018/1/1', '2018/6/1', 'AddonDinnerVoucher', 35.00),
(22, '2018/1/1', '2018/6/1', 'AddonAirportPickup', 60.00),
(23, '2018/6/2', '2018/12/31', 'RoomCostPerNightSingle', 55.00),
(24, '2018/6/2', '2018/12/31', 'RoomCostPerNightDouble', 80.00),
(25, '2018/6/2', '2018/12/31', 'RoomCostPerNightTriple', 105.00),
(26, '2018/6/2', '2018/12/31', 'RoomCostPerNightQuad', 130.00),
(27, '2018/6/2', '2018/12/31', 'RoomCostPerNightQueen', 105.00),
(28, '2018/6/2', '2018/12/31', 'RoomCostPerNightKing', 130.00),
(29, '2018/6/2', '2018/12/31', 'RoomCostPerNightStudio', 70.00),
(30, '2018/6/2', '2018/12/31', 'RoomCostPerNightMasterSuite', 180.00),
(31, '2018/6/2', '2018/12/31', 'RoomCostPerNightPenthouseSuite', 280.00),
(32, '2018/6/2', '2018/12/31', 'RoomCostPerNightVilla', 830.00),
(33, '2018/6/2', '2018/12/31', 'AmenityNatureView', 10.00),
(34, '2018/6/2', '2018/12/31', 'AmenityKitchen', 25.00),
(35, '2018/6/2', '2018/12/31', 'AmenityBalcony', 40.00),
(36, '2018/6/2', '2018/12/31', 'AmenityMinibar', 95.00),
(37, '2018/6/2', '2018/12/31', 'AmenityJacuzzi', 70.00),
(38, '2018/6/2', '2018/12/31', 'AmenityOull-out Couch', 20.00),
(39, '2018/6/2', '2018/12/31', 'AmenityFridge', 15.00),
(40, '2018/6/2', '2018/12/31', 'AmenitySauna', 145.00),
(41, '2018/6/2', '2018/12/31', 'AddonRoomService', 45.00),
(42, '2018/6/2', '2018/12/31', 'AddonMovie', 3.00),
(43, '2018/6/2', '2018/12/31', 'AddonDinnerVoucher', 30.00),
(44, '2018/6/2', '2018/12/31', 'AddonAirportPickup', 55.00);
	
INSERT INTO Amenity (AmenityID, AmenityType)
VALUES (1, 'Nature View'),
	(2, 'Kitchen'),
	(3, 'Balcony'),
	(4, 'Minibar'),
	(5, 'Jacuzzi'),
	(6, 'Pull-out Couch'),
	(7, 'Fridge'),
	(8, 'Sauna'),
    (9, 'Nature View'),
	(10, 'Kitchen'),
	(11, 'Balcony'),
	(12, 'Minibar'),
	(13, 'Jacuzzi'),
	(14, 'Pull-out Couch'),
	(15, 'Fridge'),
	(16, 'Sauna');
    
INSERT INTO AmenityRate (AmenityID, RateID)
VALUES (1, 11),
(2, 12),
(3, 13),
(4, 14),
(5, 15),
(6, 16),
(7, 17),
(8, 18),
(9, 33),
(10, 34),
(11, 35),
(12, 36),
(13, 37),
(14, 38),
(15, 39),
(16, 40);

INSERT INTO RoomType (RoomTypeID, RoomType, OccupancyLimit) 
VALUES (1, 'Single', 1),
	(2, 'Double', 2),
	(3, 'Triple', 3),
	(4, 'Quad', 4),
	(5, 'Queen', 2),
	(6, 'King', 2),
	(7, 'Studio', 1),
	(8, 'Master Suite', 4),
	(9, 'Penthouse Suite', 4),
	(10, 'Villa', 8),
    (11, 'Single', 1),
	(12, 'Double', 2),
	(13, 'Triple', 3),
	(14, 'Quad', 4),
	(15, 'Queen', 2),
	(16, 'King', 2),
	(17, 'Studio', 1),
	(18, 'Master Suite', 4),
	(19, 'Penthouse Suite', 4),
	(20, 'Villa', 8);

INSERT INTO Addon (AddonID, AddonType)
VALUES (1, 'RoomService'),
	(2, 'Movie'),
	(3, 'Dinner Vouchers'),
	(4, 'Airport Pickup'),
    (5, 'RoomService'),
	(6, 'Movie'),
	(7, 'Dinner Vouchers'),
	(8, 'Airport Pickup');

INSERT INTO AddonRate (AddonID, RateID)
VALUES (1, 19),
(2, 20),
(3, 21),
(4, 22),
(5, 41),
(6, 42),
(7, 43),
(8, 44);

INSERT INTO GuestDetails (GuestDetailsID, FirstName, LastName, GuestAge)
values (1, 'Somerset', 'Stepto', 12),
	(2, 'Abbe', 'Ville', 11),
	(3, 'Izabel', 'McIlmorie', 57),
	(4, 'Kerianne', 'Chitson', 14),
	(5, 'Austin', 'Birt', 1),
	(6, 'Mariann', 'Pound', 68),
	(7, 'Tonie', 'Lawles', 16),
	(8, 'Sanderson', 'McGruar', 2),
	(9, 'Merline', 'Emlen', 66),
	(10, 'Bree', 'Watton', 44),
	(11, 'Chaddie', 'Martignoni', 73),
	(12, 'Giana', 'Gravy', 27),
	(13, 'Car', 'Adie', 44),
	(14, 'Kip', 'Oates', 13),
	(15, 'Dollie', 'Surcombe', 42),
	(16, 'Marten', 'Standing', 23),
	(17, 'Tommy', 'Ewebank', 11),
	(18, 'Babbette', 'Hugin', 9),
	(19, 'Wiley', 'Maudett', 2),
	(20, 'Holmes', 'Bresman', 70);
    
INSERT INTO Location (LocationID, Location)
VALUES (1, 'Korriban');

INSERT INTO PaymentType (PaymentTypeID, PaymentType)
VALUES (1, 'Credit'),
(2, 'Debit'),
(3, 'Cash'),
(4, '`Check`'),
(5, 'WireTransfer');

INSERT INTO PromotionType (PromotionID, PromotionType)
VALUES (1, 'NewsLetter'),
(2, 'Holiday'),
(3, 'Loyalty');

INSERT INTO DiscountType (DiscountTypeID, DiscountType)
VALUES (1, '20-Dollars-Off'),
(2, '50-Dollars-Off'),
(3, '10-Percent-Off'),
(4, '25-Percent-Off'),
(5, '50-Percent-Off');

INSERT INTO Promotion (PromotionID, StartDate, EndDate, PromotionCode, PromotionTypeID, DiscountTypeID)
Values (1, '2018/1/1', '2018/1/31', 4567, 1, 1),
(2, '2018/1/1', '2018/1/31', 3111, 1, 2),
(3, '2018/11/1', '2018/11/30', 3215, 2, 3),
(4, '2018/12/1', '2018/12/31', 3278, 2, 4),
(5, '2018/1/1', '2030/1/31', 1337, 3, 5);

INSERT INTO Customer (CustomerID, FirstName, LastName, Phone, Email) 
VALUES (1, 'Talya', 'Bunclark', '920-440-1251', 'tbunclark0@constantcontact.com'),
	(2, 'Sawyer', 'Jaggar', '902-256-7414', 'sjaggar1@dailymail.co.uk'),
	(3, 'Wallis', 'Hotchkin', '268-566-9270', 'whotchkin2@cam.ac.uk'),
	(4, 'Savina', 'Harg', '119-145-8136', 'sharg3@topsy.com'),
	(5, 'Tatiana', 'Elam', '690-288-9256', 'telam4@indiegogo.com'),
	(6, 'Laura', 'Cossins', '574-276-6671', 'lcossins5@g.co'),
	(7, 'Milton', 'Bothram', '920-636-1102', 'mbothram6@ycombinator.com'),
	(8, 'Adena', 'Harcus', '672-736-6008', 'aharcus7@1und1.de'),
	(9, 'Fee', 'Le Friec', '196-799-7732', 'flefriec8@blogtalkradio.com'),
	(10, 'Cherise', 'Caurah', '408-599-2823', 'ccaurah9@ameblo.jp'),
	(11, 'Trever', 'Brunsdon', '221-121-1310', 'tbrunsdona@a8.net'),
	(12, 'Dulci', 'Cicchillo', '404-929-5673', 'dcicchillob@cargocollective.com'),
	(13, 'Augustus', 'Allnutt', '407-325-5622', 'aallnuttc@quantcast.com'),
	(14, 'Artemis', 'Beri', '966-438-4580', 'aberid@behance.net'),
	(15, 'Anderea', 'Saffin', '598-239-4447', 'asaffine@huffingtonpost.com'),
	(16, 'Barnaby', 'Bilbee', '454-118-7417', 'bbilbeef@vk.com'),
	(17, 'Cal', 'Bysh', '698-755-9682', 'cbyshg@cafepress.com'),
	(18, 'Elfie', 'Matsell', '241-663-6370', 'ematsellh@cmu.edu'),
	(19, 'Calv', 'Leech', '971-419-2365', 'cleechi@wordpress.org'),
	(20, 'Timi', 'Beiderbecke', '501-239-0217', 'tbeiderbeckej@fema.gov'),
	(21, 'Fleming', 'Duddy', '702-306-6181', 'fduddyk@home.pl'),
	(22, 'Tiffany', 'Pedrielli', '181-272-4490', 'tpedriellil@wunderground.com'),
	(23, 'Jill', 'Banister', '864-458-8210', 'jbanisterm@newyorker.com'),
	(24, 'Chelsea', 'Di Maggio', '475-266-8553', 'cdimaggion@moonfruit.com'),
	(25, 'Marcella', 'Kimmerling', '210-910-9655', 'mkimmerlingo@feedburner.com'),
	(26, 'Roth', 'Benthall', '445-247-5109', 'rbenthallp@de.vu'),
	(27, 'Brody', 'Shillabeare', '835-775-7975', 'bshillabeareq@usa.gov'),
	(28, 'Staci', 'Wallbanks', '143-956-8490', 'swallbanksr@netscape.com'),
	(29, 'Ring', 'Meiklam', '755-759-3060', 'rmeiklams@vkontakte.ru'),
	(30, 'Angus', 'Glasman', '967-481-2550', 'aglasmant@state.gov'),
	(31, 'Othilia', 'Lashford', '731-489-4348', 'olashfordu@360.cn'),
	(32, 'Mackenzie', 'McFetrich', '140-308-9176', 'mmcfetrichv@hud.gov'),
	(33, 'Lane', 'Carlucci', '454-229-6215', 'lcarlucciw@xinhuanet.com'),
	(34, 'Sunshine', 'Knowller', '569-565-1542', 'sknowllerx@house.gov'),
	(35, 'Bertina', 'Glasman', '410-599-8404', 'bglasmany@simplemachines.org'),
	(36, 'Reine', 'Comino', '329-683-1871', 'rcominoz@dagondesign.com'),
	(37, 'Britteny', 'Kubiak', '895-299-3749', 'bkubiak10@nationalgeographic.com'),
	(38, 'Wynne', 'Davidescu', '431-804-1264', 'wdavidescu11@phoca.cz'),
	(39, 'Corrianne', 'Brauninger', '799-221-5423', 'cbrauninger12@icq.com'),
	(40, 'Thorvald', 'Rigbye', '882-562-3554', 'trigbye13@blogspot.com'),
	(41, 'Gordie', 'Stutely', '146-852-6375', 'gstutely14@istockphoto.com'),
	(42, 'Jennie', 'Fishleigh', '999-914-8428', 'jfishleigh15@typepad.com'),
	(43, 'Shannah', 'Iskower', '243-172-6903', 'siskower16@who.int'),
	(44, 'Koral', 'Poundford', '766-567-3477', 'kpoundford17@fema.gov'),
	(45, 'Opaline', 'Haggerston', '695-855-4037', 'ohaggerston18@unesco.org'),
	(46, 'Madelon', 'Macauley', '431-517-1207', 'mmacauley19@nature.com'),
	(47, 'Kara', 'Kolodziejski', '648-396-3577', 'kkolodziejski1a@exblog.jp'),
	(48, 'Patric', 'Coupar', '489-146-8101', 'pcoupar1b@vk.com'),
	(49, 'Orlando', 'Lamball', '281-788-9420', 'olamball1c@1und1.de'),
	(50, 'Denni', 'Staddart', '453-659-9532', 'dstaddart1d@yandex.ru');
    
INSERT INTO Reservation (ReservationID, StartDate, EndDate, CustomerID, PromotionID, LocationID)
VALUES (1, '2018/6/10', '2018/6/12', 1, NULL, 1),
(2, '2018/6/10', '2018/6/11', 2, 1, 1),
(3, '2018/6/10', '2018/6/12', 3, NULL, 1),
(4, '2018/6/14', '2018/6/15', 4, 2, 1),
(5, '2018/6/15', '2018/6/16', 5, NULL, 1),
(6, '2018/6/20', '2018/6/21', 6, NULL, 1),
(7, '2018/6/22', '2018/6/23', 1, NULL, 1),
(8, '2018/6/24', '2018/6/25', 7, NULL, 1),
(9, '2018/6/10', '2018/6/12', 8, NULL, 1),
(10, '2018/6/18', '2018/6/24', 9, NULL, 1),
(11, '2018/7/10', '2018/7/12', 10, NULL, 1),
(12, '2018/7/12', '2018/7/14', 11, NULL, 1),
(13, '2018/6/10', '2018/6/12', 12, NULL, 1),
(14, '2018/6/10', '2018/6/12', 13, NULL, 1),
(15, '2018/6/10', '2018/6/12', 14, NULL, 1),
(16, '2018/6/10', '2018/6/12', 15, NULL, 1),
(17, '2018/6/5', '2018/6/7', 16, NULL, 1),
(18, '2018/6/11', '2018/6/12', 17, NULL, 1),
(19, '2018/6/11', '2018/6/22', 18, NULL, 1),
(20, '2018/6/20', '2018/6/26', 19, 5, 1);
                  

INSERT INTO ReservationGuestDetails (ReservationID, GuestDetailsID)
VALUES (1, 1),
(1, 2),
(10, 3),
(10, 4),
(9, 11),
(18, 12),
(20, 5),
(20, 6),
(20, 7),
(20, 8),
(20, 9),
(20, 10);

INSERT INTO Invoice (InvoiceID, TotalAddonFees, TotalAmenityCost, TotalRoomCost, Tax, PromotionDiscount, GrandTotal, InvoiceDate, PaymentTypeID, ReservationID)
VALUES ( 1 , 3.00 , 143.00 , 260.00 , 0.08 , '20-Dollars-Off' , 418.48 , '2018/6/12' , 3 , 1 ) ,
( 2 , NULL , 45 , 55 , 0.08 , NULL , 108.00 , '2018/6/11', 2 , 2 ) ,
( 3 , NULL , 45 , 110 , 0.08 , NULL , 167.40 , '2018/6/12', 2 , 3 ) ,
( 4 , NULL , 45 , 80 , 0.08 , '50-Dollars-Off' , 85.00 , '2018/6/15', 2 , 4 ) ,
( 5 , NULL , 45 , 105 , 0.08 , NULL , 162.00 , '2018/6/16', 1 , 5 ) ,
( 6 , NULL , 45 , 105 , 0.08 , NULL , 162.00 , '2018/6/21', 3 , 6 ) ,
( 7 , NULL , 45 , 105 , 0.08 , NULL , 162.00 , '2018/6/23', 1 , 7 ) ,
( 8 , NULL , 45 , 130 , 0.08 , NULL , 189.00 , '2018/6/25', 1 , 8 ) ,
( 9 , NULL , 385 , 1660 , 0.08 , NULL , 2208.60 , '2018/6/12', 2 , 9 ) ,
( 10 , NULL , 45 , 780 , 0.08 , NULL , 891.00 ,  '2018/6/24' , 4 , 10 ) ,
( 11 , NULL , 170 , 260 , 0.08 , NULL , 464.40 ,  '2018/7/12' , NULL , 11 ) ,
( 12 , NULL , 170 , 210 , 0.08 , NULL , 410.40 , '2018/7/14' , NULL , 12 ) ,
( 13 , 30 , 200 , 210 , 0.08 , NULL , 475.20 ,  '2018/6/12' , 2 , 13 ) ,
( 14 , 30 , 200 , 210 , 0.08 , NULL , 475.20 ,  '2018/6/12' , 2 , 14 ) ,
( 15 , 55 , 170 , 260 , 0.08 , NULL , 523.80 ,  '2018/6/12' , 2 , 15 ) ,
( 16 , NULL , 170 , 360 , 0.08 , NULL , 572.40 ,  '2018/6/12', 1 , 16 ) ,
( 17 , NULL , 170 , 360 , 0.08 , NULL , 572.40 ,  '2018/6/7', 2 , 17 ) ,
( 18 , NULL , 170 , 180 , 0.08 , NULL , 378.00 ,  '2018/6/12' , 1 , 18 ) ,
( 19 , NULL , 240 , 3080 , 0.08 , NULL , 3585.60 ,  '2018/6/22' , 1 , 19 ) ,
( 20 , 61 , 446 , 4986 , 0.08 , '50-Percent-Off' , 3185.94 ,  '2018/6/26' , 1 , 20 );
    
INSERT INTO LineItems (LineItemsID, ChargeType, RoomNumber, Cost, Quantity, Total, InvoiceID)
VALUES ( 1 , 'Room' , 108 , 130 , 2 , 260 , 1 ),
( 2 , 'Nature-View' , 108 , 10 , 1 , 10 , 1 ),
( 3 , 'Pull-Out-Couch' , 108 , 20 , 1 , 20 , 1 ),
( 4 , 'Fridge' , 108 , 15 , 1 , 15 , 1 ),
( 5 , 'Minibar' , 108 , 95 , 1 , 95 , 1 ),
( 6 , 'Movie' , 108 , 3 , 1 , 3 , 1 ),
( 7 , 'Room' , 101 , 55 , 1 , 55 , 2 ),
( 8 , 'Nature-View' , 101 , 10 , 1 , 10 , 2 ),
( 9 , 'Pull-Out-Couch' , 101 , 20 , 1 , 20 , 2 ),
( 10 , 'Fridge' , 101 , 15 , 1 , 15 , 2 ),
( 11 , 'Room' , 102 , 55 , 2 , 110 , 3 ),
( 12 , 'Nature-View' , 102 , 10 , 1 , 10 , 3 ),
( 13 , 'Pull-Out-Couch' , 102 , 20 , 1 , 20 , 3 ),
( 14 , 'Fridge' , 102 , 15 , 1 , 15 , 3 ),
( 15 , 'Room' , 103 , 80 , 1 , 80 , 4 ),
( 16 , 'Nature-View' , 103 , 10 , 1 , 10 , 4 ),
( 17 , 'Pull-Out-Couch' , 103 , 20 , 1 , 20 , 4 ),
( 18 , 'Fridge' , 103 , 15 , 1 , 15 , 4 ),
( 19 , 'Room' , 104 , 105 , 1 , 105 , 5 ),
( 20 , 'Nature-View' , 104 , 10 , 1 , 10 , 5 ),
( 21 , 'Pull-Out-Couch' , 104 , 20 , 1 , 20 , 5 ),
( 22 , 'Fridge' , 104 , 15 , 1 , 15 , 5 ),
( 23 , 'Room' , 105 , 105 , 1 , 105 , 6 ),
( 24 , 'Nature-View' , 105 , 10 , 1 , 10 , 6 ),
( 25 , 'Pull-Out-Couch' , 105 , 20 , 1 , 20 , 6 ),
( 26 , 'Fridge' , 105 , 15 , 1 , 15 , 6 ),
( 27 , 'Room' , 106 , 105 , 1 , 105 , 7 ),
( 28 , 'Nature-View' , 106 , 10 , 1 , 10 , 7 ),
( 29 , 'Pull-Out-Couch' , 106 , 20 , 1 , 20 , 7 ),
( 30 , 'Fridge' , 106 , 15 , 1 , 15 , 7 ),
( 31 , 'Room' , 107 , 130 , 1 , 130 , 8 ),
( 32 , 'Nature-View' , 107 , 10 , 1 , 10 , 8 ),
( 33 , 'Pull-Out-Couch' , 107 , 20 , 1 , 20 , 8 ),
( 34 , 'Fridge' , 107 , 15 , 1 , 15 , 8 ),
( 35 , 'Room' , 601 , 830 , 2 , 1660 , 9 ),
( 36 , 'Nature-View' , 601 , 10 , 1 , 10 , 9 ),
( 37 , 'Kitchen' , 601 , 25 , 1 , 25 , 9 ),
( 38 , 'Balcony' , 601 , 40 , 1 , 40 , 9 ),
( 39 , 'Minibar' , 601 , 95 , 1 , 95 , 9 ),
( 40 , 'Jacuzzi' , 601 , 70 , 1 , 70 , 9 ),
( 41 , 'Sauna' , 601 , 145 , 1 , 145 , 9 ),
( 42 , 'Room' , 107 , 130 , 6 , 780 , 10 ),
( 43 , 'Nature-View' , 107 , 10 , 1 , 10 , 10 ),
( 44 , 'Pull-Out-Couch' , 107 , 20 , 1 , 20 , 10 ),
( 45 , 'Fridge' , 107 , 15 , 1 , 15 , 10 ),
( 46 , 'Room' , 303 , 130 , 2 , 260 , 11 ),
( 47 , 'Nature-View', 303 , 10 , 1 , 10 , 11 ),
( 48 , 'Kitchen' , 303 , 25 , 1 , 25 , 11 ),
( 49 , 'Balcony' , 303 , 40 , 1 , 40 , 11 ),
( 50 , 'Minibar' , 303 , 95 , 1 , 95 , 11 ),
( 52 , 'Room' , 304 , 105 , 2 , 210 , 12 ),
( 53 , 'Nature-View' , 304 , 10 , 1 , 10 , 12 ),
( 54 , 'Kitchen' , 304 , 25 , 1 , 25 , 12 ),
( 55 , 'Balcony' , 304 , 40 , 1 , 40 , 12 ),
( 56 , 'Minibar' , 304 , 95 , 1 , 95 , 12 ),
( 57 , 'Room' , 305 , 105 , 2 , 210 , 13 ),
( 58 , 'Nature-View' , 305 , 10 , 1 , 10 , 13 ),
( 59 , 'Kitchen' , 305 , 25 , 1 , 25 , 13 ),
( 60 , 'Balcony' , 305 , 40 , 1 , 40 , 13 ),
( 61 , 'Minibar' , 305 , 95 , 1 , 95 , 13 ),
( 62 , 'DinnerVoucher' , 305 , 30 , 1 , 30 , 13 ),
( 63 , 'Room' , 401 , 105 , 2 , 210 , 14 ),
( 64 , 'Nature-View' , 401 , 10 , 1 , 10 , 14 ),
( 65 , 'Kitchen' , 401 , 25 , 1 , 25 , 14 ),
( 66 , 'Balcony' , 401 , 40 , 1 , 40 , 14 ),
( 67 , 'Minibar' , 401 , 95 , 1 , 95 , 14 ),
( 68 , 'DinnerVoucher' , 401 , 30 , 1 , 30 , 14 ),
( 69 , 'Room' , 402 , 130 , 2 , 260 , 15 ),
( 70 , 'Nature-View' , 402 , 10 , 1 , 10 , 15 ),
( 71 , 'Kitchen' , 402 , 25 , 1 , 25 , 15 ),
( 72 , 'Balcony' , 402 , 40 , 1 , 40 , 15 ),
( 73 , 'Minibar' , 402 , 95 , 1 , 95 , 15 ),
( 74 , 'Room' , 403 , 180 , 2 , 360 , 16 ),
( 75 , 'Nature-View' , 403 , 10 , 1 , 10 , 16 ),
( 76 , 'Kitchen' , 403 , 25 , 1 , 25 , 16 ),
( 77 , 'Balcony' , 403 , 40 , 1 , 40 , 16 ),
( 78 , 'Minibar' , 403 , 95 , 1 , 95 , 16 ),
( 79 , 'Room' , 404 , 180 , 2 , 360 , 17 ),
( 80 , 'Nature-View' , 404 , 10 , 1 , 10 , 17 ),
( 81 , 'Kitchen' , 404 , 25 , 1 , 25 , 17 ),
( 82 , 'Balcony' , 404 , 40 , 1 , 40 , 17 ),
( 83 , 'Minibar' , 404 , 95 , 1 , 95 , 17 ),
( 84 , 'Room' , 405 , 180 , 1 , 180 , 18 ),
( 85 , 'Nature-View' , 405 , 10 , 1 , 10 , 18 ),
( 86 , 'Kitchen' , 405 , 25 , 1 , 25 , 18 ),
( 87 , 'Balcony' , 405 , 40 , 1 , 40 , 18 ),
( 88 , 'Minibar' , 405 , 95 , 1 , 95 , 18 ),
( 89 , 'Room' , 501 , 280 , 11 , 3080 , 19 ),
( 90 , 'Nature-View' , 501 , 10 , 1 , 10 , 19 ),
( 91 , 'Kitchen' , 501 , 25 , 1 , 25 , 19 ),
( 92 , 'Balcony' , 501 , 40 , 1 , 40 , 19 ),
( 93 , 'Minibar' , 501 , 95 , 1 , 95 , 19 ),
( 94 , 'Jacuzzi' , 501 , 70 , 1 , 70 , 19 ),
( 95 , 'Room' , 601 , 830 , 6 , 4980 , 20 ),
( 96 , 'Nature-View' , 601 , 10 , 1 , 10 , 20 ),
( 97 , 'Kitchen' , 601 , 25 , 1 , 25 , 20 ),
( 98 , 'Balcony' , 601 , 40 , 1 , 40 , 20 ),
( 99 , 'Minibar' , 601 , 95 , 1 , 95 , 20 ),
( 100 , 'Jacuzzi' , 601 , 70 , 1 , 70 , 20 ),
( 101 , 'Sauna' , 601 , 145 , 1 , 145 , 20 ),
( 102 , 'AirportPickup' , 601 , 55 , 1 , 55 , 20 ),
( 103 , 'Movie' , 601 , 3 , 2 , 6 , 20 );    
 
INSERT INTO Room (RoomID, RoomNumber, Floor, RoomTypeID)
VALUES (1, 101, 1, 1),
	(2, 102, 1, 1),
	(3, 103, 1, 2),
	(4, 104, 1, 2),
	(5, 105, 1, 3),
	(6, 106, 1, 3),
	(7, 107, 1, 4),
	(8, 108, 1, 4),
	(9, 109, 1, 5),
	(10, 110, 1, 5),
	(11, 201, 2, 6),
	(12, 202, 2, 6),
	(13, 203, 2, 7),
	(14, 204, 2, 7),
	(15, 205, 2, 6),
	(16, 301, 3, 6),
	(17, 302, 3, 4),
	(18, 303, 3, 4),
	(19, 304, 3, 5),
	(20, 305, 3, 5),
	(21, 401, 4, 5),
	(22, 402, 4, 6),
	(23, 403, 4, 8),
	(24, 404, 4, 8),
	(25, 405, 4, 8),
	(26, 501, 5, 9),
	(27, 601, 6, 10); 
 
INSERT INTO RoomAmenity (RoomID, AmenityID)
VALUES (1, 1 ),
	(1, 6 ),
	(1, 7 ),
	(2, 1 ),
	(2, 6 ),
	(2, 7 ),
	(3, 1 ),
	(3, 6 ),
	(3, 7 ),
	(4, 1 ),
	(4, 6 ),
	(4, 7 ),
	(5, 1 ),
	(5, 6 ),
	(5, 7 ),
	(6, 1 ),
	(6, 6 ),
	(6, 7 ),
	(7, 1 ),
	(7, 6 ),
	(7, 7 ),
	(7, 4 ),
	(8, 1 ),
	(8, 6 ),
	(8, 7 ),
	(8, 4 ),
	(9, 1 ),
	(9, 6 ),
	(9, 7 ),
	(9, 4 ),
	(10, 1 ),
	(10, 6 ),
	(10, 7 ),
	(10, 4 ),
	(11, 1 ),
	(11, 2 ),
	(11, 3 ),
	(11, 4 ),
	(12, 1 ),
	(12, 2 ),
	(12, 3 ),
	(12, 4 ),
	(15, 1 ),
	(15, 2 ),
	(15, 3 ),
	(15, 4 ),
	(16, 1 ),
	(16, 2 ),
	(16, 3 ),
	(16, 4 ),
	(17, 1 ),
	(17, 2 ),
	(17, 3 ),
	(17, 4 ),
	(18, 1 ),
	(18, 2 ),
	(18, 3 ),
	(18, 4 ),
	(19, 1 ),
	(19, 2 ),
	(19, 3 ),
	(19, 4 ),
	(20, 1 ),
	(20, 2 ),
	(20, 3 ),
	(20, 4 ),
	(21, 1 ),
	(21, 2 ),
	(21, 3 ),
	(21, 4 ),
	(22, 1 ),
	(22, 2 ),
	(22, 3 ),
	(22, 4 ),
	(23, 1 ),
	(23, 2 ),
	(23, 3 ),
	(23, 4 ),
	(24, 1 ),
	(24, 2 ),
	(24, 3 ),
	(24, 4 ),
	(25, 1 ),
	(25, 2 ),
	(25, 3 ),
	(25, 4 ),
	(26, 1 ),
	(26, 2 ),
	(26, 3 ),
	(26, 4 ),
	(26, 5 ),
	(27, 1 ),
	(27, 2 ),
	(27, 3 ),
	(27, 4 ),
	(27, 5 ),
	(27, 8 );
    
INSERT INTO RoomTypeRate (RoomTypeID, RateID)
VALUES (1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 23),
(12, 24),
(13, 25),
(14, 26),
(15, 27),
(16, 28),
(17, 29),
(18, 30),
(19, 31),
(20, 32);
    
INSERT INTO ReservationAddon (ReservationID, AddonID, DateAdded)
VALUES (1, 2, '2018/6/10'),
(13, 3, '2018/6/11'),
(14, 3, '2018/6/10'),
(15, 4, '2018/6/11'),
(20, 1, '2018/6/21'),
(20, 1, '2018/6/22'),
(20, 4, '2018/6/26');

INSERT INTO ReservationRoom (ReservationID, RoomID)
VALUES (1, 8),
(2, 1),
(3, 2),
(4, 3),
(5, 4),
(6, 5),
(7, 6),
(8, 7),
(9, 27),
(10, 7),
(11, 18),
(12, 19),
(13, 20),
(14, 21),
(15, 22),
(16, 23),
(17, 24),
(18, 25),
(19, 26),
(20, 27);
