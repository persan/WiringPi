pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_types_h;

package WiringPI.bits_types_struct_timespec_h is

   type timespec is record
      tv_sec : aliased WiringPI.bits_types_h.uu_time_t;  -- /usr/include/bits/types/struct_timespec.h:16
      tv_nsec : aliased WiringPI.bits_types_h.uu_syscall_slong_t;  -- /usr/include/bits/types/struct_timespec.h:21
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/types/struct_timespec.h:11

end WiringPI.bits_types_struct_timespec_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
