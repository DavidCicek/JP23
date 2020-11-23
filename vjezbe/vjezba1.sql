#Kreirati bazu vjezba1
#Baza ima jednu tablicu koja ima 4 atributa
#Unijeti 5 redova
drop database if exists vjezba1;
create database vjezba1 character set utf8;

use vjezba1;

create table test(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null,
	broj_mobitela int not null,
	oib char(11)
);

insert into test (ime,prezime,broj_mobitela) values
('David','Villain',0991237),
('Dalibor','Matijasevic',0988845612),
('Iva','Makedonka',097546123),
('Gabriela','Alexandria',0994578123),
('Ivana','Tobosic',0915496389);