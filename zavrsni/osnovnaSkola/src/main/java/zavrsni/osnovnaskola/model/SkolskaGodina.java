/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zavrsni.osnovnaskola.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import javax.persistence.Entity;

/**
 *
 * @author WEB DOG
 */
@Entity
public class SkolskaGodina extends Entitet{
    
    private Date datum;

    public Date getDatum() {
        return datum;
    }

    public void setDatum(Date datum) {
        this.datum = datum;
    }

    

    
    @Override
    public String toString() {
        try {
            SimpleDateFormat df = new SimpleDateFormat("YYYY.");
            return df.format(datum);
        } catch (Exception e) {
            return "Godina nije postavljena";
        }
        
    }
    
    
    
    
}
