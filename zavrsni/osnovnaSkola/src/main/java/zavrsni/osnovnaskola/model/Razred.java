/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zavrsni.osnovnaskola.model;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author WEB DOG
 */
@Entity
public class Razred extends Entitet{
    
    private String naziv;
    @ManyToOne
    private Ucitelj ucitelj;
    @ManyToOne
    private SkolskaGodina skolskagodina;

    public String getNaziv() {
        return naziv;
    }

    public void setNaziv(String naziv) {
        this.naziv = naziv;
    }

    public Ucitelj getUcitelj() {
        return ucitelj;
    }

    public void setUcitelj(Ucitelj ucitelj) {
        this.ucitelj = ucitelj;
    }

    public SkolskaGodina getSkolskagodina() {
        return skolskagodina;
    }

    public void setSkolskagodina(SkolskaGodina skolskagodina) {
        this.skolskagodina = skolskagodina;
    }
    
    
    
    @ManyToMany
    private List<Ucenik> ucenici = new ArrayList<>();

    public List<Ucenik> getUcenici() {
        return ucenici;
    }

    public void setUcenici(List<Ucenik> ucenici) {
        this.ucenici = ucenici;
    }

    

   

    @Override
    public String toString() {
        
        return getNaziv() + " [" + getUcenici().size() + "]";
    }
    
    
}
