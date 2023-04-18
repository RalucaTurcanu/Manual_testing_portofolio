/* DDL - ne ajuta sa ne definim tipurile de date pe care le adaugam in baza de date
 DML - ne ajuta sa gestionam datele introduse - editare, stergere, inserare
 DQL - ne ajuta sa substragem date din baza de date */

create database OrangeHRM;
show databases;

/* crearea unei tabele care contine coloanele enumerate*/

CREATE TABLE Users (
    UserID INT(250) NOT NULL,
    First_Name VARCHAR(30) NOT NULL,
    Last_Name VARCHAR(30) NOT NULL,
    User_role VARCHAR(10) NOT NULL,
    Date_of_birth DATE,
    Adress VARCHAR(250) NOT NULL
);

alter table appusers modify  UserID INT(250) NOT NULL auto_increment;

/* crearea unei coloanele noi care se numeste Pay_grade*/
alter table Users
add column Pay_grade int;

/* stergerea unei coloanele din tabela*/
alter table Users drop Adress;

/* se redumenste numele tabelei*/
alter table Users rename to AppUsers;

/* adaugam informatii in tabela*/
insert into AppUsers (UserID, First_Name, Last_Name, User_role)
values ('1', 'Tom', 'Pop', 'Admin');

select * from appusers;
alter table appusers modify Pay_grade char(15);
insert into appusers values ('2', 'Gigi', 'Fron', 'ESS', '1986-02-12', 'Grade2');

/* inserare mai multe coloane odata*/
insert into AppUsers (UserID, First_Name, Last_Name, User_role)
values ('3', 'Jim', 'Hagi', 'Admin'), ('4', 'Tomy', 'Popescu', 'ESS'), ('5', 'Jimy', 'Haribo', 'ESS'), ('6', 'Maria', 'Popescu', 'ESS');
select * from appusers;
insert into AppUsers (UserID, First_Name, Last_Name, User_role, Date_of_birth, Pay_grade)
values ('7', 'Alex', 'Joia', 'Admin', '1992-02-05','Grade1'), ('8', 'Tom', 'Popa', 'ESS','1982-08-12','Grade4'), ('9', 'Maia', 'Curca', 'Admin', '1982-07-06','Grade3'), ('10', 'Miha', 'Perescu', 'ESS','1972-08-03','Grade4');

delete from appusers where First_Name='Jim';
delete from appusers where First_Name='Tom';

update appusers set Pay_grade = 'Grade1' where UserID = '1';

-- stergerea inragistrarilor din tabela
delete from appusers;

-- stergere cu truncate
truncate table appusers;

-- selectam tot din tabel
select*from appusers;

-- selectam coloane din tabel
select First_Name, User_role from appusers;

-- selectarea unei anumite valori
select * from appusers where User_role = 'Admin';
select * from appusers where Date_of_birth is not null;

-- Filtrare simpla
select * from appusers where Last_Name in ('Pop','Hagi');


-- Filtrare cu operator OR si AND
select * from appusers where First_Name like 'T%' and User_role like 'Admin';
select * from appusers where First_Name like 'T%' or User_role like 'Admin';
select * from appusers where (First_Name like 'T%' or User_role like 'Admin') and Pay_grade is null;


-- Filtrare pe baza operatorului LIKE
select * from  appusers where First_Name like 'm%';
select * from  appusers where First_Name like '%ia';
select * from  appusers where First_Name like '%m%';
select * from  appusers where Date_of_birth like '198%'; -- returneaza toti cei nescuti in anii 80'


alter table appusers add Age int(100);
update appusers set Age = 37 where First_Name = 'Gigi';
update appusers set Age = 31 where First_Name = 'Alex';
update appusers set Age = 41 where First_Name = 'Tom';
update appusers set Age = 41 where First_Name = 'Maia';
update appusers set Age = 51 where First_Name = 'Miha';
update appusers set Pay_grade = 'Grade3' , Age = 51, Country = 'SUA'  where First_Name = 'Jim';
update appusers set Date_of_birth = '1967-06-08', Pay_grade = 'Grade4' , Age = 56, Country = 'Bulgaria'  where First_Name = 'Tomy';
update appusers set Date_of_birth = '1981-07-23', Pay_grade = 'Grade2' , Age = 42, Country = 'France'  where First_Name = 'Jimy';


alter table appusers add Country varchar(30);
update appusers set Country = 'Romania' where First_Name = 'Gigi';
update appusers set Country = 'Romania' where First_Name = 'Alex';
update appusers set Country = 'Italy' where First_Name = 'Tom';
update appusers set Country = 'SUA' where First_Name = 'Maia';
update appusers set Country = 'Italy' where First_Name = 'Miha';


-- Instructiune cu functii agregate
select count(*) from appusers;
select count(Pay_grade) from appusers;
select min(Age) from appusers;
select sum(Age) from appusers;
select Avg(Age) from appusers;

-- instructiune care sa contina clauza group by
select Country, User_role, min(Age) as min_age from appusers
group by Country, User_role;

-- Creare cheie primara
alter table appusers add primary key ( UserID); 
insert into AppUsers (First_Name, Last_Name, User_role)
values ('Mario', 'Kiky', 'Admin');
select* from appusers;

Create table Employees(
EmployeeID int not null auto_increment,
Em_Status varchar(45) not null,
SupervisorID varchar(45),
Job_Title varchar(50),
UserID int not null,
primary key(EmployeeID),
constraint fk_Employees_appusers foreign key (UserID) references appusers(UserID)
);


insert into employees (Em_Status, SupervisorID,Job_Title, UserID)
values ('Full-time', '3', 'Account Assistent',5);
insert into employees (Em_Status, SupervisorID,Job_Title, UserID)
values ('Freelance', '7', 'Quality Assurance',2);
insert into employees (Em_Status, SupervisorID,Job_Title, UserID)
values ('Full-time', '-', 'Chief Financial Officer',3);
insert into employees (Em_Status, SupervisorID,Job_Title, UserID)
values ('Full-time', '-', 'Chief Technical Officer',7);

select*from employees;
select*from appusers;

-- Tabels joins
Select * from appusers cross join employees;
select * from appusers inner join employees on appusers.UserID = employees.UserID;
select * from appusers left join employees on appusers.UserID = employees.UserID;
select * from appusers left join employees on appusers.UserID = employees.UserID where EmployeeID is not null;
select * from appusers right join employees on appusers.UserID = employees.UserID;
