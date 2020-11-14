#22. Klub čitatelja
#Klub čitatelja se sastoji od članova koji čitaju knjige. Jedan čitatelj može čitati više
#knjiga, dok jednu knjigu kroz duže vremensko razdoblje može čitati više čitatelja.
#Svaka knjiga ima jednog i samo jednog vlasnika dok jedan vlasnik može imati više
#knjiga. Vlasnik je ujedno i čitatelj.
#G:\xampp\mysql\bin\mysql -uedunova -pedunova < "C:\Users\WEB DOG\Desktop\JP23\bases\klub_citatelja.sql"
drop database if exists klub_citatelja;
create database klub_citatelja;

use klub_citatelja;

create table clan(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    email varchar(50) not null
);

create table knjiga(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    vrsta varchar(50) not null,
    vlasnik int not null
);

create table clan_knjiga(
    sifra int not null primary key auto_increment,
    clan int not null,
    knjiga int not null,
    stanje boolean
);


alter table knjiga add foreign key (vlasnik) references clan(sifra);

alter table clan_knjiga add foreign key (clan) references clan(sifra);
alter table clan_knjiga add foreign key (knjiga) references knjiga(sifra);