using System;

namespace OutPut
{
    public class GeneOutPut
    {
        public static void Main()
        {
            
            int yInt = 2;
            double yDouble = 5.2;
            char yChar = 'y';

            GeneOutPut.GOutput(yInt);
            GeneOutPut.GOutput(yDouble);
            GeneOutPut.GOutput(yChar);
            Console.ReadKey();
        }

        
        public static void GOutput(int yInt)
        {
            Console.WriteLine("整型：" + yInt);
        }
      
        public static void GOutput(double yDouble)
        {
            Console.WriteLine("双精度浮点型：" + yDouble);
        }
       
        public static void GOutput(char yChar)
        {
            Console.WriteLine("字符型数据：" + yChar);
        }


    }
}