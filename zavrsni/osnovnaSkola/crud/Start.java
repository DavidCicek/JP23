package osnovnaSkola.crud;

import java.util.ArrayList;
import java.util.List;

public class Start {

	public Start() {
		ucenici = new ArrayList<>();
		razredi = new ArrayList<>();
		profesori = new ArrayList<>();
		izbornik();
	}

	private List<Ucenik> ucenici;
	private List<Razred> razredi;
	private List<Profesor> profesori;

	private void izbornik() {
		System.out.println("@@@@@@@@@ OSNOVNA SKOLA RETFALA CRUD @@@@@@@@@");
		stavkeIzbornika();
		switch (Pomocno.ucitajBroj("Odaberite akciju", 1, 4)) {
		case 1:
			ucenikIzbornik();
			break;
		case 2:
			razredIzbornik();
			break;
		case 3:
			profesorIzbornik();
			break;
		case 4:
			System.out.println("Doviđenja");
			break;

		}

	}

	private void profesorIzbornik() {
		System.out.println("@@@@@@@@@ IZBORNIK PROFESORA @@@@@@@@@");
		stavkeProfesorIzbornika();
		switch (Pomocno.ucitajBroj("Odaberite akciju", 1, 5)) {
		case 1:
			prikaziProfesor();
			break;
		case 2:
			dodajNoviProfesor();
			break;
		case 5:
			izbornik();
			break;
		}
		
	}

	private void dodajNoviProfesor() {
		Profesor p = new Profesor();
		p.setSifra(Pomocno.ucitajBroj("Unesi sifru Profesora/ice"));
		p.setIme(Pomocno.ucitajString("Unesi ime Profesora/ice"));
		p.setPrezime(Pomocno.ucitajString("Unesi prezime Profesora/ice"));
		profesori.add(p);
		profesorIzbornik();
		
	}

	private void prikaziProfesor() {
		for (Profesor profesor : profesori) {
			System.out.printf("Ime: %s   Prezime: %s", profesor.getIme(), profesor.getPrezime());
			System.out.println("");
		}
		profesorIzbornik();
		
	}

	private void stavkeProfesorIzbornika() {
		System.out.println("1. Prikazi sve Profesore");
		System.out.println("2. Dodaj novog/u Profesora/icu");
		System.out.println("3. (U izradi)Promjeni postojeceg/cu Profesora/icu");
		System.out.println("4. (U izradi)Obrisi postojeceg/cu Profesora/icu");
		System.out.println("5. Vracanje na glavni izbornik");
		
	}

	private void razredIzbornik() {
		System.out.println("@@@@@@@@@ IZBORNIK RAZREDA @@@@@@@@@");
		stavkeRazredIzbornika();
		switch (Pomocno.ucitajBroj("Odaberite akciju", 1, 5)) {
		case 1:
			prikaziRazred();
			break;
		case 2:
			dodajNoviRazred();
			break;
		case 5:
			izbornik();
			break;
		}

	}

	private void dodajNoviRazred() {
		Razred r = new Razred();
		r.setSifra(Pomocno.ucitajBroj("Unesi sifru razreda"));
		r.setNaziv(Pomocno.ucitajString("Unesi naziv razreda"));
		razredi.add(r);
		razredIzbornik();

	}

	private void prikaziRazred() {
		for (Razred razred : razredi) {
			System.out.printf(razred.getNaziv());
			System.out.println("");
		}
		razredIzbornik();

	}

	private void stavkeRazredIzbornika() {
		System.out.println("1. Prikazi sve Razrede");
		System.out.println("2. Dodaj novi Razred");
		System.out.println("3. (U izradi)Promjeni postojeci Razred");
		System.out.println("4. (U izradi)Obrisi postojecaci Razred");
		System.out.println("5. Vracanje na glavni izbornik");

	}

	private void ucenikIzbornik() {
		System.out.println("@@@@@@@@@ IZBORNIK UCENIKA @@@@@@@@@");
		stavkeUcenikIzbornika();
		switch (Pomocno.ucitajBroj("Odaberite akciju", 1, 5)) {
		case 1:
			prikaziUcenike();
			break;
		case 2:
			dodajNovogUcenika();
			break;
		case 5:
			izbornik();
			break;

		}

	}

	private void stavkeUcenikIzbornika() {
		System.out.println("1. Prikazi sve Ucenike");
		System.out.println("2. Dodaj novog Ucenika/cu");
		System.out.println("3. (U izradi)Promjeni postojecaceg/cu Ucenika/cu");
		System.out.println("4. (U izradi)Obrisi postojecaceg/cu Ucenika/cu");
		System.out.println("5. Vracanje na glavni izbornik");

	}

	private void dodajNovogUcenika() {
		Ucenik u = new Ucenik();
		u.setSifra(Pomocno.ucitajBroj("Unesi sifru ucenika/ce"));
		u.setIme(Pomocno.ucitajString("Unesi ime ucenika/ce"));
		u.setPrezime(Pomocno.ucitajString("Unesi prezime ucenika/ce"));
		ucenici.add(u);
		ucenikIzbornik();

	}

	private void prikaziUcenike() {
		for (Ucenik ucenik : ucenici) {
			System.out.printf("Ime: %s   Prezime: %s", ucenik.getIme(), ucenik.getPrezime());
			System.out.println("");
		}
		ucenikIzbornik();

	}

	private void stavkeIzbornika() {
		System.out.println("1 - Ucenici");
		System.out.println("2 - Razredi");
		System.out.println("3 - Profesori");
		System.out.println("4 - Izlaz");

	}

	public static void main(String[] args) {
		new Start();
	}
}
