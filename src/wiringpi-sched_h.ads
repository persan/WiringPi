pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_types_h;
limited with WiringPI.bits_types_struct_sched_param_h;
limited with WiringPI.bits_types_struct_timespec_h;

package WiringPI.sched_h is

   --  unsupported macro: sched_priority sched_priority
   function sched_setparam (uu_pid : WiringPI.bits_types_h.uu_pid_t; uu_param : access constant WiringPI.bits_types_struct_sched_param_h.sched_param) return int  -- /usr/include/sched.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "sched_setparam";

   function sched_getparam (uu_pid : WiringPI.bits_types_h.uu_pid_t; uu_param : access WiringPI.bits_types_struct_sched_param_h.sched_param) return int  -- /usr/include/sched.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "sched_getparam";

   function sched_setscheduler
     (uu_pid : WiringPI.bits_types_h.uu_pid_t;
      uu_policy : int;
      uu_param : access constant WiringPI.bits_types_struct_sched_param_h.sched_param) return int  -- /usr/include/sched.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "sched_setscheduler";

   function sched_getscheduler (uu_pid : WiringPI.bits_types_h.uu_pid_t) return int  -- /usr/include/sched.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "sched_getscheduler";

   function sched_yield return int  -- /usr/include/sched.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "sched_yield";

   function sched_get_priority_max (uu_algorithm : int) return int  -- /usr/include/sched.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "sched_get_priority_max";

   function sched_get_priority_min (uu_algorithm : int) return int  -- /usr/include/sched.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "sched_get_priority_min";

   function sched_rr_get_interval (uu_pid : WiringPI.bits_types_h.uu_pid_t; uu_t : access WiringPI.bits_types_struct_timespec_h.timespec) return int  -- /usr/include/sched.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "sched_rr_get_interval";

end WiringPI.sched_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
