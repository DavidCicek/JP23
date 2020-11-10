drop database if exists postolar;
create database postolar;

use postolar;

create table postolar(
    sifra int,
    ime varchar(50),
    prezime varchar(50),
    iban varchar(50)
);

create table segrt(
    sifra int,
    ime varchar(50),
    prezime varchar(50),
    iban varchar(50)
);

create table korisnik(
    sifra int,
    ime varchar(50),
    prezime varchar(50),
    broj_mobitela int
);

create table obuca(
    sifra int,
    naziv varchar(50),
    boja varchar(50),
    vec_bilo_na_popravku boolean
);

create table popravak(
    sifra int,
    postolar int,
    broj_obuce int,
    potrebna_pomoc_segrta boolean,
    cijena decimal(18,2)
);