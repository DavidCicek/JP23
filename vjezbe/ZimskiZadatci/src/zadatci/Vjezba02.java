package zadatci;

public class Vjezba02 {
	
	public static void main(String[] args) {
        int tablica = 15;
        printMultiplicationTable(tablica);
    }
     
    public static void printMultiplicationTable(int tablica) {
        // first print the top header row
        System.out.format("     |");
        for(int i = 1; i<=tablica;i++ ) {
            System.out.format("%4d",i);
        }
        System.out.format("\n ----+");
        for(int i = 1; i<=tablica;i++ ) {
        	System.out.format("----");
        	//System.out.format("————");
        }
        System.out.format("\n");
         
        for(int i = 1 ;i<=tablica;i++) {
            System.out.format("%4d |",i);
            for(int j=1;j<=tablica;j++) {
                System.out.format("%4d",i*j);
            }
            System.out.println();
        }
    }
	
}
