CREATE DATABASE PB101
use PB101
CREATE TABLE Groups(
    [Id] int,
    [Name] nvarchar(50)
)

CREATE TABLE Students(
    [Id] int,
    [Name] nvarchar(50),
    [Surname] nvarchar(50),
    [Age] int 
)

drop table Groups

alter table Students
add [Address] nvarchar(200)

alter table Students
drop column [Address]

EXEC sp_rename MyStudents,Students

EXEC sp_rename 'Students.Lastname',Surname

insert into  Students([Id],[Name],[Surname],[Age])
values (2,'Ilqar','Shiriyev',26 ),
       (3,'Reshad','Agayev',21 ),
       (4,'Kamran','Muradov',24 ),
       (5,'Hacixan','Hacixanov',19 ),
       (6,'Zeyqem','Ashurov',39 )

delete from Students where[Id]=2

select * from Students

insert into  Students([Id],[Name],[Surname],[Age])
values(7,'Behruz','Eliyev',37 )

update Students
set [Age]=25
where [Id]=5

select [Name],[Surname] from Students

select [Age] as 'Student age' from Students

select Count(*) as 'Students count' from Students

select AVG([Age]) from Students

select Sum([Age]) as 'Student age sum' from Students

select MIN([Age]) as 'Students min age' from Students

select MAX([Age]) as 'Students max age' from Students

select * from Students where [Id]=3

select * from Students where [Id]>3

select * from Students where [Id]>2 and [Id]<5

select * from students where [Age] BETWEEN 25 and 38

select * from Students where [Name] like '%s%'

select * from Students where [Name] like '%r'

select * from Students where [Name] like 'z%'

select * from Students where [Age]=(select MIN([Age]) from Students)

Declare @age INT
Set @age=(select MIN(Age) from Students)
SELECT * FROM Students where [Age]=@age


Select * from Students 
ORDER By ([Age]) desc 

Select * from Students 
ORDER By ([Age]) asc

DECLARE @resultName nvarchar(50)
set @resultName=(select [Name] from Students where [Id]=3)
Select SUBSTRING(@resultName,1,3) as ExtractString

select LEN([Name]) from Students where [Id]=3

SELECT SUBSTRING([Name],1,3) from students

CREATE TABLE Employees(
    [Id] int primary key identity(1,1),
    [Name] nvarchar(50) not null,
    [Surname] nvarchar(50) DEFAULT 'XXX',
    [Age] int check (Age>=18),
    [Email] nvarchar(100) unique 
    )

insert into Employees([Name],[Surname],[Age],[Email])
values ('Afide','Veliyeva',38,'afide@gmail.com')

SELECT * FROM Employees
