package prac01;

public class basic02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		basic02 b2 = new basic02();
//		b2.while_prac();
//		b2.while_prac2();
//		b2.for_prac();
//		b2.for_prac2();
		b2.for_each_prac();
		
	}
	
	
	public static void while_prac() {
		boolean x = true;
		int a = 1;
		int sum = 0;
		
		while (x) {
			if (a % 3 == 0) {
				sum += a;
			}
			
			a++;
			
			if (a > 1000) {
				break;
			}
		}
		
		System.out.println(sum);
	}
	
	public static void while_prac2() {
		boolean x = true;
		int i = 1;
		
		while (x) {
			System.out.print("*".repeat(i) + "\n");
			
			i++;
			if (i>5) x = false;
		}
	}
	
	public static void for_prac() {
		for (int i=1; i<6; i++) {
			System.out.println("*".repeat(i));
		}
	}
	
	public static void for_prac2() {
		for (int i=1; i<101; i++) {
			System.out.println(i);
		}
	}
	
	public static void for_each_prac() {
		int[] marks = {70, 60, 55, 75, 95, 90, 80, 80, 85, 100};
		int sum = 0;
		for (int mark : marks) {
			sum += mark;
		}
		int count = marks.length;
		
		System.out.println(sum/count);
	}
}