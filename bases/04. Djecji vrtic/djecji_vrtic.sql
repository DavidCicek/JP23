#4. Dječji vrtić
#U dječjem vrtiću postoji više odgojnih skupina. Svaka odgojna skupina ima više djece
#i vodi ih jedna odgajateljica. Odgajateljica ima jednu stručnu spremu.
#G:\xampp\mysql\bin\mysql -uedunova -pedunova < "C:\Users\WEB DOG\Desktop\JP23\bases\4. Dječji vrtić\djecji_vrtic.sql"
drop database if exists djecji_vrtic;
create database djecji_vrtic;

use djecji_vrtic;

create table skupina(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    odgajatelj int not null,
    broj_dijece int
);

create table dijete(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    broj_roditelja int not null,
    skupina int not null
);

create table odgajatelj(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    iban varchar(50),
    strucna_sprema int not null
);

create table strucna_sprema(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null
);


alter table skupina add foreign key (odgajatelj) references odgajatelj(sifra);

alter table dijete add foreign key (skupina) references skupina(sifra);

alter table odgajatelj add foreign key (strucna_sprema) references strucna_sprema(sifra);