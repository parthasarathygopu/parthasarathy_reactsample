import java.util.Scanner;
public class pyramid1{
	public static void main(String args[])
	{
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the no of rows");  
		int n = sc.nextInt();
		int j,k,i;
		for(i=1;i<=n;i++)
		{ 
	       for(j=n;j>i;j--)
		   {
			   System.out.print(" "); 
		   }
		   for(k=1;k<=2*i-1;k++)
		   {
			   System.out.print("*"); 
		   }
		   System.out.print("\n"); 
		}
	}

}
