drop database if exists vodoinstaler;
create database vodoinstaler;

use vodoinstaler;

create table vodoinstaler(
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

create table popravak(
    sifra int,
    naziv varchar(50),
    cijena decimal(18,2)
);

create table kvar(
    sifra int,
    naziv varchar(50),
    uzrok varchar(50)
);

create table popravak_kvar(
    sifra int,
    popravak int,
    kvar int,
    potrebna_pomoc_segrta boolean
);