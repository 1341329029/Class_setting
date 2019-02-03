using System;
namespace CompCS
{
    public class StringComponent
    {
        private string[] StringSet;

        public StringComponent()
        {
            StringSet = new string[] {
            "C# String 0",
            "C# String 1",
            "C# String 2",
            "C# String 3"
         };
        }

        public string GetString(int index)
        {
            if ((index < 0) || (index >= StringSet.Length))
            {
                throw new IndexOutOfRangeException();
            }
            return StringSet[index];
        }

        public int Count
        {
            get { return StringSet.Length; }
        }
    }
}
class Program
{
    static void Main(string[] args)
    {
    }
}
