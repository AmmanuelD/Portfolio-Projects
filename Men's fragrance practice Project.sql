--SELECT TOP (1000) [brand]
--      ,[title]
--      ,[type]
--      ,[price]
--      ,[priceWithCurrency]
--      ,[available]
--      ,[availableText]
--      ,[sold]
--      ,[lastUpdated]
--      ,[itemLocation]
--  FROM [PortfolioProjects].[dbo].[ebay_mens_perfume$]

 -- SELECT *
 --from PortfolioProjects..ebay_mens_perfume$

 --SELECT *
 --FROM PortfolioProjects..ebay_womens_perfume$

 

-- Looking at price vs sold 
-- Shows that New Jersey has the highest gross profit but texas has the highest amount of sales

SELECT DISTINCT (itemLocation), COUNT(sold) as sold, SUM(price) as price, SUM((sold*price)) as grossProfit
From PortfolioProjects..ebay_mens_perfume$
Where itemLocation like '%States%'
Group by itemLocation
order by 4 desc



--Select *
--From PortfolioProjects..ebay_mens_perfume$
--order by 8


-- Looking at brand vs itemLocation
-- Versace is NJ's best seller while Calvin Klein is TX's best seller while also being the state with the most sales

SELECT DISTINCT itemLocation, brand, MAX(sold) as totalSale
from PortfolioProjects..ebay_mens_perfume$
Where itemLocation like '%Virginia%'
Group by itemLocation, brand
order by 3 desc


-- How many total Sales

Select SUM(sold)
From PortfolioProjects..ebay_mens_perfume$




-- Look at average price for each brand
-- The most expensive Brand is Claude Marsel while the brand with the most gross profit is Versace

Select DISTINCT (brand), AVG(price) as avgPrice, SUM(sold) as avgSale, SUM((price*sold)) as grossProfit
from PortfolioProjects..ebay_mens_perfume$
group by brand
order by 2 desc

SELECT *
FROM PortfolioProjects..ebay_mens_perfume$
Where brand = 'Alexandria Fragrances'







