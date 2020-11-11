drop database if exists osnovna_skola;
create database osnovna_skola;

use osnovna_skola;

create table radionica(
    sifra int,
    naziv varchar(50),
    ucitelj int
);

create table ucitelj(
    sifra int,
    ime varchar(50),
    prezime varchar(50),
    iban varchar(50)
);

create table dijete(
    sifra int,
    ime varchar(50),
    prezime varchar(50),
    broj_roditelja int
);

create table radionica_dijete(
    sifra int,
    radionica int,
    dijete int
);