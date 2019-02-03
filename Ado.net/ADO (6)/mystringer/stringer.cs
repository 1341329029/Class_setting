using System;
namespace org {
   public class Stringer {
      private string[] StringSet;

      public Stringer() {
         StringSet = new string[] {
            "C# String 0",
            "C# String 1",
            "C# String 2",
            "C# String 3"
	    
         };
      }

     public string GetString(int index) {
        if ((index < 0) || (index >= StringSet.Length)) {
          throw new IndexOutOfRangeException();
        }
        return StringSet[index];
     }

     public int Count {
         get { return StringSet.Length; }
     }
   }
}