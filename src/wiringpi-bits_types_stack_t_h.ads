pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;
with WiringPI.stddef_h;

package WiringPI.bits_types_stack_t_h is

   type stack_t is record
      ss_sp : System.Address;  -- /usr/include/bits/types/stack_t.h:28
      ss_flags : aliased int;  -- /usr/include/bits/types/stack_t.h:29
      ss_size : aliased WiringPI.stddef_h.size_t;  -- /usr/include/bits/types/stack_t.h:30
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/types/stack_t.h:31

end WiringPI.bits_types_stack_t_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
