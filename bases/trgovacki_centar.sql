drop database if exists trgovacki_centar;
create database trgovacki_centar;

use trgovacki_centar;

create table trgovina(
    sifra int,
    naziv varchar(50),
    sef int,
    web varchar(50)
);

create table osoba(
    sifra int,
    ime varchar(50),
    prezime varchar(50),
    iban varchar(50)
);

create table trgovina_osoba(
    sifra int,
    trgovina int,
    osoba int
);