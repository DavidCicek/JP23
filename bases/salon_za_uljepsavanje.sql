drop database if exists salon_za_uljepsavanje;
create database salon_za_uljepsavanje;

use salon_za_uljepsavanje;

create table djelatnica(
    sifra int,
    ime varchar(50),
    prezime varchar(50),
    iban varchar(50)
);

create table korisnik(
    sifra int,
    ime varchar(50),
    prezime varchar(50)
);

create table usluga(
    sifra int,
    naziv varchar(50),
    cijena decimal(18,2)
);

create table posjeta(
    sifra int,
    korisnik int,
    djelatnica int,
    usluga int
);