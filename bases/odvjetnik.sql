drop database if exists odvjetnik;
create database odvjetnik;

use odvjetnik;

create table odvjetnik(
    sifra int,
    ime varchar(50),
    prezime varchar(50),
    iban varchar(50)
);

create table klijent(
    sifra int,
    ime varchar(50),
    prezime varchar(50),
    email varchar(50)
);

create table obrana(
    sifra int,
    odvjetnik int,
    klijent int
);

create table obrana_suradnik(
    sifra int,
    obrana int,
    odvjetnik int
);