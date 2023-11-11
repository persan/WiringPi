pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with WiringPI.netinet_in_h;
with System;
with WiringPI.unistd_h;
with WiringPI.stddef_h;

package WiringPI.arpa_inet_h is

   function inet_addr (uu_cp : Interfaces.C.Strings.chars_ptr) return WiringPI.netinet_in_h.in_addr_t  -- /usr/include/arpa/inet.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "inet_addr";

   function inet_lnaof (uu_in : WiringPI.netinet_in_h.in_addr) return WiringPI.netinet_in_h.in_addr_t  -- /usr/include/arpa/inet.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "inet_lnaof";

   function inet_makeaddr (uu_net : WiringPI.netinet_in_h.in_addr_t; uu_host : WiringPI.netinet_in_h.in_addr_t) return WiringPI.netinet_in_h.in_addr  -- /usr/include/arpa/inet.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "inet_makeaddr";

   function inet_netof (uu_in : WiringPI.netinet_in_h.in_addr) return WiringPI.netinet_in_h.in_addr_t  -- /usr/include/arpa/inet.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "inet_netof";

   function inet_network (uu_cp : Interfaces.C.Strings.chars_ptr) return WiringPI.netinet_in_h.in_addr_t  -- /usr/include/arpa/inet.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "inet_network";

   function inet_ntoa (uu_in : WiringPI.netinet_in_h.in_addr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/arpa/inet.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "inet_ntoa";

   function inet_pton
     (uu_af : int;
      uu_cp : Interfaces.C.Strings.chars_ptr;
      uu_buf : System.Address) return int  -- /usr/include/arpa/inet.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "inet_pton";

   function inet_ntop
     (uu_af : int;
      uu_cp : System.Address;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_len : WiringPI.unistd_h.socklen_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/arpa/inet.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "inet_ntop";

   function inet_aton (uu_cp : Interfaces.C.Strings.chars_ptr; uu_inp : access WiringPI.netinet_in_h.in_addr) return int  -- /usr/include/arpa/inet.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "inet_aton";

   function inet_neta
     (uu_net : WiringPI.netinet_in_h.in_addr_t;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_len : WiringPI.stddef_h.size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/arpa/inet.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "inet_neta";

   function inet_net_ntop
     (uu_af : int;
      uu_cp : System.Address;
      uu_bits : int;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_len : WiringPI.stddef_h.size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/arpa/inet.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "inet_net_ntop";

   function inet_net_pton
     (uu_af : int;
      uu_cp : Interfaces.C.Strings.chars_ptr;
      uu_buf : System.Address;
      uu_len : WiringPI.stddef_h.size_t) return int  -- /usr/include/arpa/inet.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "inet_net_pton";

   function inet_nsap_addr
     (uu_cp : Interfaces.C.Strings.chars_ptr;
      uu_buf : access unsigned_char;
      uu_len : int) return unsigned  -- /usr/include/arpa/inet.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "inet_nsap_addr";

   function inet_nsap_ntoa
     (uu_len : int;
      uu_cp : access unsigned_char;
      uu_buf : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/arpa/inet.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "inet_nsap_ntoa";

end WiringPI.arpa_inet_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
