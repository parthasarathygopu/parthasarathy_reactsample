import java.util.Scanner;
public class task1 {
	public static void main(String args[])
	{
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the string");  
		char[] input = sc.next().toCharArray();
		char check=' ';
		for(int i=0;i<input.length-1;i++)
		{ 
			if(input[i]==input[i+1])
			{
				check=input[i];
				input[i]='#';
				input[i+1]='@';		
			}		
		}
		if(check==Character.MIN_VALUE)
		{
			System.out.println("no repeating word found");
		}
		else
		{	
		   for(int i=0;i<input.length;i++)
		   {
		       if(input[i]==check)
		      {
			       input[i]='#';
		      }
		   }
		    System.out.println(input);
		}
	}

}
