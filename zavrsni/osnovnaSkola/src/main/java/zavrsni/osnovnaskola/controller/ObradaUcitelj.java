/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zavrsni.osnovnaskola.controller;

import java.util.List;
import zavrsni.osnovnaskola.model.Ucitelj;
import zavrsni.osnovnaskola.util.EdunovaException;

/**
 *
 * @author WEB DOG
 */
public class ObradaUcitelj extends ObradaOsoba<Ucitelj>{

    @Override
    public List<Ucitelj> getPodaci() {
        return session.createQuery("from Ucitelj").list();
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
