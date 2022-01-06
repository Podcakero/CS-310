import java.util.Scanner;

public class lgstar
{
	public static void main(String... args)
	{
		Scanner scan = new Scanner(System.in);
		System.out.println("Enter N");
		double N = scan.nextDouble();
		System.out.println("Enter Iterations (-1 to calculate Iterations)");
		double Iterations = scan.nextDouble();
		
		if (Iterations == -1)
			System.out.println(lgstar(N));
		else
			System.out.println(main(N, Iterations));
;	}
	
	private static boolean main(double N, double Iterations)
	{
		double ans = lgstar(N);
		
		if (ans == Iterations)
			return true;
		else
			return false;
	}
	
	private static double lgstar(double N)
	{
		if (N > 1.0)
		{
			double N1 = Math.floor(Math.log10(N)/Math.log10(2));
			return 1.0 + lgstar(N1);
		}
		else
			return 0.0;
	}
}
