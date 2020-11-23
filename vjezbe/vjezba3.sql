#Kreirati bazu vjezba3
#Baza ima dvije tablice:
#Programskijezik i kategorija
#Treba unijeti sljedeće podatke
#Java (oop, win, osx)
#Swift (osx)
#PHP (oop, linux, win)
#Go (linux,osx)
drop database if exists vjezba3;
create database vjezba3 character set utf8mb4;

use vjezba3;

create table programski_jezik(
sifra int not null primary key auto_increment,
naziv varchar(50) not null
);

create table kategorija(
sifra int not null primary key auto_increment,
naziv varchar(50) not null
);

create table programski_jezik_kategorija(
sifra int not null primary key auto_increment,
programski_jezik int not null,
kategorija int not null
);

insert into programski_jezik (naziv) values
('Java'),
('Swift'),
('PHP'),
('Go');

insert into kategorija (naziv) values
('oop'),
('win'),
('osx'),
('linux');

insert into programski_jezik_kategorija (programski_jezik,kategorija) values
(1,1),
(1,2),
(1,3),
(2,3),
(3,1),
(3,4),
(3,2),
(4,4),
(4,3);