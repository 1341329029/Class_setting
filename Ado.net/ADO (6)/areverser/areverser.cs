using System;

namespace org {
	public class AReverser {
		public AReverser() {}
        
		public string[] Invert(string[] myString) {
			System.Array.Reverse(myString);
			return myString;
		}

	}
}