#21. Dječja igraonica
#U dječjoj igraonici djeca se igraju u skupinama. Jedno dijete se može igrati u više
#skupina a jedna skupina se sastoji od više djece. Svaku skupinu vodi jedna teta.
#G:\xampp\mysql\bin\mysql -uedunova -pedunova < "C:\Users\WEB DOG\Desktop\JP23\bases\djecja_igraonica.sql"
drop database if exists djecja_igraonica;
create database djecja_igraonica;

use djecja_igraonica;

create table dijete(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    broj_roditelja int not null
);

create table odgajatelj(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    email varchar(50) not null
);

create table skupina(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    odgajatelj int not null
);

create table skupina_dijete(
    sifra int not null primary key auto_increment,
    skupina int not null,
    dijete int not null
);


alter table skupina add foreign key (odgajatelj) references odgajatelj(sifra);

alter table skupina_dijete add foreign key (skupina) references skupina(sifra);
alter table skupina_dijete add foreign key (dijete) references dijete(sifra);