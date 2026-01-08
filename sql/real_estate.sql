create database real_estate;   -- Step 1: Create a Database
use real_estate;
CREATE TABLE house_sales (   -- step 2 CREATE TABLE
    id BIGINT,
    date VARCHAR(20),
    price INT,
    bedrooms INT,
    bathrooms FLOAT,
    sqft_living INT,
    sqft_lot INT,
    floors FLOAT,
    waterfront INT,
    view INT,
    `condition` INT,
    grade INT,
    sqft_above INT,
    sqft_basement INT,
    yr_built INT,
    yr_renovated INT,
    zipcode INT,
    lat DOUBLE,
    `long` DOUBLE,
    sqft_living15 INT,
    sqft_lot15 INT
);
USE real_estate;

select count(*) as total_rows
from house_sales;

show columns from house_sales;

select * from house_sales
limit 10;

SELECT
    SUM(id IS NULL) AS id_nulls,
    SUM(date IS NULL) AS date_nulls,
    SUM(price IS NULL) AS price_nulls,
    SUM(bedrooms IS NULL) AS bedrooms_nulls,
    SUM(bathrooms IS NULL) AS bathrooms_nulls,
    SUM(sqft_living IS NULL) AS sqft_living_nulls,
    SUM(sqft_lot IS NULL) AS sqft_nulls,
    SUM(floors IS NULL) AS floors_nulls,
    SUM(waterfront IS NULL) AS waterfront_nulls,
    SUM(view IS NULL) AS view_nulls,
    SUM(`condition` IS NULL) AS condition_nulls,
    SUM(grade IS NULL) AS grade_nulls,
    SUM(sqft_above IS NULL) AS sqft_above_nulls,
    SUM(sqft_basement IS NULL) AS sqft_basement_nulls,
    SUM(yr_built IS NULL) AS yr_built_nulls,
    SUM(yr_renovated IS NULL) AS yr_renovated_nulls,
    SUM(zipcode IS NULL) AS zipcode_nulls,
    SUM(lat IS NULL) AS lat_nulls,
    SUM(`long` IS NULL) AS long_nulls,
    SUM(sqft_living15 IS NULL) AS sqft_living15_nulls,
    SUM(sqft_lot15 IS NULL) AS sqft_lot15_nulls
FROM house_sales;

select avg(price) as avg_price,
       min(price) as min_price,
       max(price) as max_price,
       min(grade) as min_grade,
       max(grade) as max_grade,
       min(sqft_living) as min_sqft_living,
       max(sqft_living) as max_sqft_living
from house_sales;

select bedrooms, count(*) as houses,
       avg(price) as avg_price
       from house_sales
       group by bedrooms
       order by bedrooms asc;
       
select case when sqft_living<1000 then 'small'
            when sqft_living between 1000 and 3000 then 'medium'
            else 'large'
            end as house_size,
            count(*) as houses,
            avg(price) as avg_price
            from house_sales
            group by house_size;
            
select count(*) as waterfront_houses,
       avg(price) as avg_price
       from house_sales
       where waterfront=0;
       
select count(*) as waterfront_houses,
       avg(price) as avg_price
       from house_sales
       where waterfront=1;
       
select * from house_sales order by price desc limit 10;
            
       

       

