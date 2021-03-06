#10. Doktorska ordinacija
#Doktor liječi pacijente. Jednog pacijenta može liječiti više puta. U liječenju pacijenta
#doktoru pomažu medicinske sestre.
#G:\xampp\mysql\bin\mysql -uedunova -pedunova < "C:\Users\WEB DOG\Desktop\JP23\bases\10. Doktorska ordinacija\doktorska_ordinacija.sql"
drop database if exists doktorska_ordinacija;
create database doktorska_ordinacija;

use doktorska_ordinacija;

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib char(11) not null
);

create table pacijent(
    sifra int not null primary key auto_increment,
    osoba int not null,
    vrsta_bolesti varchar(50) not null
);

create table doktor(
    sifra int not null primary key auto_increment,
    osoba int not null,
    iban varchar(50)
);

create table medicinska_sestra(
    sifra int not null primary key auto_increment,
    osoba int not null,
    iban varchar(50)
);

create table lijecenje(
    sifra int not null primary key auto_increment,
    doktor int not null,
    pacijent int not null,
    trajanje boolean
);

create table lijecenje_med_sestra(
    sifra int not null primary key auto_increment,
    lijecenje int not null,
    medicinska_sestra int not null
);


alter table pacijent add foreign key (osoba) references osoba(sifra);

alter table doktor add foreign key (osoba) references osoba(sifra);

alter table medicinska_sestra add foreign key (osoba) references osoba(sifra);

alter table lijecenje add foreign key (doktor) references doktor(sifra);
alter table lijecenje add foreign key (pacijent) references pacijent(sifra);

alter table lijecenje_med_sestra add foreign key (lijecenje) references lijecenje(sifra);
alter table lijecenje_med_sestra add foreign key (medicinska_sestra) references medicinska_sestra(sifra);