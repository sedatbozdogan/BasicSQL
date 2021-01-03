
select *from Person.Person

select BusinessEntityID,FirstName,LastName from Person.Person

select BusinessEntityID,JobTitle,LoginID from HumanResources.Employee where JobTitle='Design Engineer'

select BusinessEntityID,FirstName,MiddleName,LastName from Person.Person where MiddleName='S'

select FirstName,LastName,MiddleName,ModifiedDate from Person.Person  where ModifiedDate='2013-05-29'

select BusinessEntityID,JobTitle from HumanResources.Employee where JobTitle <> 'Design Engineer'

select BusinessEntityID,FirstName,MiddleName,LastName,ModifiedDate from Person.Person where ModifiedDate between '2013-05-01' and '2013-05-31'

select BusinessEntityID,FirstName,MiddleName,LastName,ModifiedDate from Person.Person where ModifiedDate not between '2013-05-01' and '2013-05-31'

select FirstName,LastName,ModifiedDate from Person.Person where FirstName like 'Ra%'

select BusinessEntityID,FirstName,MiddleName from Person.Person where MiddleName like '%[E,P]%'

select BusinessEntityID,FirstName from Person.Person where FirstName like 'K%M'

select BusinessEntityID,FirstName,MiddleName,LastName,ModifiedDate from Person.Person where ModifiedDate not between '2013-05-01' and '2013-05-31' and MiddleName is not null

select BusinessEntityID,FirstName,MiddleName,LastName,ModifiedDate from Person.Person where ModifiedDate not between '2013-05-01' and '2013-05-31' and MiddleName is not null and FirstName in('Ken','Terri','Kim')
