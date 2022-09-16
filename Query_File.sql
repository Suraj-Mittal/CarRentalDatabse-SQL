SELECT *
FROM "Branch_t";

SELECT *
FROM "Cars_t";

SELECT *
FROM "Customer_Details";

SELECT *
FROM "Payment_t";

SELECT *
FROM "Rental_Information";

-- Meta Data of the tables

SELECT * 
from information_schema.columns WHERE table_name ='Branch_t';

SELECT * 
from information_schema.columns WHERE table_name ='Cars_t';

SELECT * 
from information_schema.columns WHERE table_name ='Customer_Detials';

SELECT * 
from information_schema.columns WHERE table_name ='Payment_t';

SELECT * 
from information_schema.columns WHERE table_name ='Rental_Information';


--LEFT OUTER JOIN: here Customer_Details table left outer joins the Payment_t table using the Cust_ID due
--it is primary key in Customer_Details table and foreign key in Payment_t

SELECT C."Cust_ID",C."Cust_FirstName",C."Cust_LastName",C."Cust_MobileNo",P."Payment_amount",P."Payment_mode",P."Payment_date"
FROM "Customer_Details" C LEFT OUTER JOIN "Payment_t" P
ON C."Cust_ID" = P."Cust_ID";

-- RIGHT OUTER JOIN: here Branch_t table right outer joins the Cars_t table using the Car_ID due
--it is primary key in Cars_t table and foreign key in Branch_t

SELECT C."Car_ID",C."Car_model",C."Car_make",C."Car_Availability",P."Branch_Name",P."Branch_Address"
FROM "Cars_t" C RIGHT OUTER JOIN "Branch_t" P
ON C."Car_ID" = P."Car_ID";

-- UNION: In this UNION, the information of car like model and make UNIONS with the Branch name and address

SELECT "Car_ID","Car_model","Car_make"
FROM "Cars_t"
UNION
SELECT "Branch_ID","Branch_Name","Branch_Address"
FROM "Branch_t";

-- VIEW Number 1

CREATE VIEW Payment_V AS
SELECT *
FROM "Branch_t"
WHERE "Car_ID" >=3002;

--VIEW Number 2

CREATE VIEW Car_V AS
SELECT *
FROM "Cars_t"
WHERE "Car_Availability"='YES';
