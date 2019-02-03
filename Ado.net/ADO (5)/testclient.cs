using System;
using System.Runtime;
using System.Runtime.Remoting;
using System.Runtime.Remoting.Channels;
using System.Runtime.Remoting.Channels.Tcp;
using System.Runtime.Remoting.Channels.Http;
using System.IO;

namespace Lab13 {
	public class TestClient
	{
		public static int Main(string [] args) {

			HttpChannel chan1 = new HttpChannel();
			ChannelServices.RegisterChannel(chan1);
			AServer aServer =(AServer)Activator.GetObject(
				typeof(Lab13.AServer), 
				"http://localhost:8086/DoAuthentication");

			TcpChannel chan2 = new TcpChannel();
			ChannelServices.RegisterChannel(chan2);
			FServer fServer = (FServer)Activator.GetObject(
				typeof(Lab13.FServer), 
				"tcp://localhost:8085/DoFulfillment");
			

			
			


			try {
				bool passed = aServer.Authenticate(1234);
				Console.WriteLine(
					"Authentication Server Customer 1234 Authorization: {0}",
					passed.ToString() );
				if (passed) {
					bool shipped = fServer.Fulfill(1234, 5678);
					Console.WriteLine(
						"Fulfillment Server Customer 1234 Item Number 5678 Shipped: {0}",
						shipped.ToString() );
				}
			}
			catch (IOException ioExcep) {
				Console.WriteLine("Remote IO Error" + 
					"\nException:\n" + ioExcep.ToString());
				return 1;
			}
			return 0;
		}
	}
}