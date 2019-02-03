using System;
using System.Runtime.Remoting;
using System.Runtime.Remoting.Channels;
using System.Runtime.Remoting.Channels.Tcp;
namespace Lab13 {

	public class FServer : MarshalByRefObject {

		public Random aRandom;

		public static int Main(string [] args) {

			TcpChannel chan1 = new TcpChannel(8085);

			ChannelServices.RegisterChannel(chan1);


			RemotingConfiguration.RegisterWellKnownServiceType(
				typeof(Lab13.FServer), 
				"DoFulfillment", 
				WellKnownObjectMode.Singleton);

			System.Console.WriteLine("Press Enter key to exit");
			System.Console.ReadLine();
			return 0;
		}

		public FServer() {
			aRandom = new Random();
			Console.WriteLine("FServer activated");
		}


		public bool Fulfill(int customerID, int itemNumber) {

			double aRandomNumber =  aRandom.NextDouble();
			bool shipped;
			if (aRandomNumber < 0.5) shipped = false; else shipped = true;
			Console.WriteLine(
				"Fulfillment Server CustomerID: {0} Item Number: {1} Shipped: {2}", 
				customerID, itemNumber, shipped.ToString());
			return shipped;
		}
	}
}
