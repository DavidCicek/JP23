drop database if exists srednja_skola;
create database srednja_skola;

use srednja_skola;

create table razred(
    sifra int,
    naziv varchar(50),
    profesor int
);

create table profesor(
    sifra int,
    ime varchar(50),
    prezime varchar(50),
    iban varchar(50)
);

create table ucenik(
    sifra int,
    ime varchar(50),
    prezime varchar(50),
    oib char(11)
);

create table razred_ucenik(
    sifra int,
    razred int,
    ucenik int
);