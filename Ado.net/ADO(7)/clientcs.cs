using System;

using CSStringComp = CompCS.StringComponent;


class MainApp
{
   public static void Main() {

	CSStringComp myCSStringComp = new CSStringComp();
	Console.WriteLine("Strings from C# StringComponent");
	for (int index = 0; index < myCSStringComp.Count; index++) {
	    Console.WriteLine(myCSStringComp.GetString(index));
	}
	
	Console.ReadKey();
   }

}
