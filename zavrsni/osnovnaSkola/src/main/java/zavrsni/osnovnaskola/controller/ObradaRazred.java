/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zavrsni.osnovnaskola.controller;

import java.util.Date;
import java.util.List;
import org.hibernate.CacheMode;
import zavrsni.osnovnaskola.model.Razred;
import zavrsni.osnovnaskola.model.Ucenik;
import zavrsni.osnovnaskola.util.EdunovaException;
import zavrsni.osnovnaskola.view.Aplikacija;

/**
 *
 * @author WEB DOG
 */
public class ObradaRazred extends Obrada<Razred>{
    
    @Override
    public List<Razred> getPodaci() {
        List<Razred> lista =session.createQuery("from Razred").list();
        session.setCacheMode(CacheMode.IGNORE);
        return lista;
    }

    @Override
    public Razred create() throws EdunovaException {
        
        session.beginTransaction();
        for (Ucenik ur : entitet.getUcenici()) {
            ur.setOperaterUnosa(Aplikacija.operater);
            ur.setDatumUnosa(new Date());
            session.save(ur);
        }
        kontrolaCreate();
        super.kontrola();
        entitet.setOperaterUnosa(Aplikacija.operater);
        entitet.setDatumUnosa(new Date());
        session.save(entitet);
        session.getTransaction().commit();
        return entitet;
    }
    
    

    @Override
    protected void kontrolaCreate() throws EdunovaException {
        kontrolaNaziv();
    }

    @Override
    protected void kontrolaUpdate() throws EdunovaException {
       kontrolaCreate();
    }

    @Override
    protected void kontrolaDelete() throws EdunovaException {
       
    }

    private void kontrolaNaziv() throws EdunovaException {
        kontrolaNazivPostavljen();
        kontrolaNazivDuzina();    
    }

    private void kontrolaNazivPostavljen() throws EdunovaException {
        if(entitet.getNaziv()==null 
               || entitet.getNaziv().isEmpty()){
           throw new EdunovaException("Naziv mora biti postavljen");
       }
    }

    private void kontrolaNazivDuzina() throws EdunovaException {
        if(entitet.getNaziv().length()>2){
            throw new EdunovaException("Naziv predugačak");
        }
    }
    
}
