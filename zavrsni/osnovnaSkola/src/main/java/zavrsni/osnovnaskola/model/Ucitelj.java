/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zavrsni.osnovnaskola.model;

import javax.persistence.Entity;

/**
 *
 * @author WEB DOG
 */
@Entity
public class Ucitelj extends Osoba{
    
    private String iban;

    public String getIban() {
        return iban;
    }

    public void setIban(String iban) {
        this.iban = iban;
    }
    
    
    
}
