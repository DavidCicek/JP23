/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zavrsni.osnovnaskola.util;

import org.mindrot.jbcrypt.BCrypt;
import zavrsni.osnovnaskola.controller.ObradaOperater;
import zavrsni.osnovnaskola.model.Operater;

/**
 *
 * @author WEB DOG
 */
public class KreirajOperatera {
    public static void main(String[] args) {
        Operater o = new Operater();
        o.setIme("Pablo");
        o.setPrezime("Escobar");
        o.setEmail("escobar@edunova.com");
        o.setLozinka(BCrypt.hashpw("edunova", BCrypt.gensalt()));
        o.setOib("71949308639");
        
        
        ObradaOperater oo = new ObradaOperater();
        oo.setEntitet(o);
        
        try {
            oo.create();
        } catch (EdunovaException e) {
            System.out.println(e.getMessage());
        }
        
    }
}
