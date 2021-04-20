/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zavrsni.osnovnaskola.controller;

import java.util.List;
import org.mindrot.jbcrypt.BCrypt;
import zavrsni.osnovnaskola.model.Operater;
import zavrsni.osnovnaskola.util.EdunovaException;

/**
 *
 * @author WEB DOG
 */
public class ObradaOperater extends ObradaOsoba<Operater>{
    public Operater autoriziraj(String email, char[] lozinka){
       
        Operater oper = (Operater)session
                .createQuery("from Operater o where o.email=:email")
                .setParameter("email", email)
                .getSingleResult();
        if(oper==null){
            return null;
        }
        return BCrypt.checkpw(new String(lozinka),oper.getLozinka()) ? oper : null;
    }
    
    
    @Override
    public List<Operater> getPodaci() {
        return session.createQuery("from Operater").list();
    }

    @Override
    protected void kontrolaDelete() throws EdunovaException {
    
    }
}
