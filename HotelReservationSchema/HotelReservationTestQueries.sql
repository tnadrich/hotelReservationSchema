USE HotelReservations;

-- Query that returns 3 most expensive bills upcoming next month

SELECT StartDate, EndDate, FirstName, LastName, Phone, Email, TotalAddonFees, TotalAmenityCost, TotalRoomCost, Tax, GrandTotal, PromotionDiscount, InvoiceDate, PaymentType
FROM Reservation
INNER JOIN Customer ON Customer.CustomerID = Reservation.CustomerID
INNER JOIN Invoice ON Invoice.ReservationID = Reservation.ReservationID
LEFT JOIN PaymentType ON PaymentType.PaymentTypeID = Invoice.PaymentTypeID
WHERE InvoiceDate BETWEEN '2018-07-01' AND '2018-07-31'
ORDER BY GrandTotal DESC
LIMIT 0,3;

-- Query that returns rooms that do not contain a specific amenity

SELECT Amenity.AmenityType, Room.RoomNumber
FROM RoomAmenity
INNER JOIN Amenity ON Amenity.AmenityID = RoomAmenity.AmenityID
INNER JOIN Room ON Room.RoomID = RoomAmenity.RoomID
WHERE AmenityType NOT LIKE 'Pull-out Couch';

-- Query that returns all the rooms reserved for a particular customer

SELECT Customer.FirstName, Customer.LastName, Reservation.StartDate, Reservation.EndDate, Room.RoomNumber
FROM Customer
INNER JOIN Reservation ON Reservation.CustomerID = Customer.CustomerID
INNER JOIN ReservationRoom ON ReservationRoom.ReservationID = Reservation.ReservationID
INNER JOIN Room ON Room.RoomID = ReservationRoom.RoomID
WHERE FirstName LIKE 'Talya' AND LastName LIKE 'Bunclark';
