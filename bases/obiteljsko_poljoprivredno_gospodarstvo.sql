drop database if exists obiteljsko_poljoprivredno_gospodarstvo;
create database obiteljsko_poljoprivredno_gospodarstvo;

use obiteljsko_poljoprivredno_gospodarstvo;

create table proizvod(
    sifra int,
    naziv varchar(50),
    cijena decimal(18,2)
);

create table djelatnik(
    sifra int,
    ime varchar(50),
    prezime varchar(50),
    iban varchar(50)
);

create table sirovina(
    sifra int,
    naziv varchar(50),
    kvaliteta varchar(50)
);

create table proizvod_sirovina(
    sifra int,
    proizvod int,
    sirovina int
);

create table proizvod_djelatnik(
    sifra int,
    proizvod int,
    djelatnik int
);