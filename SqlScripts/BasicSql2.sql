
select BusinessEntityID,Title,FirstName,MiddleName,LastName from Person.Person

select BusinessEntityID,Title,FirstName,MiddleName,LastName,Title +' '+FirstName+' '+MiddleName+' '+LastName as FullName  from Person.Person

select BusinessEntityID, ISNULL(Title,'')+' '+FirstName+' '+ISNULL(MiddleName,'')+' '+ISNULL(LastName,'') as FullName  from Person.Person

select CAST(BusinessEntityID as varchar)+ ' : '+ISNULL(Title,'')+' '+FirstName+' '+ISNULL(MiddleName,'')+' '+ISNULL(LastName,'') as FullName  from Person.Person

select 10/5 as HesapSonucu

SELECT SpecialOfferID, Description,MaxQty,DiscountPct, ISNULL(MaxQty,10) * DiscountPct AS IndirimMiktari FROM Sales.SpecialOffer;

SELECT ProductDescriptionId,Description,LEN(Description) as KarakterSayisi FROM Production.ProductDescription where ProductDescriptionId in(3,4,5,8)

SELECT ProductDescriptionId,Description, substring(Description,5,10) as Description FROM Production.ProductDescription where ProductDescriptionId in(3,4,5,8)

SELECT ProductDescriptionId,Description, upper(substring(Description,5,10)) as BuyukKarakter, lower(substring(Description,5,10)) as KucukKarakter FROM Production.ProductDescription where ProductDescriptionId in(3,4,5,8)

select ProductDescriptionId,Description, replace(Description,'ch','Sedat ') as Donusum from Production.ProductDescription where ProductDescriptionId in(3,4,5,8) 

select ModifiedDate,GETDATE() as SuankiZaman,DATEDIFF(YEAR,ModifiedDate,GETDATE()) as FarkYil,DATEDIFF(MONTH,ModifiedDate,GETDATE()) as FarkAy,DATEDIFF(Day,ModifiedDate,GETDATE()) as FarkGun from Production.ProductDescription where ProductDescriptionId in(3,4,5,8)