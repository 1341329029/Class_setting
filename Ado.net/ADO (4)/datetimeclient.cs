using System;
using System.Net;
using System.Net.Sockets;
using System.IO;
using System.Text;

class Client
{
    public static void Main(String[] args)
    {

        TcpClient tcpc = new TcpClient();
        Byte[] read = new Byte[32];

        if (args.Length != 1)
        {
            Console.WriteLine("Please specify a server name in the command line");
            return;
        }

        String server = args[0];

        // Verify that the server exists
        try
        {
            IPHostEntry ipInfo = Dns.GetHostByName(server);
        }
        catch (SocketException socketExcep)
        {
            Console.WriteLine("Cannot find server: " + server + "\nException:\n" + socketExcep.ToString());
            return;
        }

        // Try to connect to the server
        tcpc.Connect(server, 14);
        // Get the stream
        Stream s;
        try
        {
            s = tcpc.GetStream();
        }
        catch (InvalidOperationException)
        {
            Console.WriteLine("Cannot connect to server {0}", server);
            return;
        }

        // Read the stream and convert it to ASII
        int bytes = s.Read(read, 0, read.Length);
        String Time = Encoding.ASCII.GetString(read);

        // Display the data
        Console.WriteLine("Received " + bytes + " bytes");
        Console.WriteLine("Current date and time is: " + Time);

        tcpc.Close();


        // Wait for user response to exit
        Console.WriteLine("Press Enter to exit");
        Console.Read();
    }
}