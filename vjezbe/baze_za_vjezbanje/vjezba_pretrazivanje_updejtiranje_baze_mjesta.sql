# Nazive svih mjesta koji imaju početno slovo a postavite na XXXX

describe mjesto;
update mjesto set naziv='XXXX' where naziv like 'a%';

select * from mjesto where naziv like 'a%';

select * from mjesto where naziv='XXXX';


select * from mjesto where naziv='Osijek';
select * from mjesto;
#Grad: Osijek, 31000 (Županija: 14)
select sifra as id, 2 as sifra, ime as grad from osoba;

select naziv as 'Grad:', postanskibroj as 'Poštanski broj:', zupanija as 'Županija:' from mjesto where naziv='Osijek';

#select |koji podatak zelis da ti se prikaze| as |Koji naslov zelis da ti se pokazuje iznad stupca| from entitet;
select naziv as 'Grad:', 'naziv' as naziv, postanskibroj as 'Poštanski broj:', zupanija as 'Županija:' from mjesto;