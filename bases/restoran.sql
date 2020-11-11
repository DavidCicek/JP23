drop database if exists restoran;
create database restoran;

use restoran;

create table jelovnik(
    sifra int,
    kategorija int,
    pice int
);

create table kategorija(
    sifra int,
    naziv varchar(50),
    cijena decimal(18,2)
);

create table pice(
    sifra int,
    naziv varchar(50),
    cijena decimal(18,2)
);