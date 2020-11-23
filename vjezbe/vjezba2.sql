#Kreirati bazu vjezba2
#Baza ima dvije tablicu između kojih je 1:n veza. Svaka tablica ima 3 atributa
#Unijeti u jednu tablicu 2 reda a u drugu tablicu 4 reda
drop database if exists vjezba2;
create database vjezba2 character set utf8;

use vjezba2;

create table tablica1(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
oib char(11),
datum_rodenja datetime
);

create table tablica2(
sifra int not null primary key auto_increment,
tablica1 int not null,
zadaca varchar(50) not null,
vrijeme datetime
);

alter table tablica2 add foreign key (tablica1) references tablica1(sifra);

insert into tablica1 (ime,prezime) values
('ime1','prezime1'),
('ime2','prezime2');

insert into tablica2 (tablica1,zadaca) values
(2,'zadaca1'),
(2,'zadaca2'),
(1,'zadaca3'),
(1,'zadaca4');