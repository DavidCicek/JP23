drop database if exists klub_citatelja;
create database klub_citatelja;

use klub_citatelja;

create table clan(
    sifra int,
    ime varchar(50),
    prezime varchar(50),
    email varchar(50)
);

create table knjiga(
    sifra int,
    naziv varchar(50),
    vrsta varchar(50),
    vlasnik int
);

create table clan_knjiga(
    sifra int,
    clan int,
    knjiga int,
    stanje boolean
);