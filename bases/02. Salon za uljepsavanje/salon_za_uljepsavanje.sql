#2. Salon za uljepšavanje
#U salonu za uljepšavanje radi više djelatnica. Jedna djelatnica na dan radi s više
#korisnika. Korisnik tijekom jednog posjeta koristi jednu uslugu.
#G:\xampp\mysql\bin\mysql -uedunova -pedunova < "C:\Users\WEB DOG\Desktop\JP23\bases\02. Salon za uljepsavanje\salon_za_uljepsavanje.sql"
drop database if exists salon_za_uljepsavanje;
create database salon_za_uljepsavanje;

use salon_za_uljepsavanje;

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
('Zlata','Matulić','+385 98 912 112'),
('Petra','Šarčević','+385 97 513 7146'),
('Ivana','Gavran','+385 90 779 9704'),
('Tea','Hrnjkaš','+385 91 727 8378'),
('Elizabeta','Višnjić','+385 95 735 5952'),
('Lana','Katušić','+385 98 679 3796'),
('Božica','Dundović','+385 97 014 7364');

insert into djelatnica (osoba,iban) values
(1,'HR2824840081396541146'),
(2,'HR1625000094281184594'),
(3,'HR8123400095164991527');

insert into korisnik (osoba)
select sifra from osoba where sifra>3;

insert into usluga (naziv,cijena) values
('Geliranje noktiju',29.99),
('Masaža',59.99),
('Čupanje obrva',29.99);

insert into posjeta (korisnik,djelatnica,usluga) values
(1,2,1),
(3,1,1),
(2,3,2),
(1,1,3),
(4,1,2),
(3,2,3);