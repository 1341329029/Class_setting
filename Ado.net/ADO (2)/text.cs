using System;
using Input;
using OutPut;
namespace yyy
{
    public class Program
    {
        public static void Main()
        {
            GeneOutPut.GOutput(GeneInput.GeneInputInt());
            GeneOutPut.GOutput(GeneInput.GeneInputDouble());
            GeneOutPut.GOutput(GeneInput.GeneInputChar());
            Console.ReadKey();
        }
    }
}