pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with WiringPI.bits_socket_h;
with WiringPI.unistd_h;
with System;
with WiringPI.stddef_h;
with WiringPI.stdio_h;

package WiringPI.sys_socket_h is

   --  unsupported macro: SHUT_RD SHUT_RD
   --  unsupported macro: SHUT_WR SHUT_WR
   --  unsupported macro: SHUT_RDWR SHUT_RDWR
   function socket
     (uu_domain : int;
      uu_type : int;
      uu_protocol : int) return int  -- /usr/include/sys/socket.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "socket";

   function socketpair
     (uu_domain : int;
      uu_type : int;
      uu_protocol : int;
      uu_fds : access int) return int  -- /usr/include/sys/socket.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "socketpair";

   function bind
     (uu_fd : int;
      uu_addr : access constant WiringPI.bits_socket_h.sockaddr;
      uu_len : WiringPI.unistd_h.socklen_t) return int  -- /usr/include/sys/socket.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "bind";

   function getsockname
     (uu_fd : int;
      uu_addr : access WiringPI.bits_socket_h.sockaddr;
      uu_len : access WiringPI.unistd_h.socklen_t) return int  -- /usr/include/sys/socket.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "getsockname";

   function connect
     (uu_fd : int;
      uu_addr : access constant WiringPI.bits_socket_h.sockaddr;
      uu_len : WiringPI.unistd_h.socklen_t) return int  -- /usr/include/sys/socket.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "connect";

   function getpeername
     (uu_fd : int;
      uu_addr : access WiringPI.bits_socket_h.sockaddr;
      uu_len : access WiringPI.unistd_h.socklen_t) return int  -- /usr/include/sys/socket.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "getpeername";

   function send
     (uu_fd : int;
      uu_buf : System.Address;
      uu_n : WiringPI.stddef_h.size_t;
      uu_flags : int) return WiringPI.stdio_h.ssize_t  -- /usr/include/sys/socket.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "send";

   function recv
     (uu_fd : int;
      uu_buf : System.Address;
      uu_n : WiringPI.stddef_h.size_t;
      uu_flags : int) return WiringPI.stdio_h.ssize_t  -- /usr/include/sys/socket.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "recv";

   function sendto
     (uu_fd : int;
      uu_buf : System.Address;
      uu_n : WiringPI.stddef_h.size_t;
      uu_flags : int;
      uu_addr : access constant WiringPI.bits_socket_h.sockaddr;
      uu_addr_len : WiringPI.unistd_h.socklen_t) return WiringPI.stdio_h.ssize_t  -- /usr/include/sys/socket.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "sendto";

   function recvfrom
     (uu_fd : int;
      uu_buf : System.Address;
      uu_n : WiringPI.stddef_h.size_t;
      uu_flags : int;
      uu_addr : access WiringPI.bits_socket_h.sockaddr;
      uu_addr_len : access WiringPI.unistd_h.socklen_t) return WiringPI.stdio_h.ssize_t  -- /usr/include/sys/socket.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "recvfrom";

   function sendmsg
     (uu_fd : int;
      uu_message : access constant WiringPI.bits_socket_h.msghdr;
      uu_flags : int) return WiringPI.stdio_h.ssize_t  -- /usr/include/sys/socket.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "sendmsg";

   function recvmsg
     (uu_fd : int;
      uu_message : access WiringPI.bits_socket_h.msghdr;
      uu_flags : int) return WiringPI.stdio_h.ssize_t  -- /usr/include/sys/socket.h:216
   with Import => True, 
        Convention => C, 
        External_Name => "recvmsg";

   function getsockopt
     (uu_fd : int;
      uu_level : int;
      uu_optname : int;
      uu_optval : System.Address;
      uu_optlen : access WiringPI.unistd_h.socklen_t) return int  -- /usr/include/sys/socket.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "getsockopt";

   function setsockopt
     (uu_fd : int;
      uu_level : int;
      uu_optname : int;
      uu_optval : System.Address;
      uu_optlen : WiringPI.unistd_h.socklen_t) return int  -- /usr/include/sys/socket.h:277
   with Import => True, 
        Convention => C, 
        External_Name => "setsockopt";

   function listen (uu_fd : int; uu_n : int) return int  -- /usr/include/sys/socket.h:296
   with Import => True, 
        Convention => C, 
        External_Name => "listen";

   function c_accept
     (uu_fd : int;
      uu_addr : access WiringPI.bits_socket_h.sockaddr;
      uu_addr_len : access WiringPI.unistd_h.socklen_t) return int  -- /usr/include/sys/socket.h:306
   with Import => True, 
        Convention => C, 
        External_Name => "accept";

   function shutdown (uu_fd : int; uu_how : int) return int  -- /usr/include/sys/socket.h:324
   with Import => True, 
        Convention => C, 
        External_Name => "shutdown";

   function sockatmark (uu_fd : int) return int  -- /usr/include/sys/socket.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "sockatmark";

   function isfdtype (uu_fd : int; uu_fdtype : int) return int  -- /usr/include/sys/socket.h:337
   with Import => True, 
        Convention => C, 
        External_Name => "isfdtype";

end WiringPI.sys_socket_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
