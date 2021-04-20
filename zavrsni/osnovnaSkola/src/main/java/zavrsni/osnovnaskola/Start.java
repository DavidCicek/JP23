/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zavrsni.osnovnaskola;

import org.hibernate.Session;
import zavrsni.osnovnaskola.util.HibernateUtil;
import zavrsni.osnovnaskola.util.InitialFixtures;
import zavrsni.osnovnaskola.view.SplashScreen;


/**
 *
 * @author WEB DOG
 */
public class Start {
    
           public static void main(String[] args) {
        new SplashScreen().setVisible(true);
    }
    
}
