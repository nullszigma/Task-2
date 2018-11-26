SELECT
	 p.Name AS Product
	,c.Name AS Category
FROM Product p
LEFT JOIN ProductCategories pc 
	ON p.Id = pc.ProductId
LEFT JOIN Category c 
	ON pc.CategoryId = c.Id