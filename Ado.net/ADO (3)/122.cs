using System;
using System.Runtime.InteropServices;
namespace Delegate {  
        // 管道超温报警器
        public class Heater {  
           private int temperature;  
           public string type = "管道温度";
           public string area = "吉林化工";  
           //声明委托  
           public delegate void HeatEventHandler(Object sender, HeatEventArgs e);  
           public event HeatEventHandler Heat; //声明事件  
      
           // 定义HeatEventArgs类，传递给Observer所感兴趣的信息  
           public class HeatEventArgs : EventArgs {  
               public readonly int temperature;  
               public HeatEventArgs(int temperature) {  
                  this.temperature = temperature;  
               }  
           }  
      
           // 可以供继承自 Heater 的类重写，以便继承类拒绝其他对象对它的监视  
           protected virtual void OnHeat(HeatEventArgs e) {  
               if (Heat != null) { // 如果有对象注册  
                  Heat(this, e);  // 调用所有注册对象的方法  
               }  
           }  
             
           // 超温。  
           public void OverHeat() {
               Console.WriteLine("请输入警戒温度值");
               int a = Convert.ToInt32(Console.ReadLine());//输入警戒温度值
               for (int i = 0; i <= 100; i++) {       
                  temperature = i;
                  Console.WriteLine("现在温度{0}", i);
                  Console.WriteLine();
                  if (temperature > a) {  
                      //建立HeatEventArgs 对象。  
                      HeatEventArgs e = new HeatEventArgs(temperature);
                      OnHeat(e);  // 调用 Heat方法  
                  }  
               }
               Console.WriteLine("GANE OVER");
           }  
        }  
      
        // 警报器  
        public class Alarm {
            [DllImport("kernel32.dll")]
            private static extern int Beep(int dwFreq, int dwDuration); 
           public void MakeAlert(Object sender, Heater.HeatEventArgs e) {  
               Heater heater = (Heater)sender;
               //访问 sender 中的公共字段  
               Console.WriteLine("{0} - {1}: ", heater.area, heater.type);
               int a = 0X7FF;  //发生频率(Hz)
               int b = 1000;  //持续时间(毫秒)
               Beep(a, b); 
               Console.WriteLine("管道已经 {0} 度了：", e.temperature);  
               Console.WriteLine();  
           }  
        }  
      
        // 显示器  
        public class Display {  
           public static void ShowMsg(Object sender, Heater.HeatEventArgs e) {   //静态方法  
               Heater heater = (Heater)sender;  
               Console.WriteLine("{0} - {1}: ", heater.area, heater.type);  
               Console.WriteLine("管道超温了，当前温度：{0}度。", e.temperature);  
               Console.WriteLine();  
           }  
        }  
      
        class Program {  
           static void Main() {  
               Heater heater = new Heater();  
               Alarm alarm = new Alarm();  
      
               heater.Heat += alarm.MakeAlert;   //注册方法  
               heater.Heat += (new Alarm()).MakeAlert;      //给匿名对象注册方法  
               heater.Heat += new Heater.HeatEventHandler(alarm.MakeAlert);    //也可以这么注册  
               heater.Heat += Display.ShowMsg;      //注册静态方法  
               heater.OverHeat();   //会自动调用注册过对象的方法  
           }  
        }  
    }  
      
    