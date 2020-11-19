#3. Udruga za zaštitu životinja
#U udruzu radi više osoba. Jedna osoba se brine za jednog ili više štićenika udruge.
#Štićenici udruge su životinje. Svaki štićenik se nalazi u jednom prostoru.
#G:\xampp\mysql\bin\mysql -uedunova -pedunova < "C:\Users\WEB DOG\Desktop\JP23\bases\03. Udruga za zastitu zivotinja\udruga_za_zastitu_zivotinja.sql"
drop database if exists udruga_za_zastitu_zivotinja;
create database udruga_za_zastitu_zivotinja;

use udruga_za_zastitu_zivotinja;

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    email varchar(50) not null
);

create table prostor(
    sifra int not null primary key auto_increment,
    velicina varchar(50) not null,
    temperatura int
);

create table zivotinja(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    vrsta varchar(50) not null,
    prostor int not null,
    osoba int not null
);


alter table zivotinja add foreign key (prostor) references prostor(sifra);
alter table zivotinja add foreign key (osoba) references osoba(sifra);


insert into osoba (ime,prezime,email) values
('Jan','Pejić','janPejic@gmail.com'),
('Franjo','Pupić','f.pupic@gmail.com'),
('Vinko','Cvijanović','cvijanovicv@gmail.com');

insert into prostor (velicina,temperatura) values
('A Velika soba',-10),
('B Velika soba',21),
('A Mala soba',1);

insert into zivotinja (ime,vrsta,prostor,osoba) values
('Niki','Polarni Medvjed',1,3),
('Poky','Pingvin',3,1),
('Oki','Slon',2,3),
('Jelena','Jelen',2,2);