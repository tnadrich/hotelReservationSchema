DROP DATABASE IF EXISTS HotelReservations;
CREATE DATABASE IF NOT EXISTS HotelReservations;
USE HotelReservations;

CREATE TABLE PromotionType (
	PromotionID INT NOT NULL AUTO_INCREMENT,
    PromotionType VARCHAR(45),
    PRIMARY KEY (PromotionID)
);

CREATE TABLE DiscountType (
	DiscountTypeID INT NOT NULL AUTO_INCREMENT,
    DiscountType VARCHAR(45),
    PRIMARY KEY (DiscountTypeID)
);

CREATE TABLE Promotion (
	PromotionID INT NOT NULL AUTO_INCREMENT,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    PromotionCode INT,
    PromotionTypeID INT NOT NULL,
    DiscountTypeID INT NOT NULL,
    PRIMARY KEY (PromotionID)
);

CREATE TABLE Location (
	LocationID INT NOT NULL AUTO_INCREMENT,
    Location VARCHAR(45) NOT NULL,
    PRIMARY KEY (LocationID)
);

CREATE TABLE GuestDetails (
	GuestDetailsID INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(45) NOT NULL,
    LastName VARCHAR(45) NOT NULL,
    GuestAge INT NOT NULL,
    PRIMARY KEY (GuestDetailsID)
);

CREATE TABLE ReservationGuestDetails (
	ReservationID INT NOT NULL,
    GuestDetailsID INT NOT NULL,
    PRIMARY KEY (ReservationID, GuestDetailsID)
);

CREATE TABLE RATE (
	RateID INT NOT NULL AUTO_INCREMENT,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    RateType VARCHAR(45) NOT NULL,
    Rate DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (RateID)
);

CREATE TABLE AmenityRate (
	AmenityID INT NOT NULL,
    RateID INT NOT NULL,
    PRIMARY KEY (AmenityID, RateID)
);

CREATE TABLE Amenity (
	AmenityID INT NOT NULL AUTO_INCREMENT,
    AmenityType VARCHAR(45) NOT NULL,
    PRIMARY KEY (AmenityID)
);

CREATE TABLE RoomAmenity (
	RoomID INT NOT NULL,
    AmenityID INT NOT NULL,
    PRIMARY KEY (RoomID, AmenityID)
);

CREATE TABLE RoomTypeRate (
	RoomTypeID INT NOT NULL,
    RateID INT NOT NULL,
    PRIMARY KEY (RoomTypeID, RateID)
);

CREATE TABLE RoomType (
	RoomTypeID INT NOT NULL AUTO_INCREMENT,
    RoomType VARCHAR(45) NOT NULL,
    OccupancyLimit INT NOT NULL,
    PRIMARY KEY (RoomTypeID)
);

CREATE TABLE Room (
	RoomID INT NOT NULL AUTO_INCREMENT,
    RoomNumber INT NOT NULL,
    Floor INT NOT NULL,
    RoomTypeID INT NOT NULL,
    PRIMARY KEY (RoomID)
);

CREATE TABLE ReservationRoom (
	ReservationID INT NOT NULL,
    RoomID INT NOT NULL,
    PRIMARY KEY (ReservationID, RoomID)
);

CREATE TABLE Customer (
	CustomerID INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(45) NOT NULL,
    LastName VARCHAR(45) NOT NULL,
    Phone VARCHAR(45) NOT NULL,
    Email VARCHAR(45) NOT NULL,
    PRIMARY KEY(CustomerID)
);

CREATE TABLE AddonRate (
	AddonID INT NOT NULL,
    RateID INT NOT NULL,
    PRIMARY KEY (AddonID, RateID)
);

CREATE TABLE Addon (
	AddonID INT NOT NULL AUTO_INCREMENT,
    AddonType VARCHAR(45) NOT NULL,
    PRIMARY KEY (AddonID)
);

CREATE TABLE ReservationAddon (
	ReservationID INT NOT NULL,
    AddonID INT NOT NULL,
    DateAdded DATE,
    PRIMARY KEY (ReservationID, AddonID, DateAdded)
);

CREATE TABLE PaymentType (
	PaymentTypeID INT NOT NULL AUTO_INCREMENT,
    PaymentType VARCHAR(45) NULL,
    PRIMARY KEY (PaymentTypeID)
);

CREATE TABLE LineItems (
	LineItemsID INT NOT NULL AUTO_INCREMENT,
    ChargeType VARCHAR(45) NOT NULL,
    RoomNumber INT NOT NULL,
    Quantity INT NOT NULL,
    Cost DECIMAL(10,2) NOT NULL,
    Total DECIMAL(10,2) NOT NULL,
    InvoiceID INT NOT NULL,
    PRIMARY KEY (LineItemsID)
);

CREATE TABLE Reservation (
	ReservationID INT NOT NULL AUTO_INCREMENT,
    StartDate DATE,
    EndDate DATE,
    CustomerID INT NOT NULL,
    PromotionID INT,
    LocationID INT NOT NULL,
    PRIMARY KEY (ReservationID)
);

CREATE TABLE Invoice (
	InvoiceID INT NOT NULL AUTO_INCREMENT,
    TotalAddonFees DECIMAL(10,2),
    TotalAmenityCost DECIMAL(10,2),
    TotalRoomCost DECIMAL(10,2) NOT NULL,
    Tax DECIMAL(10,2) NOT NULL,
    GrandTotal DECIMAL(10,2) NOT NULL,
    PromotionDiscount VARCHAR(45),
    InvoiceDate DATE DEFAULT NULL,
    PaymentTypeID INT,
    ReservationID INT NOT NULL,
    PRIMARY KEY (InvoiceID)
);

ALTER TABLE Promotion
ADD CONSTRAINT fk_PromotionType_Promotion
FOREIGN KEY (PromotionTypeID) REFERENCES PromotionType (PromotionID);

ALTER TABLE Promotion
ADD CONSTRAINT fk_DiscountType_Promotion
FOREIGN KEY (DiscountTypeID) REFERENCES DiscountType (DiscountTypeID);

ALTER TABLE LineItems
ADD CONSTRAINT fk_Invoice_LineItems
FOREIGN KEY (InvoiceID) REFERENCES Invoice (InvoiceID);

ALTER TABLE Invoice
ADD CONSTRAINT fk_PaymentType_Invoice
FOREIGN KEY (PaymentTypeID) REFERENCES PaymentType (PaymentTypeID);

ALTER TABLE Invoice
ADD CONSTRAINT fk_Reservation_Invoice
FOREIGN KEY (ReservationID) REFERENCES Reservation (ReservationID);

ALTER TABLE ReservationGuestDetails
ADD CONSTRAINT fk_Reservation_ReservationGuestDetails
FOREIGN KEY (ReservationID) REFERENCES Reservation (ReservationID);

ALTER TABLE ReservationGuestDetails
ADD CONSTRAINT fk_GuestDetails_ReservationGuestDetails
FOREIGN KEY (GuestDetailsID) REFERENCES GuestDetails (GuestDetailsID);

ALTER TABLE AmenityRate
ADD CONSTRAINT fk_Amenity_AmenityRate
FOREIGN KEY (AmenityID) REFERENCES Amenity (AmenityID);

ALTER TABLE AmenityRate
ADD CONSTRAINT fk_Rate_AmenityRate
FOREIGN KEY (RateID) REFERENCES Rate (RateID);

ALTER TABLE RoomAmenity
ADD CONSTRAINT fk_Room_RoomAmenity
FOREIGN KEY (RoomID) REFERENCES Room (RoomID);

ALTER TABLE RoomAmenity
ADD CONSTRAINT fk_Amenity_RoomAmenity
FOREIGN KEY (AmenityID) REFERENCES Amenity (AmenityID);

ALTER TABLE RoomTypeRate
ADD CONSTRAINT fk_RoomType_RoomTypeRate
FOREIGN KEY (RoomTypeID) REFERENCES RoomType (RoomTypeID);

ALTER TABLE RoomTypeRate
ADD CONSTRAINT fk_Rate_RoomTypeRate
FOREIGN KEY (RateID) REFERENCES Rate (RateID);

ALTER TABLE Room
ADD CONSTRAINT fk_RoomType
FOREIGN KEY (RoomTypeID) REFERENCES RoomType (RoomTypeID);

ALTER TABLE ReservationRoom
ADD CONSTRAINT fk_Reservation_ReservationRoom
FOREIGN KEY (ReservationID) REFERENCES Reservation (ReservationID);

ALTER TABLE ReservationRoom
ADD CONSTRAINT fk_Room_ReservationRoom
FOREIGN KEY (RoomID) REFERENCES Room (RoomID);

ALTER TABLE AddonRate
ADD CONSTRAINT fk_Addon_AddonRate
FOREIGN KEY (AddonID) REFERENCES Addon (AddonID);

ALTER TABLE AddonRate
ADD CONSTRAINT fk_Rate_AddonRate
FOREIGN KEY (RateID) REFERENCES Rate (RateID);

ALTER TABLE ReservationAddon
ADD CONSTRAINT fk_Reservation_ReservationAddon
FOREIGN KEY (ReservationID) REFERENCES Reservation (ReservationID);

ALTER TABLE ReservationAddon
ADD CONSTRAINT fk_Addon_ReservationAddon
FOREIGN KEY (AddonID) REFERENCES Addon (AddonID);

ALTER TABLE Reservation
ADD CONSTRAINT fk_Customer_Reservation
FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID);

ALTER TABLE Reservation
ADD CONSTRAINT fk_Promotion_Reservation
FOREIGN KEY (PromotionID) REFERENCES Promotion (PromotionID);

ALTER TABLE Reservation
ADD CONSTRAINT fk_Location_Reservation
FOREIGN KEY (LocationID) REFERENCES Location (LocationID);





