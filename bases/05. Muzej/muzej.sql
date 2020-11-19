#5. Muzej
#U muzeju postoji više izložaba. Jedna izložba ima više djela. Svaki kustos je zadužen
#za jednu izložbu. Svaka izložba ima jednog sponzora.
#G:\xampp\mysql\bin\mysql -uedunova -pedunova < "C:\Users\WEB DOG\Desktop\JP23\bases\05. Muzej\muzej.sql"
drop database if exists muzej;
create database muzej;

use muzej;

create table izlozba(
    sifra int not null primary key auto_increment,
    broj_djela int,
    kustos int not null,
    sponzor int not null
);

create table djelo(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    autor int not null,
    cijena decimal(18,2),
    izlozba int not null
);

create table autor(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null
);

create table kustos(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    email varchar(50) not null
);

create table sponzor(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    iznos decimal(18,2)
);

alter table izlozba add foreign key (kustos) references kustos(sifra);
alter table izlozba add foreign key (sponzor) references sponzor(sifra);

alter table djelo add foreign key (autor) references autor(sifra);
alter table djelo add foreign key (izlozba) references izlozba(sifra);


insert into sponzor (naziv,iznos) values
('Konzum',24999.99),
('Zara',1500.00);

insert into kustos (ime,prezime,email) values
('Viktor','Krizmanić','viktorkrizmanic@gmail.com'),
('Tamara','Belić','tbelic@gmail.com');

insert into izlozba (broj_djela,kustos,sponzor) values
(13,1,1),
(20,2,1),
(10,1,2);

insert into autor (ime,prezime) values
('Vladimir','Franković'),
('Dalibor','Županić');

insert into djelo (naziv,autor,cijena,izlozba) values
('Zalazak sunca',1,1500000,1),
('Ispod Mosta',1,2500000,1),
('Djetinstvo Djeteta',1,2000000,2),
('Majčin izbor',1,4500000,1),
('Robovi gospodara',2,6000000,2),
('Iza rešetaka',2,2500000,1),
('Novi pogled',2,4000000,1),
('Opasnosti mora',1,1000000,3),
('Kuća',2,2500000,2),
('Tragovi civilizacije',1,6500000,3),
('Nova roba',1,3500000,3),
('Gospodarica Leda',2,2000000,2),
('Cvijet mraka',2,1500000,1);