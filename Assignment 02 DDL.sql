--Student Names: Suraj Mittal, Jay Patel
--Assessment: Assignment 02
--File: Assignment 02 DDL

DROP VIEW IF EXISTS Payment_V;
DROP VIEW IF EXISTS Car_V;
DROP TABLE IF Exists "Branch_t";
DROP TABLE IF Exists "Cars_t";
DROP TABLE IF Exists "Rental_Information";
DROP TABLE IF Exists "Payment_t";
DROP TABLE IF Exists "Customer_Details";

CREATE TABLE "Customer_Details" (
  "Cust_ID" Integer,
  "Cust_FirstName" Varchar(30),
  "Cust_LastName" Varchar(30),
  "Cust_MobileNo" bigint,
  "Cust_EmailAddress" varchar(50),
  "Cust_LicenceNo" bigint,
  PRIMARY KEY ("Cust_ID")
);

CREATE TABLE "Payment_t" (
  "Payment_ID" Integer,
  "Cust_ID" Integer,
  "Payment_amount" Integer,
  "Payment_mode" VARCHAR(10),
  "Payment_date" Date,
  PRIMARY KEY ("Payment_ID"),
  CONSTRAINT "FK_Payment_t.Cust_ID"
    FOREIGN KEY ("Cust_ID")
      REFERENCES "Customer_Details"("Cust_ID")
);

CREATE TABLE "Rental_Information" (
  "Rnt_ID" Integer,
  "Rnt_PickupDate" Date,
  "Rnt_ReturnDate" Date,
  "Rnt_FinalMeterReading" Integer,
  "Rnt_InitialMeterReading" Integer,
  "Rnt_ChargesPerMile" Integer,
  "Payment_ID" Integer,
  PRIMARY KEY ("Rnt_ID"),
	CONSTRAINT Rental_InformationFK 
	FOREIGN KEY ("Payment_ID")
	REFERENCES "Payment_t" ("Payment_ID")
);

CREATE TABLE "Cars_t" (
  "Car_ID" Integer,
  "Car_model" Varchar(30),
  "Car_make" Varchar(25),
  "Car_insuranceNo" Integer,
  "Car_NumberPlate" Varchar(10),
  "Car_Availability" Char(3),
  "Rnt_ID" Integer,
  PRIMARY KEY ("Car_ID"),
  CONSTRAINT "Cars_tFK"
    FOREIGN KEY ("Rnt_ID")
      REFERENCES "Rental_Information"("Rnt_ID")
);

CREATE TABLE "Branch_t" (
  "Branch_ID" Integer,
  "Branch_Name" Varchar(50),
  "Branch_Address" Varchar(200),
  "Car_ID" Integer,
  PRIMARY KEY ("Branch_ID"),
  CONSTRAINT "Branch_tFK" FOREIGN KEY ("Car_ID")
	REFERENCES "Cars_t"("Car_ID")
);


