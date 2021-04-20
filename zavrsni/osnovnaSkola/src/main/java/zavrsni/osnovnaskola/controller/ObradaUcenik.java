/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zavrsni.osnovnaskola.controller;

import java.util.List;
import zavrsni.osnovnaskola.model.Ucenik;
import zavrsni.osnovnaskola.util.EdunovaException;

/**
 *
 * @author WEB DOG
 */
public class ObradaUcenik extends ObradaOsoba<Ucenik>{
    
    @Override
    public List<Ucenik> getPodaci() {
        return session.createQuery("from Ucenik u "
                + " order by u.prezime, u.ime").list();
    }
    
    public List<Ucenik> getPodaci(String uvjet) {
        return session.createQuery("from Ucenik u "
                + " where concat(u.ime, ' ', u.prezime, ' ', u.oib) "
                + " like :uvjet order by u.prezime, u.ime")
                .setParameter("uvjet", "%" + uvjet + "%")
                
                .setMaxResults(20)
                .list();
    }
    
     @Override
    protected void kontrolaCreate() throws EdunovaException {
       super.kontrolaCreate();
       //onda moje kontrole
    }

    @Override
    protected void kontrolaUpdate() throws EdunovaException {
        super.kontrolaUpdate();
        //onda moje kontrole
    }

    @Override
    protected void kontrolaDelete() throws EdunovaException {
       
    }
    
    
}
