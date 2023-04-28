create database Academy

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
[Name]
[CountryId]
)values('Baku',1),
('Istanbul',2),
('Milan',2)
select * from Cities

create Table Students1(
[Id] int primary key identity(1,1),
[FullName] nvarchar(50),
[Email] nvarchar,
[Age] int,
[Adress] nvarchar(50),
[Phone] int,
[CityId] int FOREIGN KEY(Id) REFERENCES Cities(Id)
)
insert into Students1(
[FullName],
[Email],
[Age],
[Adress],
[Phone],
[CityId]
)values('Gultac Ceferova','gultac@gmail.com',19,'yasamal',12344,1),
('Fatime Bayramova','fatime@gmail.com',20, 'genclik',4224,2),
('Lale Quliyeva','lale@gmail.com',27,'nesimi',12344,3)

select * from Students1

create table Rooms(
[Id] int primary key identity(1,1),
[Name] nvarchar(50),
[Capacity] int
)
insert into Rooms(
[Name],
[Capacity]
)values('Saturn',300),
('Neptun',400)


create table Educations(
[Id] int primary key identity(1,1),
[Name] nvarchar(50),
)
insert into Educations(
[Name]
)values('Frontend'),
('Backend'),
('Design')

create table Groups(
[Id] int primary key identity(1,1),
[Name] nvarchar(50),
[Capacity] int,
[RoomId]  int FOREIGN KEY(Id) REFERENCES Rooms(Id),
[EducationId]  int FOREIGN KEY(Id) REFERENCES Educations(Id)
)
drop table Groups

insert into Groups(
[Name],
[Capacity],
[RoomId],
[EducationId]
)values('P414',100,1,2),
('P444',150,3,4),
('P135',160,5,6)

create table Teachers(
[Id] int primary key identity(1,1),
[Name] nvarchar(50),
[Surname] nvarchar(50),
[Age] int,
[Email] nvarchar(50),
[Salary] int,
[CityId] int FOREIGN KEY(Id) REFERENCES Cities(Id)

)
drop table Teachers

insert into Teachers(
[Name],
[Surname],
[Age],
[Email],
[Salary],
[CityId]
)values('Resul','Hesenov',15,'resul@gmail.com',1500,1),
('Novreste','Aslanzade',25,'novreste@gmail.com',1700,2),
('Musa','Afandiyev',19,'musa@gmail.com',1900,3),
('Anar','Hesenov',37,'anar@gmail.com',2200,4)
