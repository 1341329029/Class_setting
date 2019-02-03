using System;
using System.Runtime.Remoting;
using System.Runtime.Remoting.Channels;
using System.Runtime.Remoting.Channels.Http;
namespace Lab13 {

	public class AServer : MarshalByRefObject {

		public Random aRandom;

		public static int Main(string [] args) {

			HttpChannel chan1 = new HttpChannel(8086);

			ChannelServices.RegisterChannel(chan1);

			RemotingConfiguration.RegisterWellKnownServiceType(
				typeof(Lab13.AServer), 
				"DoAuthentication",
				WellKnownObjectMode.Singleton				);


			System.Console.WriteLine("Press Enter key to exit");
			System.Console.ReadLine();
			return 0;
		}

		public AServer() {
			aRandom = new Random();
			Console.WriteLine("AServer activated");
		}


		public bool Authenticate(int customerID) {

			double aRandomNumber =  aRandom.NextDouble();
			bool passed;
			if (aRandomNumber < 0.5) passed = false; else passed = true;
			Console.WriteLine(
				"Authentication Server CustomerID: {0} Passed: {1}", 
				customerID, passed.ToString());
			return passed;
		}
	}
}
