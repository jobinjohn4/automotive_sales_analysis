CREATE TABLE car_sales(
Date date,
Customer_Name char(50),
Dealer_Name	char(50),
Company char(50),
Model char(50),
Year numeric,
Body_Style char(50),
Engine char(50),
Transmission char(20),
Color char(50),
Price_in_thousands numeric,
Dealer_Add char(50),
Customer_Address varchar(50),
CouncilArea char(50),	
Phone varchar(50),
Gender char(50),
Annual_Income numeric,
Dealer_Location	varchar(50),
Dealer_No varchar(50),
Dealer_Region char(50)
)

-----dropping column-------
ALTER TABLE car_sales
DROP COLUMN price_in_thousands;

ALTER TABLE car_sales
DROP COLUMN customer_address;

ALTER TABLE car_sales
DROP COLUMN dealer_location;

ALTER TABLE car_sales
DROP COLUMN dealer_no;

drop table car_sales
Select * from car_sales

-----adding column customerID-----
ALTER TABLE car_sales
ADD COLUMN sales_id SERIAL; 

UPDATE car_sales
SET sales_id=sales_id + 11000;

SELECT * FROM car_sales


-------duplicate values-----

SELECT sales_id, COUNT(*)
FROM car_sales
GROUP BY sales_id
HAVING COUNT(*) > 1


SELECT * FROM car_sales