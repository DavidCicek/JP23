#1. Frizerski salon
#U frizerskom salonu radi viÅ¡e djelatnica. Jedna djelatnica radi s viÅ¡e korisnika.
#Korisnik tijekom jednog posjeta koristi jednu uslugu.
#G:\xampp\mysql\bin\mysql -uedunova -pedunova < "C:\Users\WEB DOG\Desktop\JP23\bases\1. Frizerski salon\frizerski_salon.sql"
drop database if exists frizerski_salon;
create database frizerski_salon CHARACTER SET utf8mb4;

use frizerski_salon;

create table djelatnica(
    sifra int not null primary key auto_increment,
    osoba int not null,
    iban varchar(50)
);

create table korisnik(
    sifra int not null primary key auto_increment,
    osoba int not null,
    stalan_korisnik boolean
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    broj_mobitela varchar(50) not null
);

create table usluga(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    cijena decimal(18,2)
);

create table posjeta(
    sifra int not null primary key auto_increment,
    korisnik int not null,
    djelatnica int not null,
    usluga int not null
);


alter table djelatnica add foreign key (osoba) references osoba(sifra);

alter table korisnik add foreign key (osoba) references osoba(sifra);

alter table posjeta add foreign key (korisnik) references korisnik(sifra);
alter table posjeta add foreign key (djelatnica) references djelatnica(sifra);
alter table posjeta add foreign key (usluga) references usluga(sifra);


insert into osoba(ime,prezime,broj_mobitela) values
('Ana','Želić','+385 97 077 7145'),
('Paula','Smičiklas','+385 98 963 693'),
('Đurđa','Piškulić','+385 90 380 5979'),
('Božo','Pintar','+385 97 510 0860'),
('Zoran','Dukarić','+385 97 772 6445'),
('Matija','Ćolić','+385 98 972 043'),
('Karlo','Radulović','+385 97 510 7505');

insert into djelatnica (osoba,iban) values
(1,'HR0625000091599391145'),
(2,'HR2525000091439842778'),
(3,'HR3325000099641567151');

insert into korisnik (osoba)
select sifra from osoba where sifra>3;

insert into usluga (naziv,cijena) values
('Šišanje',49.99),
('Bojanje',79.99),
('Pranje kose',14.99);

insert into posjeta (korisnik,djelatnica,usluga) values
(1,2,1),
(3,1,1),
(2,3,2),
(1,1,3),
(4,1,2),
(3,2,3);