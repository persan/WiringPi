pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;
with WiringPI.stddef_h;

package WiringPI.bits_types_struct_iovec_h is

   type iovec is record
      iov_base : System.Address;  -- /usr/include/bits/types/struct_iovec.h:28
      iov_len : aliased WiringPI.stddef_h.size_t;  -- /usr/include/bits/types/struct_iovec.h:29
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/types/struct_iovec.h:26

end WiringPI.bits_types_struct_iovec_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
