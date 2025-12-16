select * from BlinkIT_data

select cast(sum(total_sales)/1000000 as decimal(10,2)) as total_sales_millions
from blinkit_data
where outlet_establishment_year = 2022

select cast(avg(total_sales) as decimal(10,1)) as avg_sales from blinkit_data
where outlet_establishment_year = 2022

select count(*) as no_of_items from blinkit_data
where outlet_establishment_year = 2022

select cast(avg(rating) as decimal(10,2)) as avg_rating from blinkit_data

select Outlet_Establishment_Year,
		cast(sum(total_sales) as decimal(10,2)) as total_sales,
		cast(avg(total_sales) as decimal(10,1)) as avg_sales,
		count(*) as no_of_items,
		cast(avg(rating) as decimal(10,2)) as avg_rating
from blinkit_data
group by outlet_Establishment_Year
order by total_sales desc

SELECT 
    Outlet_Size, 
    CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales,
    CAST((SUM(Total_Sales) * 100.0 / SUM(SUM(Total_Sales)) OVER()) AS DECIMAL(10,2)) AS Sales_Percentage
FROM blinkit_data
GROUP BY Outlet_Size
ORDER BY Total_Sales DESC;

select Outlet_type,
		cast(sum(total_sales) as decimal(10,2)) as total_sales,
		CAST((SUM(Total_Sales) * 100.0 / SUM(SUM(Total_Sales)) OVER()) AS DECIMAL(10,2)) AS Sales_Percentage,
		cast(avg(total_sales) as decimal(10,1)) as avg_sales,
		count(*) as no_of_items,
		cast(avg(rating) as decimal(10,2)) as avg_rating
from blinkit_data
group by Outlet_type
order by total_sales desc


SELECT *
FROM BlinkIT_data
FOR SYSTEM_TIME ALL
WHERE ID = 1;


USE BlinkITdb;
GO
SELECT *
FROM BlinkIT_data;