drop database if exists zupanija;
create database zupanija;

use zupanija;

create table zupanija(
	sifra int not null primary key auto_increment,
	naziv varchar(50) not null,
	zupan int not null
);

create table zupan(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null
);

create table opcina(
	sifra int not null primary key auto_increment,
	zupanija int not null,
	naziv varchar(50) not null
);

create table mjesto(
	sifra int not null primary key auto_increment,
	opcina int not null,
	naziv varchar(50) not null
);


alter table zupanija add foreign key (zupan) references zupan(sifra);
alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);

describe zupan;
insert into zupan(ime,prezime) values
('ime1','prezime1'),
('ime2','prezime2'),
('ime3','prezime3');

describe zupanija;

insert into zupanija(naziv,zupan) values
('zupanija1',1),
('zupanija2',1),
('zupanija3',2);

describe opcina;

insert into opcina(zupanija,naziv) values
(1,'opcina1'),
(2,'opcina2'),
(3,'opcina3'),
(1,'opcina4'),
(2,'opcina5'),
(3,'opcina6');

describe mjesto;

insert into mjesto(opcina,naziv) values
(2,'mjesto1'),
(3,'mjesto2'),
(1,'mjesto3'),
(2,'mjesto3'),
(3,'mjesto4'),
(1,'mjesto5'),
(2,'mjesto6'),
(3,'mjesto7'),
(1,'mjesto8'),
(2,'mjesto9'),
(3,'mjesto10'),
(3,'mjesto11'),
(1,'mjesto12');


update mjesto set naziv='mjesto100' where sifra=2;
update mjesto set naziv='mjesto132' where sifra=6;
update mjesto set naziv=3 where sifra=5;
update mjesto set naziv=1 where sifra=1;
update mjesto set naziv='mjesto51' where sifra=9;


delete from mjesto where opcina=3; 
delete from opcina where sifra=3;
delete from mjesto where opcina=4;
delete from opcina where sifra=4;