#4. Dječji vrtić
#U dječjem vrtiću postoji više odgojnih skupina. Svaka odgojna skupina ima više djece
#i vodi ih jedna odgajateljica. Odgajateljica ima jednu stručnu spremu.
#G:\xampp\mysql\bin\mysql -uedunova -pedunova < "C:\Users\WEB DOG\Desktop\JP23\bases\04. Djecji vrtic\djecji_vrtic.sql"
drop database if exists djecji_vrtic;
create database djecji_vrtic;

use djecji_vrtic;

create table skupina(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    odgajatelj int not null,
    broj_dijece int
);

create table dijete(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    broj_roditelja varchar(50) not null,
    skupina int not null
);

create table odgajatelj(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    iban varchar(50),
    strucna_sprema int not null
);

create table strucna_sprema(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null
);


alter table skupina add foreign key (odgajatelj) references odgajatelj(sifra);

alter table dijete add foreign key (skupina) references skupina(sifra);

alter table odgajatelj add foreign key (strucna_sprema) references strucna_sprema(sifra);


insert into strucna_sprema (naziv) values
('osnovna škola'),
('SSS srednja škola'),
('VŠS viša škola');

insert into odgajatelj (ime,prezime,strucna_sprema) values
('Jelena','Malić',3),
('Petra','Romić',3),
('Paula','Herman',2);

insert into skupina (naziv,odgajatelj,broj_dijece) values
('1A',1,18),
('2A',2,20),
('1B',3,17),
('2B',2,19);

insert into dijete (ime,prezime,broj_roditelja,skupina) values
('Florijan','Krčelić','+385 97 682 5658',1),
('Ivan','Bilić','+385 90 814 0120',4),
('Nikolina','Posavac','+385 98 254 287',2);