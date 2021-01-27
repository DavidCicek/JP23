package zadatak2;

public abstract class Klasa extends Carstvo {

	private String nazivKlase;
	private Obitelj obitelj;

	public String getNazivKlase() {
		return nazivKlase;
	}

	public void setNazivKlase(String nazivKlase) {
		this.nazivKlase = nazivKlase;
	}

	public Obitelj getObitelj() {
		return obitelj;
	}

	public void setObitelj(Obitelj obitelj) {
		this.obitelj = obitelj;
	}
}
