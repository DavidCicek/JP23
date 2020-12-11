# Vrijeme: 26:09.97
drop database if exists kolokvij_vjezba2;
create database kolokvij_vjezba2 character set utf8mb4;

use kolokvij_vjezba2;

create table decko(
	sifra int not null primary key auto_increment,
	indiferentno bit,
	vesta varchar(34),
	asocijalno bit not null
);

create table cura(
	sifra int not null primary key auto_increment,
	haljina varchar(33) not null,
	drugiputa datetime not null,
	suknja varchar(38),
	narukvica int,
	introvertno bit,
	majica varchar(40) not null,
	decko int
);

create table neprijatelj(
	sifra int not null primary key auto_increment,
	majica varchar(32),
	haljina varchar(43) not null,
	lipa decimal(16,8),
	modelnaocala varchar(49) not null,
	kuna decimal(12,6) not null,
	jmbag char(11),
	cura int
);

create table brat(
	sifra int not null primary key auto_increment,
	suknja varchar(47),
	ogrlica int not null,
	asocijalno bit not null,
	neprijatelj int not null
);

create table decko_zarucnica(
	sifra int not null primary key auto_increment,
	decko int not null,
	zarucnica int not null
);

create table zarucnica(
	sifra int not null primary key auto_increment,
	narukvica int,
	bojakose varchar(37) not null,
	novcica decimal(15,9),
	lipa decimal(15,8) not null,
	indiferentno bit not null
);

create table prijatelj(
	sifra int not null primary key auto_increment,
	modelnaocala varchar(37),
	treciputa datetime not null,
	ekstroventno bit not null,
	prviputa datetime,
	svekar int not null
);

create table svekar(
	sifra int not null primary key auto_increment,
	stilfrizura varchar(48),
	ogrlica int not null,
	asocijalno bit not null
);

alter table prijatelj add foreign key (svekar) references svekar(sifra);

alter table decko_zarucnica add foreign key (decko) references decko(sifra);
alter table decko_zarucnica add foreign key (zarucnica) references zarucnica(sifra);

alter table cura add foreign key (decko) references decko(sifra);

alter table neprijatelj add foreign key (cura) references cura(sifra);

alter table brat add foreign key (neprijatelj) references neprijatelj(sifra);


describe neprijatelj;
insert into neprijatelj (haljina,modelnaocala,kuna) values
('haljina1','modelnaocala1',12.2),
('haljina2','modelnaocala2',12.3),
('haljina3','modelnaocala3',12.4);

describe cura;
insert into cura (haljina,drugiputa,majica) values
('haljina1','2020-12-11','majica1'),
('haljina2','2020-08-11','majica2'),
('haljina3','2020-01-11','majica3');

insert into decko_zarucnica(decko,zarucnica) values
(1,2),
(2,3),
(3,1);

describe prijatelj;
update prijatelj set treciputa='2020-04-30';

delete from brat where ogrlica !=14;

select suknja from cura where drugiputa is null;

select a.novcica, f.neprijatelj, e.haljina
from zarucnica a
left join decko_zarucnica b on a.sifra=b.zarucnica
left join decko c on b.decko=c.sifra 
left join cura d on c.sifra=d.decko
left join neprijatelj e on d.sifra=e.cura
left join brat f on e.sifra=f.neprijatelj
where d.drugiputa is not null and c.vesta like '%ba%'
order by desc;

select a.vesta, a.asocijalno
from decko a
left join decko_zarucnica b on a.sifra=b.decko
where b.sifra is null;