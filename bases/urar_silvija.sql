drop database if exists urar_silvija;
create database urar_silvija;

use urar_silvija;

create table urar(
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

create table sat(
    sifra int,
    naziv varchar(50),
    vrsta varchar(50),
    vec_bilo_na_popravku boolean
);

create table popravak(
    sifra int,
    urar int,
    broj_satova int,
    potrebna_pomoc_segrta boolean,
    cijena decimal(18,2)
);