/****** Script for SelectTopNRows command from SSMS  ******/
SELECT c.CustomerKey,
      c.FirstName AS [First Name],
      c.LastName AS [Last Name],
	  c.FirstName + ' ' + c.LastName AS [Full Name],
      CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
	  c.DateFirstPurchase AS DateFirstPurchase

FROM 
	DimCustomer AS c
		LEFT JOIN 
	DimGeography AS g ON g.GeographyKey = c.GeographyKey
ORDER BY 
	CustomerKey ASC