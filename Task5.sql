Create database Company1

create table Employees(
[Id] int primary key identity(1,1),
[Name] nvarchar(50),
[Surname] nvarchar(50),
[Age] int,
[Salary] int,
[Position] nvarchar(50),
[IsDeleted] bit
)
insert into Employees(
[Name],
[Surname],
[Age],
[Salary],
[Position],
[IsDeleted]
)values('Gultaj','Jafarova',19,1000,'manager',1),
('Lale','Quliyeva',20,1600,'adminstrator',0),
('Fatime','Bayramova',22,130,'reseption',1),
('Resul','Hesenov',15,130,'manager',0)

select * from Employees

create table Countries(
[Id] int primary key identity(1,1),
[Name] nvarchar(50)
)
insert into Countries(
[Name]
)values('Azerbaijan'),
('Turkey'),
('Italy')

create table Cities(
[Id] int primary key identity(1,1),
[Name] nvarchar(50),
[CountryId] int FOREIGN KEY(Id) REFERENCES Countries(Id)
)
drop table Cities
insert into Cities(
[Name],
[CountryId]
)values('Baku',1),
('Istanbul',2),
('Milan',2)

select * from Cities

SELECT Cities.id
FROM Cities
INNER JOIN Employees
ON Cities.Id = Employees.Id;

select [Name] [CityId] from Employees where [Salary]>2000