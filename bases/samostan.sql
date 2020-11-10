drop database if exists samostan;
create database samostan;

use samostan;

create table svecenik(
    sifra int,
    ime varchar(50),
    nadredeni_svecenik int
);

create table posao(
    sifra int,
    naziv varchar(50),
    vrijeme varchar(50)
);

create table svecenik_posao(
    sifra int,
    svecenik int,
    posao int
);