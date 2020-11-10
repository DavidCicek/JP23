drop database if exists udruga_za_zastitu_zivotinja;
create database udruga_za_zastitu_zivotinja;

use udruga_za_zastitu_zivotinja;

create table osoba(
    sifra int,
    ime varchar(50),
    prezime varchar(50),
    email varchar(50)
);

create table prostor(
    sifra int,
    velicina varchar(50),
    temperatura int
);

create table zivotinja(
    sifra int,
    ime varchar(50),
    prezime varchar(50),
    prostor int,
    osoba int
);