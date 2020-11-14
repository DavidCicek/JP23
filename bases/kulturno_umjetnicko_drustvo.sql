#20. Kulturno umjetničko društvo
#KUD nastupa u zemlji i inozemstvu. Na jedan nastup ide više članova KUD-a dok
#jedan član može nastupati na više nastupa. Svaki nastup se odvija u jednom mjestu.
#G:\xampp\mysql\bin\mysql -uedunova -pedunova < "C:\Users\WEB DOG\Desktop\JP23\bases\kulturno_umjetnicko_drustvo.sql"
drop database if exists kulturno_umjetnicko_drustvo;
create database kulturno_umjetnicko_drustvo;

use kulturno_umjetnicko_drustvo;

create table clan(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    email varchar(50) not null
);

create table nastup(
    sifra int not null primary key auto_increment,
    zarada decimal(18,2),
    mjesto varchar(50) not null
);

create table nastup_clan(
    sifra int not null primary key auto_increment,
    nastup int not null,
    clan int not null
);


alter table nastup_clan add foreign key (nastup) references nastup(sifra);
alter table nastup_clan add foreign key (clan) references clan(sifra);