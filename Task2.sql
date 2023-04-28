create database Course

create table Students(
[Id] int primary key identity(1,1),
[Name] nvarchar(50),
[Surname] nvarchar(50),
[Age] int,
[Email] nvarchar(50),
[Adress] nvarchar(50)
)
insert into Students(
[Name],
[Surname],
[Age],
[Email],
[Adress]
)values('Gultaj','Jafarova',19,'gultac@gmail.com','yasamal'),
('Fatime','Bayramova',20,'fatime@gmail.com','genclik'),
('Novreste','Aslanzade',26,'novreste@gmail.com','nesimi'),
('Lale','Quliyeva',27,'lale@gmail.com','masazir'),
('Resul','Hesenov',15,'resul@gmail.com','neftciler')

select * from Students
drop table Students

delete from Students where Students.Id=1

create table StudentsArchive(
[Id] int primary key identity(1,1),
[Name] nvarchar(50),
[Surname] nvarchar(50),
[Age] int,
[Email] nvarchar(50),
[Adress] nvarchar(50)
)


drop table StudentsArchive



create procedure usp_DeleteStudent
@Id int 
as
begin
delete from Students where Students.Id!=@Id
end


exec usp_DeleteStudent 16

create trigger trg_InsertStudent
for insert
as
begin
insert into StudentsArchive([Name],[Surname],[Age])
select Id,'Insert',GetDate() from inserted
end

select * from StudentsArchive

create table Countries(
[Id] int primary key identity(1,1),
[Name] nvarchar(50),

)
create table Cities(
[Id] int primary key identity(1,1),
[Name] nvarchar(50),
Cities.Id references Countries.Id

)

