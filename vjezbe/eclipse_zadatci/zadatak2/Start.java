package zadatak2;

public class Start {
	// Kreirajte paket zadatak2
	// Kreirajte model klasa koji opisuje svijet flore i faune
	// na minimalno 4 razine nasljeđivanja
	// na svakoj razini nasljeđivanja u klasi definirajte minimalno 2 svojstva
	// Instancijrajte svaku od kreiranih najnižih klasa
	// klase na višoj razini proglasite pastraktnima
	
	public Start() {

		Vrsta vrsta = new Vrsta();
		vrsta.setNazivVrste("Staianus");
		vrsta.setNazivObitelji("Sparassidae");
		vrsta.setNazivKlase("Arachnida");
		vrsta.setNazivCarstva("Animalia");

		Vrsta vrsta1 = new Vrsta();
		vrsta1.setNazivVrste("Lycoris radiata");
		vrsta1.setNazivObitelji("Amaryllidaceae");
		vrsta1.setNazivKlase("Angiosperms");
		vrsta1.setNazivCarstva("Plantae");

		System.out.printf("Vrsta %s je iz obitelji %s, klase %s i carstva %s.", vrsta.getNazivVrste(),
				vrsta.getNazivObitelji(), vrsta.getNazivKlase(), vrsta.getNazivCarstva());
		System.out.println();
		System.out.printf("Vrsta %s je iz obitelji %s, klase %s i carstva %s.", vrsta1.getNazivVrste(),
				vrsta1.getNazivObitelji(), vrsta1.getNazivKlase(), vrsta1.getNazivCarstva());
	}

	public static void main(String[] args) {
		new Start();
	}
}
