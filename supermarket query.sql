Select Payment,
			COUNT(Case When [Total Range] = 'Expensive' Then 1 end) as 'Expensive',
			Count(Case When [Total Range] = 'Regular' Then 1 end) as 'Regular',
			Count(Case When [Total Range] = 'Cheap' Then 1 end) as 'Cheap'
from PortfolioProjects..['Final Supermarket Sales$']
Group by Payment

Select [Customer Type],
		COUNT(Case When City = 'Yangon' Then 1 end) as 'Yangon',
		COUNT(Case When City = 'Naypyitaw' Then 1 end) as 'Naypyitaw',
		COUNT(Case When City = 'Mandalay' Then 1 end) as 'Mandalay'
from PortfolioProjects..['Final Supermarket Sales$']
Group by [Customer type]

