import java.util.Scanner;
public class square {
	public static void main(String args[])
	{
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the no of rows");  
		int n = sc.nextInt();
		int j,k,i;
		for(i=1;i<=n;i++)
		{ 
	       for(j=1;j<=n;j++)
		   {
		      if(i==n ||j==n ||i==1 ||j==1)
		      {
		          System.out.print("*"); 
		      }
		      else
		      {
			   System.out.print(" ");
			  } 
		   }
		   System.out.print("\n"); 
		}
	}

}
