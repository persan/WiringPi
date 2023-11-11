pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;

package WiringPI.bits_types_struct_sigstack_h is

   type sigstack is record
      ss_sp : System.Address;  -- /usr/include/bits/types/struct_sigstack.h:25
      ss_onstack : aliased int;  -- /usr/include/bits/types/struct_sigstack.h:26
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/types/struct_sigstack.h:23

end WiringPI.bits_types_struct_sigstack_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
