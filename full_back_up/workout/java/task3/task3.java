import java.util.Scanner;
abstract class company
{
  public void test()
  {
    System.out.println("extending the content from another  class");
  }
  abstract void test1();
}
public class task3 extends company
{
	public static void main(String args[])
	{
	    company obj = new company(){} ;
	    company obj2=new task3();
	    obj2.test();
		obj.test();
		task3 obj1 = new task3();
		obj1.test();


}
}
