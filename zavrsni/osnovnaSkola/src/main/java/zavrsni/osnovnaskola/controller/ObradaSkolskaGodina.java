/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zavrsni.osnovnaskola.controller;

import java.util.List;
import org.hibernate.CacheMode;
import zavrsni.osnovnaskola.model.SkolskaGodina;
import zavrsni.osnovnaskola.util.EdunovaException;

/**
 *
 * @author WEB DOG
 */
public class ObradaSkolskaGodina extends Obrada<SkolskaGodina>{

    
    

    @Override
    protected void kontrolaCreate() throws EdunovaException {
    }

    @Override
    protected void kontrolaUpdate() throws EdunovaException {
    }

    @Override
    protected void kontrolaDelete() throws EdunovaException {
    }

    @Override
    public List<SkolskaGodina> getPodaci() {
        List<SkolskaGodina> lista =session.createQuery("from SkolskaGodina").list();
        session.setCacheMode(CacheMode.IGNORE);
        return lista;
    }
    
    
    
}
