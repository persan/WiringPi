pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_types_h;
with WiringPI.bits_types_u_sigval_t_h;
with System;

package WiringPI.bits_types_siginfo_t_h is

   --  unsupported macro: si_pid _sifields._kill.si_pid
   --  unsupported macro: si_uid _sifields._kill.si_uid
   --  unsupported macro: si_timerid _sifields._timer.si_tid
   --  unsupported macro: si_overrun _sifields._timer.si_overrun
   --  unsupported macro: si_status _sifields._sigchld.si_status
   --  unsupported macro: si_utime _sifields._sigchld.si_utime
   --  unsupported macro: si_stime _sifields._sigchld.si_stime
   --  unsupported macro: si_value _sifields._rt.si_sigval
   --  unsupported macro: si_int _sifields._rt.si_sigval.sival_int
   --  unsupported macro: si_ptr _sifields._rt.si_sigval.sival_ptr
   --  unsupported macro: si_addr _sifields._sigfault.si_addr
   --  unsupported macro: si_addr_lsb _sifields._sigfault.si_addr_lsb
   --  unsupported macro: si_lower _sifields._sigfault._bounds._addr_bnd._lower
   --  unsupported macro: si_upper _sifields._sigfault._bounds._addr_bnd._upper
   --  unsupported macro: si_pkey _sifields._sigfault._bounds._pkey
   --  unsupported macro: si_band _sifields._sigpoll.si_band
   --  unsupported macro: si_fd _sifields._sigpoll.si_fd
   --  unsupported macro: si_call_addr _sifields._sigsys._call_addr
   --  unsupported macro: si_syscall _sifields._sigsys._syscall
   --  unsupported macro: si_arch _sifields._sigsys._arch
   type anon_array2096 is array (0 .. 27) of aliased int;
   type anon_struct2097 is record
      si_pid : aliased WiringPI.bits_types_h.uu_pid_t;  -- /usr/include/bits/types/siginfo_t.h:58
      si_uid : aliased WiringPI.bits_types_h.uu_uid_t;  -- /usr/include/bits/types/siginfo_t.h:59
   end record
   with Convention => C_Pass_By_Copy;
   type anon_struct2098 is record
      si_tid : aliased int;  -- /usr/include/bits/types/siginfo_t.h:65
      si_overrun : aliased int;  -- /usr/include/bits/types/siginfo_t.h:66
      si_sigval : aliased WiringPI.bits_types_u_sigval_t_h.uu_sigval_t;  -- /usr/include/bits/types/siginfo_t.h:67
   end record
   with Convention => C_Pass_By_Copy;
   type anon_struct2099 is record
      si_pid : aliased WiringPI.bits_types_h.uu_pid_t;  -- /usr/include/bits/types/siginfo_t.h:73
      si_uid : aliased WiringPI.bits_types_h.uu_uid_t;  -- /usr/include/bits/types/siginfo_t.h:74
      si_sigval : aliased WiringPI.bits_types_u_sigval_t_h.uu_sigval_t;  -- /usr/include/bits/types/siginfo_t.h:75
   end record
   with Convention => C_Pass_By_Copy;
   type anon_struct2100 is record
      si_pid : aliased WiringPI.bits_types_h.uu_pid_t;  -- /usr/include/bits/types/siginfo_t.h:81
      si_uid : aliased WiringPI.bits_types_h.uu_uid_t;  -- /usr/include/bits/types/siginfo_t.h:82
      si_status : aliased int;  -- /usr/include/bits/types/siginfo_t.h:83
      si_utime : aliased WiringPI.bits_types_h.uu_clock_t;  -- /usr/include/bits/types/siginfo_t.h:84
      si_stime : aliased WiringPI.bits_types_h.uu_clock_t;  -- /usr/include/bits/types/siginfo_t.h:85
   end record
   with Convention => C_Pass_By_Copy;
   type anon_struct2103 is record
      u_lower : System.Address;  -- /usr/include/bits/types/siginfo_t.h:99
      u_upper : System.Address;  -- /usr/include/bits/types/siginfo_t.h:100
   end record
   with Convention => C_Pass_By_Copy;
   type anon_union2102 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            u_addr_bnd : aliased anon_struct2103;  -- /usr/include/bits/types/siginfo_t.h:101
         when others =>
            u_pkey : aliased WiringPI.bits_types_h.uu_uint32_t;  -- /usr/include/bits/types/siginfo_t.h:103
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type anon_struct2101 is record
      si_addr : System.Address;  -- /usr/include/bits/types/siginfo_t.h:91
      si_addr_lsb : aliased short;  -- /usr/include/bits/types/siginfo_t.h:93
      u_bounds : aliased anon_union2102;  -- /usr/include/bits/types/siginfo_t.h:104
   end record
   with Convention => C_Pass_By_Copy;
   type anon_struct2104 is record
      si_band : aliased long;  -- /usr/include/bits/types/siginfo_t.h:110
      si_fd : aliased int;  -- /usr/include/bits/types/siginfo_t.h:111
   end record
   with Convention => C_Pass_By_Copy;
   type anon_struct2105 is record
      u_call_addr : System.Address;  -- /usr/include/bits/types/siginfo_t.h:118
      u_syscall : aliased int;  -- /usr/include/bits/types/siginfo_t.h:119
      u_arch : aliased unsigned;  -- /usr/include/bits/types/siginfo_t.h:120
   end record
   with Convention => C_Pass_By_Copy;
   type anon_union2094 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            u_pad : aliased anon_array2096;  -- /usr/include/bits/types/siginfo_t.h:53
         when 1 =>
            u_kill : aliased anon_struct2097;  -- /usr/include/bits/types/siginfo_t.h:60
         when 2 =>
            u_timer : aliased anon_struct2098;  -- /usr/include/bits/types/siginfo_t.h:68
         when 3 =>
            u_rt : aliased anon_struct2099;  -- /usr/include/bits/types/siginfo_t.h:76
         when 4 =>
            u_sigchld : aliased anon_struct2100;  -- /usr/include/bits/types/siginfo_t.h:86
         when 5 =>
            u_sigfault : aliased anon_struct2101;  -- /usr/include/bits/types/siginfo_t.h:105
         when 6 =>
            u_sigpoll : aliased anon_struct2104;  -- /usr/include/bits/types/siginfo_t.h:112
         when others =>
            u_sigsys : aliased anon_struct2105;  -- /usr/include/bits/types/siginfo_t.h:121
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type siginfo_t is record
      si_signo : aliased int;  -- /usr/include/bits/types/siginfo_t.h:38
      si_errno : aliased int;  -- /usr/include/bits/types/siginfo_t.h:40
      si_code : aliased int;  -- /usr/include/bits/types/siginfo_t.h:42
      uu_pad0 : aliased int;  -- /usr/include/bits/types/siginfo_t.h:48
      u_sifields : aliased anon_union2094;  -- /usr/include/bits/types/siginfo_t.h:123
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/types/siginfo_t.h:124

end WiringPI.bits_types_siginfo_t_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
