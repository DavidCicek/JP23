package zadatak2;

public abstract class Obitelj extends Klasa {
	
	private String nazivObitelji;
	private Vrsta vrsta;

	public String getNazivObitelji() {
		return nazivObitelji;
	}

	public void setNazivObitelji(String nazivObitelji) {
		this.nazivObitelji = nazivObitelji;
	}

	public Vrsta getVrsta() {
		return vrsta;
	}

	public void setVrsta(Vrsta vrsta) {
		this.vrsta = vrsta;
	}
}
