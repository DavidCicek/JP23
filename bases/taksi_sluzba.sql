drop database if exists taksi_sluzba;
create database taksi_sluzba;

use taksi_sluzba;

create table vozilo(
    sifra int,
    registracija varchar(10),
    vozac int
);

create table vozac(
    sifra int,
    ime varchar(50),
    prezime varchar(50),
    iban varchar(50)
);

create table putnik(
    sifra int,
    ime varchar(50),
    broj_mobitela int
);

create table voznja(
    sifra int,
    vozilo int,
    putnik int,
    prijedena_putanja int
);