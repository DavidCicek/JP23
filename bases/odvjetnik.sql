#18. Odvjetnik
#Jedan odvjetnik brani više klijenata. Jednog klijenta može braniti više puta. U
#obranama mu pomažu suradnici. Na jednoj obrani može biti više suradnika a jedan
#suradnik može sudjelovati na više obrana.
#G:\xampp\mysql\bin\mysql -uedunova -pedunova < "C:\Users\WEB DOG\Desktop\JP23\bases\odvjetnik.sql"
drop database if exists odvjetnik;
create database odvjetnik;

use odvjetnik;

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    email varchar(50) not null
);

create table odvjetnik(
    sifra int not null primary key auto_increment,
    osoba int not null,
    iban varchar(50)
);

create table klijent(
    sifra int not null primary key auto_increment,
    osoba int not null
);

create table obrana(
    sifra int not null primary key auto_increment,
    odvjetnik int not null,
    klijent int not null
);

create table obrana_suradnik(
    sifra int not null primary key auto_increment,
    obrana int not null,
    suradnik int not null
);


alter table odvjetnik add foreign key (osoba) references osoba(sifra);

alter table klijent add foreign key (osoba) references osoba(sifra);

alter table obrana add foreign key (odvjetnik) references odvjetnik(sifra);
alter table obrana add foreign key (klijent) references klijent(sifra);

alter table obrana_suradnik add foreign key (obrana) references obrana(sifra);
alter table obrana_suradnik add foreign key (suradnik) references odvjetnik(sifra);