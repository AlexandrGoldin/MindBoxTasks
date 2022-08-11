use MindBoxDatabaseSqlTaskDB

select p.Name,c.Name
from Products p
join ProductsCategories pc on p.ProductId=pc.ProductId
join Categories c on pc.CategoryId=c.CategoryId