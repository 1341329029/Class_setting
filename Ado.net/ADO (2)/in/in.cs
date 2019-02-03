
using System;
#if STRONG
[assembly:System.Reflection.AssemblyVersion("0.0.0.0")]
[assembly:System.Reflection.AssemblyKeyFile("orgKey.snk")]
#endif
namespace Input
{

    public class GeneInput
    {
        public static int GeneInputInt()
        {
            while (true)
            {
                try
                {
                    Console.WriteLine("请输入一个int类型的值");
                    int yInt = int.Parse(Console.ReadLine());
                    return yInt;
                }

                catch (ArgumentNullException e)
                {
                    Console.WriteLine("你输入的数为空, 请重新输入！");
                }
                catch (FormatException e)
                {
                    Console.WriteLine("你输入的不是整数, 请重新输入！");
                }

            }

        }
        public static Double GeneInputDouble()
        {
            while (true)
            {
                try
                {
                    Console.WriteLine("请输入双浮点型类型的值");
                    double yDouble = Double.Parse(Console.ReadLine());
                    return yDouble;
                }
                catch (ArgumentNullException e)
                {
                    Console.WriteLine("你输入的数为空, 请重新输入！");
                }
                catch (FormatException e)
                {
                    Console.WriteLine("你输入的不是双浮点, 请重新输入！");
                }
            }
        }
        public static char GeneInputChar()
        {
            while (true)
            {
                try
                {
                    Console.WriteLine("请输入一个字符的值");
                    char yChar = char.Parse(Console.ReadLine());
                    return yChar;
                }
                catch (ArgumentNullException e)
                {
                    Console.WriteLine("你输入的数为空, 请重新输入！");
                }
                catch (FormatException e)
                {
                    Console.WriteLine("你输入的不是字符, 请重新输入！");
                }

            }

        }

    }
}