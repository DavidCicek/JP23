drop database if exists  fakultet;
create database fakultet;

use fakultet;

create table kolegij(
    sifra int,
    naziv varchar(50),
    pocetak datetime
);

create table rok(
    sifra int,
    datum datetime,
    kolegij int
);

create table student(
    sifra int,
    ime varchar(50),
    prezime varchar(50),
    oib char(11)
);

create table student_rok(
    sifra int,
    student int,
    rok int
);