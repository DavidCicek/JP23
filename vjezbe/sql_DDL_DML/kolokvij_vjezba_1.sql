#0 Kreirajte tablice i veze izmedu tablica
drop database if exists kolokvij_vjezba_1;
create database kolokvij_vjezba_1 character set utf8mb4;

use kolokvij_vjezba_1;

create table sestra(
	sifra int not null primary key auto_increment,
	introvertno bit,
	haljina varchar(31) not null,
	maraka decimal(16,6),
	hlace varchar(46) not null,
	narukvica int not null
);

create table zena(
	sifra int not null primary key auto_increment,
	treciputa datetime,
	hlace varchar(46),
	kratkamajica varchar(31) not null,
	jmbag char(11) not null,
	bojaociju varchar(39) not null,
	haljina varchar(44),
	sestra int not null
);

create table muskarac(
	sifra int not null primary key auto_increment,
	bojaociju varchar(50) not null,
	hlace varchar(30),
	modelnaocala varchar(43),
	maraka decimal(14,5) not null,
	zena int not null
);

create table mladic(
	sifra int not null primary key auto_increment,
	suknja varchar(50) not null,
	kuna decimal(16,8) not null,
	drugiputa datetime,
	asocijalno bit,
	ekstroventno bit not null,
	dukserica varchar(48) not null,
	muskarac int
);

create table sestra_svekar(
	sifra int not null primary key auto_increment,
	sestra int not null,
	svekar int not null
);

create table svekar(
	sifra int not null primary key auto_increment,
	bojaociju varchar(40) not null,
	prstena int,
	dukserica varchar(41),
	lipa decimal(13,8),
	eura decimal(12,7),
	majica varchar(35)
);

create table punac(
	sifra int not null primary key auto_increment,
	ogrlica int,
	gustoca decimal(14,9),
	hlace varchar(41) not null
);

create table cura(
	sifra int not null primary key auto_increment,
	novcica decimal(16,5) not null,
	gustoca decimal(18,6) not null,
	lipa decimal(13,10),
	ogrlica int not null,
	bojakose varchar(38),
	suknja varchar(36),
	punac int
);


alter table zena add foreign key (sestra) references sestra(sifra);
alter table muskarac add foreign key (zena) references zena(sifra);
alter table mladic add foreign key (muskarac) references muskarac(sifra);

alter table sestra_svekar add foreign key (sestra) references sestra(sifra);
alter table sestra_svekar add foreign key (svekar) references svekar(sifra);

alter table cura add foreign key (punac) references punac(sifra);


#1 U tablice muskara,zena i sestra_svekar unesite po 3 retka.
insert into sestra (haljina,hlace,narukvica) values
('haljina1','hlace1',11),
('haljina2','hlace2',22),
('haljina3','hlace3',33);

insert into zena (kratkamajica,jmbag,bojaociju,sestra) values
('kratkamajica1','11111','bojaociju1',2),
('kratkamajica2','44444','bojaociju2',3),
('kratkamajica3','55555','bojaociju3',1);

insert into muskarac (bojaociju,maraka,zena) values
('bojaociju1',100,1),
('bojaociju2',404,1),
('bojaociju3',555,2);

insert into svekar (bojaociju) values
('bojaociju'),
('bojaociju2'),
('bojaociju3');

insert into sestra_svekar (sestra,svekar) values
(1,2),
(3,1),
(2,3);


#2 U tablici cura postavite svim zapisima kolonu gustoca na vrijednost
update cura set gustoca=15,77;

#3 U tablici mladic obrisite sve zapise cija je vrijednost kolone kuna vece od 15,78
delete from mladic where kuna=<15.78;

#4 Izlistajte kratkamajica iz tablice zena uz uvjet da vrijednost kolone hlace sadrze slova ana
select kratkamajica from zena where hlace like '%ana%';

#5 Prikazite dukserica iz tablice svekar, asocijalno iz tablice mladic te hlace iz tablice muskarac
#uz uvjet da su vrijednosti kolone hlace iz tablice zena pocinju slovom a te da su
#vrijednosti kolone haljina iz tablice sestra sadrze niz znakova ba.
#Podatke polozite po hlace iz tablice muskarac silazno.
select a.dukserica, f.asocijalno, e.hlace 
from svekar a
inner join sestra_svekar b on b.svekar=a.sifra
inner join sestra c on c.sifra=b.sestra 
inner join zena d on d.sestra=c.sifra 
inner join muskarac e on e.zena=d.sifra 
inner join mladic f on f.muskarac=e.sifra
where d.hlace like 'a%' and c.haljina like '%ba%';

#6 Prikazite kolone haljina i maraka iz tablice sestra ciji se primarni kljuc ne nalaze u tablici sestra_svekar.
select a.haljina, a.maraka
from sestra a
left join sestra_svekar b on b.sestra=a.sifra
where b.sifra is null;