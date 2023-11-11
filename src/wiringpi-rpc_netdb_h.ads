pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
with WiringPI.stddef_h;

package WiringPI.rpc_netdb_h is

   type rpcent is record
      r_name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/rpc/netdb.h:48
      r_aliases : System.Address;  -- /usr/include/rpc/netdb.h:49
      r_number : aliased int;  -- /usr/include/rpc/netdb.h:50
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/rpc/netdb.h:46

   procedure setrpcent (uu_stayopen : int)  -- /usr/include/rpc/netdb.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "setrpcent";

   procedure endrpcent  -- /usr/include/rpc/netdb.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "endrpcent";

   function getrpcbyname (uu_name : Interfaces.C.Strings.chars_ptr) return access rpcent  -- /usr/include/rpc/netdb.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "getrpcbyname";

   function getrpcbynumber (uu_number : int) return access rpcent  -- /usr/include/rpc/netdb.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "getrpcbynumber";

   function getrpcent return access rpcent  -- /usr/include/rpc/netdb.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "getrpcent";

   function getrpcbyname_r
     (uu_name : Interfaces.C.Strings.chars_ptr;
      uu_result_buf : access rpcent;
      uu_buffer : Interfaces.C.Strings.chars_ptr;
      uu_buflen : WiringPI.stddef_h.size_t;
      uu_result : System.Address) return int  -- /usr/include/rpc/netdb.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "getrpcbyname_r";

   function getrpcbynumber_r
     (uu_number : int;
      uu_result_buf : access rpcent;
      uu_buffer : Interfaces.C.Strings.chars_ptr;
      uu_buflen : WiringPI.stddef_h.size_t;
      uu_result : System.Address) return int  -- /usr/include/rpc/netdb.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "getrpcbynumber_r";

   function getrpcent_r
     (uu_result_buf : access rpcent;
      uu_buffer : Interfaces.C.Strings.chars_ptr;
      uu_buflen : WiringPI.stddef_h.size_t;
      uu_result : System.Address) return int  -- /usr/include/rpc/netdb.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "getrpcent_r";

end WiringPI.rpc_netdb_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
