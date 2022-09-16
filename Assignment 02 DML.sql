--Student Names: Suraj Mittal, Jay Patel
--Assessment: Assignment 02
--File: Assignment 02 DML

INSERT INTO "Customer_Details" VALUES (4001, 'Margaret', 'Jones', 4162773401, 'margaret1@.com', 134711320);
INSERT INTO "Customer_Details" VALUES (4002, 'Colleen', 'Wiley', 4168886588, 'colleenk3@.com', 148752345);
INSERT INTO "Customer_Details" VALUES (4003, 'Donald', 'Watkins', 40331877659, 'donalda4@.com', 137892348);
INSERT INTO "Customer_Details" VALUES (4004, 'Jerry', 'Cordero', 7806819462, 'jerryc5@.com', 137264334);
INSERT INTO "Customer_Details" VALUES (4005, 'Randy', 'Thompson', 5145673479, 'randyt2@.com', 139824339);

INSERT INTO "Payment_t" VALUES (2001, 4001, 8580, 'Cash', '2020-09-16');
INSERT INTO "Payment_t" VALUES (2002, 4002, 15184, 'E-Banking', '2020-11-05');
INSERT INTO "Payment_t" VALUES (2003, 4003, 1494, 'Cash', '2021-01-15');
INSERT INTO "Payment_t" VALUES (2004, 4004, 30349, 'Debit Card', '2021-03-01');
INSERT INTO "Payment_t" VALUES (2005, 4005, 8951, 'Cash', '2021-03-21');

INSERT INTO "Rental_Information"  VALUES (5001,'2020-09-15','2020-09-16','22976','21546','6',2001); 
INSERT INTO "Rental_Information"  VALUES (5002,'2020-11-01','2020-11-05','47122','45224','8',2002);
INSERT INTO "Rental_Information"  VALUES (5003,'2021-01-13','2021-01-15','31600','31434','9',2003);
INSERT INTO "Rental_Information"  VALUES (5004,'2021-02-20','2021-03-01','63000','60241','11',2004);
INSERT INTO "Rental_Information"  VALUES (5005,'2021-03-17','2021-03-21','57234','56239','9',2005);

INSERT INTO "Cars_t"  VALUES(3001,'Toyota','Corolla',1234567,'2T41 O94B','YES',5001);
INSERT INTO "Cars_t"  VALUES(3002,'Honda','Civic',1098765,'X4VY 3J71','NO',5002);
INSERT INTO "Cars_t"  VALUES(3003,'Hyundai','Sonata',4521411,'FG65 J879','YES',5003);
INSERT INTO "Cars_t"  VALUES(3004,'Jeep','Compass',5721564,'Q944 IJH6','NO',5004);
INSERT INTO "Cars_t"  VALUES(3005,'KIA','Seltos',9761421,'186R THB3','YES',5005);

INSERT INTO "Branch_t" VALUES (1001, 'North', '408 Nootka Street',3001); 
INSERT INTO "Branch_t" VALUES (1002, 'South', '1545 St George Street',3002);
INSERT INTO "Branch_t" VALUES (1003, 'East', '1767 Paris St',3003);
INSERT INTO "Branch_t" VALUES (1004, 'West', '1884 9th Ave',3004);
INSERT INTO "Branch_t" VALUES (1005, 'Centeral', '4882 Montreal Road',3005);













