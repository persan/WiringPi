pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
with WiringPI.bits_stdint_uintn_h;

package WiringPI.bits_netdb_h is

   type netent is record
      n_name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/bits/netdb.h:28
      n_aliases : System.Address;  -- /usr/include/bits/netdb.h:29
      n_addrtype : aliased int;  -- /usr/include/bits/netdb.h:30
      n_net : aliased WiringPI.bits_stdint_uintn_h.uint32_t;  -- /usr/include/bits/netdb.h:31
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/netdb.h:26

end WiringPI.bits_netdb_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
