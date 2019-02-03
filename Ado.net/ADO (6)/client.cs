using System;

using org;

// This "class" exists only to house the application's entry-point function
class MainApp {
    // Static method called "Main" is application's entry point function
    public static void Main() {

        // Iterate over component's strings and dump them to the console 
		Stringer myStringComp = new Stringer();
		AReverser myReverseComp = new AReverser();
		string[] StringsSet = new string[4];
		string[] RevStringsSet = new string[4];
		
		Console.WriteLine("Strings from StringComponent");				
		for (int index = 0; index < myStringComp.Count; index++) {
			StringsSet[index] = myStringComp.GetString(index);
			Console.WriteLine(StringsSet[index]);
        }	

		RevStringsSet = myReverseComp.Invert(StringsSet);

		Console.WriteLine("\nReversed Array Strings");
		for (int index = 0; index < RevStringsSet.Length; index++) {
			Console.WriteLine(RevStringsSet[index]);
        }	
    }
}
