/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zavrsni.osnovnaskola.util;

import com.github.javafaker.Faker;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import org.hibernate.Session;
import zavrsni.osnovnaskola.model.Razred;
import zavrsni.osnovnaskola.model.Ucenik;
import zavrsni.osnovnaskola.model.Ucitelj;

/**
 *
 * @author WEB DOG
 */
public class InitialFixtures {
    
         public static void main(String[] args){
        Session s = HibernateUtil.getSession();
        s.beginTransaction();
        
        // Domaća zadaća: optimizirati kod (metode,...)
        
        
        
        Faker faker = new Faker();
        
        List<Ucenik> ucenici=new ArrayList<>();
        Ucenik u;
        for(int i=0;i<100;i++){
            u=new Ucenik();
            u.setIme(faker.name().firstName());
            u.setPrezime(faker.name().lastName());
            u.setEmail("pero@gmail.com");
            u.setOib(EdunovaUtil.getOIB());
            s.save(u);
            ucenici.add(u);
        }
        
        Ucitelj ucitelj = new Ucitelj();
        ucitelj.setIme(faker.name().firstName());
        ucitelj.setPrezime(faker.name().lastName());
         ucitelj.setEmail("pero@gmail.com");
            ucitelj.setOib(EdunovaUtil.getOIB());
        
        s.save(ucitelj);
        
        Razred a1 = new Razred();
        a1.setNaziv("A1");
        a1.setUcitelj(ucitelj);
        
        Collections.shuffle(ucenici);
        Ucenik ur;
        for(int i=0;i<19;i++){
            ur=new Ucenik();
            
            
            s.save(ur);
            a1.getUcenici().add(ur);
        }
        s.save(a1);
        
        
         Razred b2 = new Razred();
        b2.setNaziv("B2");
        b2.setUcitelj(ucitelj);
        
        Collections.shuffle(ucenici);
        for(int i=0;i<16;i++){
             ur=new Ucenik();
            
            s.save(ur);
            b2.getUcenici().add(ur);
        }
        s.save(b2);
        
        s.getTransaction().commit();
        
    }
        
        
      
    
}
