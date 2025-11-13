#Retrieve all columns from the sales dataset?
#Retrieved the all the columns selected from wallmart sales
SELECT * FROM wallmartsales.`walmart sales`;

#Select only Invoice ID, Branch, City, and Total?
#Select the Invoice ID, Branch, city and Total from the wallmart sales data
SELECT 
    `Invoice ID`, 
    `Branch`, 
    `City`, 
    `Total`
FROM wallmartsales.`walmart sales`;

#Get the first 10 sales records?
#We have selected the specific 10 sales record from walmart sales as ascending orders
SELECT * 
FROM wallmartsales.`walmart sales`
ORDER BY `Date` ASC
LIMIT 10;

#Show all distinct Product line values?
#We have selected the distinct the product line column from the walmart sales
SELECT DISTINCT `Product line`
FROM wallmartsales.`walmart sales`;

#List all distinct Payment methods used?
#We have selected the distinct the payment column from the walmart sales
SELECT DISTINCT `Payment`
FROM wallmartsales.`walmart sales`;

#Count how many sales transactions were made?
#We have selected the COUNT function as total transactions from the walmart sales table
SELECT COUNT(*) AS total_transactions
FROM wallmartsales.`walmart sales`;

#Count the number of unique Invoice IDs?
#We have selected the COUNT fucntion with distinct the INVOICE ID as unique invoices from walmart sales
SELECT COUNT(DISTINCT `Invoice ID`) AS unique_invoices
FROM wallmartsales.`walmart sales`;

#Find the minimum and maximum Unit price?
#We have selected the MIN and MAX function of unit price as as Min and Max value from the walmart sales
SELECT 
    MIN(`Unit price`) AS min_unit_price,
    MAX(`Unit price`) AS max_unit_price
FROM wallmartsales.`walmart sales`;

#Show the average Quantity purchased?
#We have selected the AVG function as average quantity from the walmart sales
SELECT AVG(Quantity) AS average_quantity
FROM wallmartsales.`walmart sales`;

#Display the total sales (SUM(Total)) across all branches?
#We have selected the Total sum of the sales from the walmart sales
SELECT SUM(Total) AS total_sales
FROM wallmartsales.`walmart sales`;

#Get all sales made in Yangon?
#We have separated the sales data from the city of Yangon from where function
SELECT *
FROM wallmartsales.`walmart sales`
WHERE City = 'Yangon';

#Find all transactions where Gender = 'Female' and Payment = 'Cash'.?
#We have separated the gender wise Payments mode has been described from walmart sales
SELECT *
FROM wallmartsales.`walmart sales`
WHERE Gender = 'Female' AND Payment = 'Cash';

#Retrieve sales where Quantity > 5?
#We have fetched the sales data which is more than 5 quantity
SELECT *
FROM wallmartsales.`walmart sales`
WHERE Quantity > 5;

#Get transactions where Total is between 300 and 600?
#We have explained the Total transaction amount between 300 to 600 from the walmart sales with where and between function
SELECT *
FROM wallmartsales.`walmart sales`
WHERE Total BETWEEN 300 AND 600;

#Show all sales from March 2019?
#We have shown the data which is from the year of 2019 with march month which means 3rd month of the year walmart sales 
SELECT *
FROM wallmartsales.`walmart sales`
WHERE YEAR(Date) = 2019 AND MONTH(Date) = 3;

#List transactions that used Ewallet as payment?
#We have fetched the transaction happened from the Ewallet payment method with the Where function
SELECT *
FROM wallmartsales.`walmart sales`
WHERE Payment = 'Ewallet';

#Find all sales where Product line = 'Health and beauty'?
#We have found the specific product line of health and beauty from the walmart sales
SELECT *
FROM wallmartsales.`walmart sales`
WHERE `Product line` = 'Health and beauty';

#Show all transactions where Rating >= 9?
#We have shown the transactions where the rating of more than or equal to 9 
SELECT *
FROM wallmartsales.`walmart sales`
WHERE `Rating` >= 9;

#Count the number of transactions per Branch?
#We have fetched the from the walmart sales transactions count as branch count
SELECT `Branch`, COUNT(*) AS Transaction_Count
FROM wallmartsales.`walmart sales`
GROUP BY `Branch`;

#Find the average Total per City?
#We have found the average total and city from the group by the city
SELECT `City`, AVG(`Total`) AS Average_Total
FROM wallmartsales.`walmart sales`
GROUP BY `City`;

#Calculate the total sales (SUM(Total)) per Payment method?
#We have calculate the total sales from the walmart sales payment group of payment mode column 
SELECT `Payment`, SUM(`Total`) AS Total_Sales
FROM wallmartsales.`walmart sales`
GROUP BY `Payment`;

#Find the highest Unit price in each Product line?
#We have found the highest unit price from walmart sales with each product line column
SELECT `Product line`, MAX(`Unit price`) AS Highest_Unit_Price
FROM wallmartsales.`walmart sales`
GROUP BY `Product line`;

#Get the average Rating given by Customer type?
#We have fetched the details of average ratings with the customer type from the walmart sales
SELECT `Customer type`, AVG(`Rating`) AS Average_Rating
FROM wallmartsales.`walmart sales`
GROUP BY `Customer type`;

#Find the number of male vs. female customers?
#We have found the customer count of male and female gender from the walmart sales data
SELECT `Gender`, COUNT(*) AS Customer_Count
FROM wallmartsales.`walmart sales`
GROUP BY `Gender`;

#Show the total quantity sold per Product line?
#We have shown the each product line total quantity as a Total quantity which is sold from the walmart sales
SELECT `Product line`, SUM(Quantity) AS Total_Quantity_Sold
FROM `walmart sales`
GROUP BY `Product line`;

#Find the top 3 product lines by total sales?
#We have found the top 3 product lines with the total sales from the walmart sales which limits having 3 and ordered as descending
SELECT 
    `Product line`,
    SUM(Total) AS Total_Sales
FROM `walmart sales`
GROUP BY `Product line`
ORDER BY Total_Sales DESC
LIMIT 3;

#Find all sales where Total is above the average total of all transactions?
#We have found the all the sales which having total and is above the average total of the all transaction made from walmart sales
SELECT *
FROM `walmart sales`
WHERE Total > (SELECT AVG(Total) FROM `walmart sales`);

#Show transactions with a Rating higher than the average rating?
#We have shown the transaction with the rating which higher than the average rating from the walmart sales
SELECT *
FROM `walmart sales`
WHERE Rating > (SELECT AVG(Rating) FROM `walmart sales`);

#Retrieve invoices where gross income is greater than the average gross income?
#We have fetched the gross income which is greater than the average gross income of the walmart sales 
SELECT *
FROM `walmart sales`
WHERE `gross income` > (SELECT AVG(`gross income`) FROM `walmart sales`);

#Find customers who purchased more than the average Quantity?
#We have found the average quantity who is purchased more than the average quantity of the selected walmart sales 
SELECT *
FROM `walmart sales`
WHERE Quantity > (SELECT AVG(Quantity) FROM `walmart sales`);

#Show the number of transactions per day?
#We have shown the number of transaction per day as number of transactions from the walmart sales as per the groups and orders
SELECT 
    Date,
    COUNT(*) AS Number_of_Transactions
FROM `walmart sales`
GROUP BY Date
ORDER BY Date;

#Find the busiest day (most transactions)?
#We have found the specific day which is most of the transaction happened which used as date, Descending orders and limit functions has been used 
SELECT 
    Date,
    COUNT(*) AS Number_of_Transactions
FROM `walmart sales`
GROUP BY Date
ORDER BY Number_of_Transactions DESC
LIMIT 1;

#Find sales made before 12:00 PM (morning sales)?
#We have found the sales made by before morning 12.00 PM with the TIME zone
SELECT *
FROM `walmart sales`
WHERE TIME(`Time`) < '12:00:00';

#Find the number of transactions in each month?
#We have found the transaction in each month of the walmart sales made with the month, count and month(date).
SELECT 
    MONTH(Date) AS Month,
    COUNT(*) AS Number_of_Transactions
FROM `walmart sales`
GROUP BY MONTH(Date)
ORDER BY Month;

#Extract year, month, and day from the Date?
#We have extracted the data from the walmart sales which is year, month, and date
SELECT 
    Date,
    YEAR(Date) AS Year,
    MONTH(Date) AS Month,
    DAY(Date) AS Day
FROM `walmart sales`;

#Rank product lines based on total revenue (use RANK())?
#We have ranked the each product line based on the total revenue by using the RANK method in the walmart sales
SELECT 
    `Product line`,
    SUM(Total) AS Total_Revenue,
    RANK() OVER (ORDER BY SUM(Total) DESC) AS Revenue_Rank
FROM `walmart sales`
GROUP BY `Product line`
ORDER BY Revenue_Rank;

#Find the top 5 invoices by highest Total?
#We have found the top 5 invoices by the highest total amount by descending orders with the limit in walmart sales
SELECT *
FROM `walmart sales`
ORDER BY Total DESC
LIMIT 5;

#Calculate the cumulative sales (SUM(Total) OVER (ORDER BY Date))?
#We have calculated the cumulative sum of sales and order by the date from the walmart sales
SELECT 
    Date,
    Total,
    SUM(Total) OVER (ORDER BY Date) AS Cumulative_Sales
FROM `walmart sales`
ORDER BY Date;

#Find the branch with the highest average Rating?
#We have found the branch with the highest average ratings from the walmart sales with the descending format we have explained
SELECT 
    Branch,
    AVG(Rating) AS Average_Rating
FROM `walmart sales`
GROUP BY Branch
ORDER BY Average_Rating DESC
LIMIT 1;

#Create a pivot-style query showing total sales per Branch and Product line?
#We have created the pivot tables for this query with the total sales of each branch and product line from the walmart sales
SELECT 
    Branch,
    SUM(CASE WHEN `Product line` = 'Health and beauty' THEN Total ELSE 0 END) AS Health_and_beauty,
    SUM(CASE WHEN `Product line` = 'Electronic accessories' THEN Total ELSE 0 END) AS Electronic_accessories,
    SUM(CASE WHEN `Product line` = 'Home and lifestyle' THEN Total ELSE 0 END) AS Home_and_lifestyle,
    SUM(CASE WHEN `Product line` = 'Sports and travel' THEN Total ELSE 0 END) AS Sports_and_travel,
    SUM(CASE WHEN `Product line` = 'Food and beverages' THEN Total ELSE 0 END) AS Food_and_beverages,
    SUM(CASE WHEN `Product line` = 'Fashion accessories' THEN Total ELSE 0 END) AS Fashion_accessories,
    SUM(Total) AS Total_Sales
FROM `walmart sales`
GROUP BY Branch;
