pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_types_struct_timespec_h;

package WiringPI.bits_types_struct_itimerspec_h is

   type itimerspec is record
      it_interval : aliased WiringPI.bits_types_struct_timespec_h.timespec;  -- /usr/include/bits/types/struct_itimerspec.h:10
      it_value : aliased WiringPI.bits_types_struct_timespec_h.timespec;  -- /usr/include/bits/types/struct_itimerspec.h:11
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/types/struct_itimerspec.h:8

end WiringPI.bits_types_struct_itimerspec_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
