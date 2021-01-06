package zadatci;

import java.util.Scanner;

public class Vjezba01 {
	
	public static void main(String[] args) {
		Scanner broj = new java.util.Scanner(System.in);

		System.out.println("Unesi 24 broja: ");

		int a[] = new int[4];

		int zbroj = 0;

		for (int i = 0; i < a.length; i++) {
			a[i] = broj.nextInt();
			zbroj += a[i];
		}
		
		int max = a[0], min = a[0];
		
		for (int i = 0; i < a.length; i++) {
			if (max < a[i]) {
				max = a[i];
			}
			if (min > a[i]) {
				min = a[i];
			}
		}

		//System.out.printf("Zbroj je %d\nNajveci je %d\nNajmanji je %d\n", zbroj, max, min);
		System.out.println("Zbroj je ", zbroj);
		System.out.println("Najveci boj je", max);
		System.out.println("Najmanji broj je", min);

	}
	
}
