drop database if exists nakladnik;
create database nakladnik;

use nakladnik;

create table nakladnik(
    sifra int,
    ime varchar(50),
    prezime varchar(50),
    email varchar(50),
    mjesto varchar(50)
);

create table djelo(
    sifra int,
    naziv varchar(50),
    vrsta_glazbe varchar(50)
);

create table nakladnik_djelo(
    sifra int,
    nakladnik int,
    djelo int
);