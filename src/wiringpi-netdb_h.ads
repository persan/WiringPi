pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
with WiringPI.bits_types_h;
with WiringPI.stddef_h;
limited with WiringPI.bits_netdb_h;
with WiringPI.bits_stdint_uintn_h;
with WiringPI.bits_sockaddr_h;
with WiringPI.unistd_h;
limited with WiringPI.bits_socket_h;

package WiringPI.netdb_h is

   --  unsupported macro: h_errno (*__h_errno_location ())
   HOST_NOT_FOUND : constant := 1;  --  /usr/include/netdb.h:63
   TRY_AGAIN : constant := 2;  --  /usr/include/netdb.h:64

   NO_RECOVERY : constant := 3;  --  /usr/include/netdb.h:66

   NO_DATA : constant := 4;  --  /usr/include/netdb.h:68

   NETDB_INTERNAL : constant := -1;  --  /usr/include/netdb.h:72
   NETDB_SUCCESS : constant := 0;  --  /usr/include/netdb.h:73
   --  unsupported macro: NO_ADDRESS NO_DATA

   IPPORT_RESERVED : constant := 1024;  --  /usr/include/netdb.h:79
   --  unsupported macro: h_addr h_addr_list[0]

   AI_PASSIVE : constant := 16#0001#;  --  /usr/include/netdb.h:596
   AI_CANONNAME : constant := 16#0002#;  --  /usr/include/netdb.h:597
   AI_NUMERICHOST : constant := 16#0004#;  --  /usr/include/netdb.h:598
   AI_V4MAPPED : constant := 16#0008#;  --  /usr/include/netdb.h:599
   AI_ALL : constant := 16#0010#;  --  /usr/include/netdb.h:600
   AI_ADDRCONFIG : constant := 16#0020#;  --  /usr/include/netdb.h:601

   AI_NUMERICSERV : constant := 16#0400#;  --  /usr/include/netdb.h:613

   EAI_BADFLAGS : constant := -1;  --  /usr/include/netdb.h:616
   EAI_NONAME : constant := -2;  --  /usr/include/netdb.h:617
   EAI_AGAIN : constant := -3;  --  /usr/include/netdb.h:618
   EAI_FAIL : constant := -4;  --  /usr/include/netdb.h:619
   EAI_FAMILY : constant := -6;  --  /usr/include/netdb.h:620
   EAI_SOCKTYPE : constant := -7;  --  /usr/include/netdb.h:621
   EAI_SERVICE : constant := -8;  --  /usr/include/netdb.h:622
   EAI_MEMORY : constant := -10;  --  /usr/include/netdb.h:623
   EAI_SYSTEM : constant := -11;  --  /usr/include/netdb.h:624
   EAI_OVERFLOW : constant := -12;  --  /usr/include/netdb.h:625

   NI_MAXHOST : constant := 1025;  --  /usr/include/netdb.h:638
   NI_MAXSERV : constant := 32;  --  /usr/include/netdb.h:639

   NI_NUMERICHOST : constant := 1;  --  /usr/include/netdb.h:642
   NI_NUMERICSERV : constant := 2;  --  /usr/include/netdb.h:643
   NI_NOFQDN : constant := 4;  --  /usr/include/netdb.h:644
   NI_NAMEREQD : constant := 8;  --  /usr/include/netdb.h:645
   NI_DGRAM : constant := 16;  --  /usr/include/netdb.h:646

   --  skipped func __h_errno_location

   procedure herror (uu_str : Interfaces.C.Strings.chars_ptr)  -- /usr/include/netdb.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "herror";

   function hstrerror (uu_err_num : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/netdb.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "hstrerror";

   type hostent is record
      h_name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/netdb.h:100
      h_aliases : System.Address;  -- /usr/include/netdb.h:101
      h_addrtype : aliased int;  -- /usr/include/netdb.h:102
      h_length : aliased int;  -- /usr/include/netdb.h:103
      h_addr_list : System.Address;  -- /usr/include/netdb.h:104
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/netdb.h:98

   procedure sethostent (uu_stay_open : int)  -- /usr/include/netdb.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "sethostent";

   procedure endhostent  -- /usr/include/netdb.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "endhostent";

   function gethostent return access hostent  -- /usr/include/netdb.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gethostent";

   function gethostbyaddr
     (uu_addr : System.Address;
      uu_len : WiringPI.bits_types_h.uu_socklen_t;
      uu_type : int) return access hostent  -- /usr/include/netdb.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "gethostbyaddr";

   function gethostbyname (uu_name : Interfaces.C.Strings.chars_ptr) return access hostent  -- /usr/include/netdb.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "gethostbyname";

   function gethostbyname2 (uu_name : Interfaces.C.Strings.chars_ptr; uu_af : int) return access hostent  -- /usr/include/netdb.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gethostbyname2";

   function gethostent_r
     (uu_result_buf : access hostent;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_buflen : WiringPI.stddef_h.size_t;
      uu_result : System.Address;
      uu_h_errnop : access int) return int  -- /usr/include/netdb.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "gethostent_r";

   function gethostbyaddr_r
     (uu_addr : System.Address;
      uu_len : WiringPI.bits_types_h.uu_socklen_t;
      uu_type : int;
      uu_result_buf : access hostent;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_buflen : WiringPI.stddef_h.size_t;
      uu_result : System.Address;
      uu_h_errnop : access int) return int  -- /usr/include/netdb.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "gethostbyaddr_r";

   function gethostbyname_r
     (uu_name : Interfaces.C.Strings.chars_ptr;
      uu_result_buf : access hostent;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_buflen : WiringPI.stddef_h.size_t;
      uu_result : System.Address;
      uu_h_errnop : access int) return int  -- /usr/include/netdb.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "gethostbyname_r";

   function gethostbyname2_r
     (uu_name : Interfaces.C.Strings.chars_ptr;
      uu_af : int;
      uu_result_buf : access hostent;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_buflen : WiringPI.stddef_h.size_t;
      uu_result : System.Address;
      uu_h_errnop : access int) return int  -- /usr/include/netdb.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "gethostbyname2_r";

   procedure setnetent (uu_stay_open : int)  -- /usr/include/netdb.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "setnetent";

   procedure endnetent  -- /usr/include/netdb.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "endnetent";

   function getnetent return access WiringPI.bits_netdb_h.netent  -- /usr/include/netdb.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "getnetent";

   function getnetbyaddr (uu_net : WiringPI.bits_stdint_uintn_h.uint32_t; uu_type : int) return access WiringPI.bits_netdb_h.netent  -- /usr/include/netdb.h:216
   with Import => True, 
        Convention => C, 
        External_Name => "getnetbyaddr";

   function getnetbyname (uu_name : Interfaces.C.Strings.chars_ptr) return access WiringPI.bits_netdb_h.netent  -- /usr/include/netdb.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "getnetbyname";

   function getnetent_r
     (uu_result_buf : access WiringPI.bits_netdb_h.netent;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_buflen : WiringPI.stddef_h.size_t;
      uu_result : System.Address;
      uu_h_errnop : access int) return int  -- /usr/include/netdb.h:235
   with Import => True, 
        Convention => C, 
        External_Name => "getnetent_r";

   function getnetbyaddr_r
     (uu_net : WiringPI.bits_stdint_uintn_h.uint32_t;
      uu_type : int;
      uu_result_buf : access WiringPI.bits_netdb_h.netent;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_buflen : WiringPI.stddef_h.size_t;
      uu_result : System.Address;
      uu_h_errnop : access int) return int  -- /usr/include/netdb.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "getnetbyaddr_r";

   function getnetbyname_r
     (uu_name : Interfaces.C.Strings.chars_ptr;
      uu_result_buf : access WiringPI.bits_netdb_h.netent;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_buflen : WiringPI.stddef_h.size_t;
      uu_result : System.Address;
      uu_h_errnop : access int) return int  -- /usr/include/netdb.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "getnetbyname_r";

   type servent is record
      s_name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/netdb.h:257
      s_aliases : System.Address;  -- /usr/include/netdb.h:258
      s_port : aliased int;  -- /usr/include/netdb.h:259
      s_proto : Interfaces.C.Strings.chars_ptr;  -- /usr/include/netdb.h:260
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/netdb.h:255

   procedure setservent (uu_stay_open : int)  -- /usr/include/netdb.h:268
   with Import => True, 
        Convention => C, 
        External_Name => "setservent";

   procedure endservent  -- /usr/include/netdb.h:274
   with Import => True, 
        Convention => C, 
        External_Name => "endservent";

   function getservent return access servent  -- /usr/include/netdb.h:281
   with Import => True, 
        Convention => C, 
        External_Name => "getservent";

   function getservbyname (uu_name : Interfaces.C.Strings.chars_ptr; uu_proto : Interfaces.C.Strings.chars_ptr) return access servent  -- /usr/include/netdb.h:288
   with Import => True, 
        Convention => C, 
        External_Name => "getservbyname";

   function getservbyport (uu_port : int; uu_proto : Interfaces.C.Strings.chars_ptr) return access servent  -- /usr/include/netdb.h:295
   with Import => True, 
        Convention => C, 
        External_Name => "getservbyport";

   function getservent_r
     (uu_result_buf : access servent;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_buflen : WiringPI.stddef_h.size_t;
      uu_result : System.Address) return int  -- /usr/include/netdb.h:306
   with Import => True, 
        Convention => C, 
        External_Name => "getservent_r";

   function getservbyname_r
     (uu_name : Interfaces.C.Strings.chars_ptr;
      uu_proto : Interfaces.C.Strings.chars_ptr;
      uu_result_buf : access servent;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_buflen : WiringPI.stddef_h.size_t;
      uu_result : System.Address) return int  -- /usr/include/netdb.h:310
   with Import => True, 
        Convention => C, 
        External_Name => "getservbyname_r";

   function getservbyport_r
     (uu_port : int;
      uu_proto : Interfaces.C.Strings.chars_ptr;
      uu_result_buf : access servent;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_buflen : WiringPI.stddef_h.size_t;
      uu_result : System.Address) return int  -- /usr/include/netdb.h:316
   with Import => True, 
        Convention => C, 
        External_Name => "getservbyport_r";

   type protoent is record
      p_name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/netdb.h:326
      p_aliases : System.Address;  -- /usr/include/netdb.h:327
      p_proto : aliased int;  -- /usr/include/netdb.h:328
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/netdb.h:324

   procedure setprotoent (uu_stay_open : int)  -- /usr/include/netdb.h:336
   with Import => True, 
        Convention => C, 
        External_Name => "setprotoent";

   procedure endprotoent  -- /usr/include/netdb.h:342
   with Import => True, 
        Convention => C, 
        External_Name => "endprotoent";

   function getprotoent return access protoent  -- /usr/include/netdb.h:349
   with Import => True, 
        Convention => C, 
        External_Name => "getprotoent";

   function getprotobyname (uu_name : Interfaces.C.Strings.chars_ptr) return access protoent  -- /usr/include/netdb.h:355
   with Import => True, 
        Convention => C, 
        External_Name => "getprotobyname";

   function getprotobynumber (uu_proto : int) return access protoent  -- /usr/include/netdb.h:361
   with Import => True, 
        Convention => C, 
        External_Name => "getprotobynumber";

   function getprotoent_r
     (uu_result_buf : access protoent;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_buflen : WiringPI.stddef_h.size_t;
      uu_result : System.Address) return int  -- /usr/include/netdb.h:372
   with Import => True, 
        Convention => C, 
        External_Name => "getprotoent_r";

   function getprotobyname_r
     (uu_name : Interfaces.C.Strings.chars_ptr;
      uu_result_buf : access protoent;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_buflen : WiringPI.stddef_h.size_t;
      uu_result : System.Address) return int  -- /usr/include/netdb.h:376
   with Import => True, 
        Convention => C, 
        External_Name => "getprotobyname_r";

   function getprotobynumber_r
     (uu_proto : int;
      uu_result_buf : access protoent;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_buflen : WiringPI.stddef_h.size_t;
      uu_result : System.Address) return int  -- /usr/include/netdb.h:381
   with Import => True, 
        Convention => C, 
        External_Name => "getprotobynumber_r";

   function setnetgrent (uu_netgroup : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/netdb.h:393
   with Import => True, 
        Convention => C, 
        External_Name => "setnetgrent";

   procedure endnetgrent  -- /usr/include/netdb.h:401
   with Import => True, 
        Convention => C, 
        External_Name => "endnetgrent";

   function getnetgrent
     (uu_hostp : System.Address;
      uu_userp : System.Address;
      uu_domainp : System.Address) return int  -- /usr/include/netdb.h:410
   with Import => True, 
        Convention => C, 
        External_Name => "getnetgrent";

   function innetgr
     (uu_netgroup : Interfaces.C.Strings.chars_ptr;
      uu_host : Interfaces.C.Strings.chars_ptr;
      uu_user : Interfaces.C.Strings.chars_ptr;
      uu_domain : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/netdb.h:421
   with Import => True, 
        Convention => C, 
        External_Name => "innetgr";

   function getnetgrent_r
     (uu_hostp : System.Address;
      uu_userp : System.Address;
      uu_domainp : System.Address;
      uu_buffer : Interfaces.C.Strings.chars_ptr;
      uu_buflen : WiringPI.stddef_h.size_t) return int  -- /usr/include/netdb.h:430
   with Import => True, 
        Convention => C, 
        External_Name => "getnetgrent_r";

   function rcmd
     (uu_ahost : System.Address;
      uu_rport : unsigned_short;
      uu_locuser : Interfaces.C.Strings.chars_ptr;
      uu_remuser : Interfaces.C.Strings.chars_ptr;
      uu_cmd : Interfaces.C.Strings.chars_ptr;
      uu_fd2p : access int) return int  -- /usr/include/netdb.h:449
   with Import => True, 
        Convention => C, 
        External_Name => "rcmd";

   function rcmd_af
     (uu_ahost : System.Address;
      uu_rport : unsigned_short;
      uu_locuser : Interfaces.C.Strings.chars_ptr;
      uu_remuser : Interfaces.C.Strings.chars_ptr;
      uu_cmd : Interfaces.C.Strings.chars_ptr;
      uu_fd2p : access int;
      uu_af : WiringPI.bits_sockaddr_h.sa_family_t) return int  -- /usr/include/netdb.h:461
   with Import => True, 
        Convention => C, 
        External_Name => "rcmd_af";

   function rexec
     (uu_ahost : System.Address;
      uu_rport : int;
      uu_name : Interfaces.C.Strings.chars_ptr;
      uu_pass : Interfaces.C.Strings.chars_ptr;
      uu_cmd : Interfaces.C.Strings.chars_ptr;
      uu_fd2p : access int) return int  -- /usr/include/netdb.h:477
   with Import => True, 
        Convention => C, 
        External_Name => "rexec";

   function rexec_af
     (uu_ahost : System.Address;
      uu_rport : int;
      uu_name : Interfaces.C.Strings.chars_ptr;
      uu_pass : Interfaces.C.Strings.chars_ptr;
      uu_cmd : Interfaces.C.Strings.chars_ptr;
      uu_fd2p : access int;
      uu_af : WiringPI.bits_sockaddr_h.sa_family_t) return int  -- /usr/include/netdb.h:489
   with Import => True, 
        Convention => C, 
        External_Name => "rexec_af";

   function ruserok
     (uu_rhost : Interfaces.C.Strings.chars_ptr;
      uu_suser : int;
      uu_remuser : Interfaces.C.Strings.chars_ptr;
      uu_locuser : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/netdb.h:503
   with Import => True, 
        Convention => C, 
        External_Name => "ruserok";

   function ruserok_af
     (uu_rhost : Interfaces.C.Strings.chars_ptr;
      uu_suser : int;
      uu_remuser : Interfaces.C.Strings.chars_ptr;
      uu_locuser : Interfaces.C.Strings.chars_ptr;
      uu_af : WiringPI.bits_sockaddr_h.sa_family_t) return int  -- /usr/include/netdb.h:513
   with Import => True, 
        Convention => C, 
        External_Name => "ruserok_af";

   function iruserok
     (uu_raddr : WiringPI.bits_stdint_uintn_h.uint32_t;
      uu_suser : int;
      uu_remuser : Interfaces.C.Strings.chars_ptr;
      uu_locuser : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/netdb.h:526
   with Import => True, 
        Convention => C, 
        External_Name => "iruserok";

   function iruserok_af
     (uu_raddr : System.Address;
      uu_suser : int;
      uu_remuser : Interfaces.C.Strings.chars_ptr;
      uu_locuser : Interfaces.C.Strings.chars_ptr;
      uu_af : WiringPI.bits_sockaddr_h.sa_family_t) return int  -- /usr/include/netdb.h:537
   with Import => True, 
        Convention => C, 
        External_Name => "iruserok_af";

   function rresvport (uu_alport : access int) return int  -- /usr/include/netdb.h:549
   with Import => True, 
        Convention => C, 
        External_Name => "rresvport";

   function rresvport_af (uu_alport : access int; uu_af : WiringPI.bits_sockaddr_h.sa_family_t) return int  -- /usr/include/netdb.h:558
   with Import => True, 
        Convention => C, 
        External_Name => "rresvport_af";

   type addrinfo;
   type addrinfo is record
      ai_flags : aliased int;  -- /usr/include/netdb.h:567
      ai_family : aliased int;  -- /usr/include/netdb.h:568
      ai_socktype : aliased int;  -- /usr/include/netdb.h:569
      ai_protocol : aliased int;  -- /usr/include/netdb.h:570
      ai_addrlen : aliased WiringPI.unistd_h.socklen_t;  -- /usr/include/netdb.h:571
      ai_addr : access WiringPI.bits_socket_h.sockaddr;  -- /usr/include/netdb.h:572
      ai_canonname : Interfaces.C.Strings.chars_ptr;  -- /usr/include/netdb.h:573
      ai_next : access addrinfo;  -- /usr/include/netdb.h:574
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/netdb.h:565

   function getaddrinfo
     (uu_name : Interfaces.C.Strings.chars_ptr;
      uu_service : Interfaces.C.Strings.chars_ptr;
      uu_req : access constant addrinfo;
      uu_pai : System.Address) return int  -- /usr/include/netdb.h:660
   with Import => True, 
        Convention => C, 
        External_Name => "getaddrinfo";

   procedure freeaddrinfo (uu_ai : access addrinfo)  -- /usr/include/netdb.h:666
   with Import => True, 
        Convention => C, 
        External_Name => "freeaddrinfo";

   function gai_strerror (uu_ecode : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/netdb.h:669
   with Import => True, 
        Convention => C, 
        External_Name => "gai_strerror";

   function getnameinfo
     (uu_sa : access constant WiringPI.bits_socket_h.sockaddr;
      uu_salen : WiringPI.unistd_h.socklen_t;
      uu_host : Interfaces.C.Strings.chars_ptr;
      uu_hostlen : WiringPI.unistd_h.socklen_t;
      uu_serv : Interfaces.C.Strings.chars_ptr;
      uu_servlen : WiringPI.unistd_h.socklen_t;
      uu_flags : int) return int  -- /usr/include/netdb.h:675
   with Import => True, 
        Convention => C, 
        External_Name => "getnameinfo";

end WiringPI.netdb_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
