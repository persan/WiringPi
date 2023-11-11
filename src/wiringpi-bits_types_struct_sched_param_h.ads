pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.bits_types_struct_sched_param_h is

   type sched_param is record
      sched_priority : aliased int;  -- /usr/include/bits/types/struct_sched_param.h:25
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/types/struct_sched_param.h:23

end WiringPI.bits_types_struct_sched_param_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
