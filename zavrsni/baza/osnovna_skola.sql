#G:\xampp\mysql\bin\mysql -uedunova -pedunova < "C:\Users\WEB DOG\Desktop\JP23\zavrsni\baza\osnovna_skola.sql"
drop database if exists osnovna_skola;
create database osnovna_skola;

use osnovna_skola;

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib varchar(50) not null
);

create table ucenik(
    sifra int not null primary key auto_increment,
    osoba int not null,
    razred int not null
);

create table ucitelj(
    sifra int not null primary key auto_increment,
    osoba int not null,
    iban int not null
);

create table razred(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    ucitelj int not null,
    broj_ucenika int
);


alter table ucenik add foreign key (osoba) references osoba(sifra);
alter table ucenik add foreign key (razred) references razred(sifra);

alter table ucitelj add foreign key (osoba) references osoba(sifra);

alter table razred add foreign key (ucitelj) references ucitelj(sifra);