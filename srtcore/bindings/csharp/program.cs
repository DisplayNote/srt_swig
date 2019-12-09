using System;
//using System.Net;
//using System.Runtime.InteropServices;
//using System.Security.Permissions;
//using SrtSharp;

namespace srtapp
{
    class Program 
    {
        private const int AF_INET = 2;
        private const int SOCK_DGRAM = 2; /* datagram socket */
        private const int INET_ADDRSTRLEN = 22;
        private const int DEFAULT_CHUNK = 1328;
        private const int INET6_ADDRSTRLEN = 65;

        static void Main(string[] args)
        {
            Console.WriteLine("Connecting to srt://88.198.225.93:9000");
  /*          
            var startup = srt.srt_startup();

            Console.WriteLine($"Startup: {startup}");
            
            var name = "88.198.225.93";
            var port = 9000;

            IPAddress Destination = IPAddress.Parse(name);

            var m_bindsock = srt.srt_socket(AF_INET, SOCK_DGRAM, 0);
            
            Console.WriteLine($"Socket: {m_bindsock}");

            SrtSharp.sockaddr_in sin = new sockaddr_in()
            {
                sin_family = AF_INET,
                sin_port = (ushort)IPAddress.HostToNetworkOrder((short)port),
#pragma warning disable 618
                sin_addr = (uint)Destination.Address,
#pragma warning restore 618
                sin_zero = 0
            };

            GCHandle hnd = GCHandle.Alloc(sin,GCHandleType.Pinned);

            var sockaddr = new SWIGTYPE_p_sockaddr(hnd.AddrOfPinnedObject(),false);

            var stat = srt.srt_connect(m_bindsock,sockaddr, 16);
            
            Console.WriteLine($"Connect: {stat}");

          

            var m_running = true;
            //var buf = Marshal.AllocHGlobal(DEFAULT_CHUNK * 2);
            var buf = new byte[DEFAULT_CHUNK * 2];
            while (m_running)
            {
                stat = srt.srt_recvmsg(m_bindsock, buf, DEFAULT_CHUNK);

                if (stat == srt.SRT_ERROR)
                {
                    m_running = false;
                    Console.WriteLine($"Error in reading loop.");
                }
                else
                {
                    Console.Write(".");
                }
            }
    */         
        }
    }
}