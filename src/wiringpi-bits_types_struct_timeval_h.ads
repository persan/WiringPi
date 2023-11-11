pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_types_h;

package WiringPI.bits_types_struct_timeval_h is

   type timeval is record
      tv_sec : aliased WiringPI.bits_types_h.uu_time_t;  -- /usr/include/bits/types/struct_timeval.h:14
      tv_usec : aliased WiringPI.bits_types_h.uu_suseconds_t;  -- /usr/include/bits/types/struct_timeval.h:15
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/types/struct_timeval.h:8

end WiringPI.bits_types_struct_timeval_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
