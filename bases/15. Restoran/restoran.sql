#15. Restoran
#Restoran ima više kategorija na jelovniku. Jedna kategorija ima više jela. Uz svako jelo
#može se ponuditi više pića. Jedno piće se može ponuditi uz više jela.
#G:\xampp\mysql\bin\mysql -uedunova -pedunova < "C:\Users\WEB DOG\Desktop\JP23\bases\15. Restoran\restoran.sql"
drop database if exists restoran;
create database restoran;

use restoran;

create table jelovnik(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null
);

create table kategorija(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    jelovnik int not null
);

create table jelo(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    kategorija int not null,
    cijena decimal(18,2)
);

create table pice(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    cijena decimal(18,2)
);

create table jelo_pice(
    sifra int not null primary key auto_increment,
    jelo int not null,
    pice int not null
);


alter table kategorija add foreign key (jelovnik) references jelovnik(sifra);

alter table jelo add foreign key (kategorija) references kategorija(sifra);

alter table jelo_pice add foreign key (jelo) references jelo(sifra);
alter table jelo_pice add foreign key (pice) references pice(sifra);