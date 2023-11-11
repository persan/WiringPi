pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_types_h;
with WiringPI.bits_types_idtype_t_h;
limited with WiringPI.bits_types_siginfo_t_h;

package WiringPI.sys_wait_h is

   --  unsupported macro: WCOREFLAG __WCOREFLAG
   --  arg-macro: procedure WCOREDUMP (status)
   --    __WCOREDUMP (status)
   --  arg-macro: procedure W_EXITCODE (ret, sig)
   --    __W_EXITCODE (ret, sig)
   --  arg-macro: procedure W_STOPCODE (sig)
   --    __W_STOPCODE (sig)
   WAIT_ANY : constant := (-1);  --  /usr/include/sys/wait.h:87
   WAIT_MYPGRP : constant := 0;  --  /usr/include/sys/wait.h:88

   function wait (uu_stat_loc : access int) return WiringPI.bits_types_h.uu_pid_t  -- /usr/include/sys/wait.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "wait";

   function waitpid
     (uu_pid : WiringPI.bits_types_h.uu_pid_t;
      uu_stat_loc : access int;
      uu_options : int) return WiringPI.bits_types_h.uu_pid_t  -- /usr/include/sys/wait.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "waitpid";

   function waitid
     (uu_idtype : WiringPI.bits_types_idtype_t_h.idtype_t;
      uu_id : WiringPI.bits_types_h.uu_id_t;
      uu_infop : access WiringPI.bits_types_siginfo_t_h.siginfo_t;
      uu_options : int) return int  -- /usr/include/sys/wait.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "waitid";

   type rusage is null record;   -- incomplete struct

   function wait3
     (uu_stat_loc : access int;
      uu_options : int;
      uu_usage : access rusage) return WiringPI.bits_types_h.uu_pid_t  -- /usr/include/sys/wait.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "wait3";

   function wait4
     (uu_pid : WiringPI.bits_types_h.uu_pid_t;
      uu_stat_loc : access int;
      uu_options : int;
      uu_usage : access rusage) return WiringPI.bits_types_h.uu_pid_t  -- /usr/include/sys/wait.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "wait4";

end WiringPI.sys_wait_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
