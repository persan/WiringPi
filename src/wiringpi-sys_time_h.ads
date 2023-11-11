pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_types_struct_timeval_h;
with System;
with Interfaces.C.Strings;

package WiringPI.sys_time_h is

   --  unsupported macro: ITIMER_REAL ITIMER_REAL
   --  unsupported macro: ITIMER_VIRTUAL ITIMER_VIRTUAL
   --  unsupported macro: ITIMER_PROF ITIMER_PROF
   --  arg-macro: function timerisset (tvp)
   --    return (tvp).tv_sec  or else  (tvp).tv_usec;
   --  arg-macro: function timerclear (tvp)
   --    return (tvp).tv_sec := (tvp).tv_usec := 0;
   --  arg-macro: function timercmp (a, b, CMP)
   --    return ((a).tv_sec = (b).tv_sec) ? ((a).tv_usec CMP (b).tv_usec) : ((a).tv_sec CMP (b).tv_sec);
   --  arg-macro: procedure timeradd (a, b, result)
   --    do { (result).tv_sec := (a).tv_sec + (b).tv_sec; (result).tv_usec := (a).tv_usec + (b).tv_usec; if ((result).tv_usec >= 1000000) { ++(result).tv_sec; (result).tv_usec -= 1000000; } } while (0)
   --  arg-macro: procedure timersub (a, b, result)
   --    do { (result).tv_sec := (a).tv_sec - (b).tv_sec; (result).tv_usec := (a).tv_usec - (b).tv_usec; if ((result).tv_usec < 0) { --(result).tv_sec; (result).tv_usec += 1000000; } } while (0)
   type timezone is record
      tz_minuteswest : aliased int;  -- /usr/include/sys/time.h:54
      tz_dsttime : aliased int;  -- /usr/include/sys/time.h:55
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/sys/time.h:52

   function gettimeofday (uu_tv : access WiringPI.bits_types_struct_timeval_h.timeval; uu_tz : System.Address) return int  -- /usr/include/sys/time.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "gettimeofday";

   function settimeofday (uu_tv : access constant WiringPI.bits_types_struct_timeval_h.timeval; uu_tz : access constant timezone) return int  -- /usr/include/sys/time.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "settimeofday";

   function adjtime (uu_delta : access constant WiringPI.bits_types_struct_timeval_h.timeval; uu_olddelta : access WiringPI.bits_types_struct_timeval_h.timeval) return int  -- /usr/include/sys/time.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "adjtime";

   type uu_itimer_which is 
     (ITIMER_REAL,
      ITIMER_VIRTUAL,
      ITIMER_PROF)
   with Convention => C;  -- /usr/include/sys/time.h:114

   type itimerval is record
      it_interval : aliased WiringPI.bits_types_struct_timeval_h.timeval;  -- /usr/include/sys/time.h:133
      it_value : aliased WiringPI.bits_types_struct_timeval_h.timeval;  -- /usr/include/sys/time.h:135
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/sys/time.h:130

   subtype uu_itimer_which_t is int;  -- /usr/include/sys/time.h:143

   function getitimer (uu_which : uu_itimer_which_t; uu_value : access itimerval) return int  -- /usr/include/sys/time.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "getitimer";

   function setitimer
     (uu_which : uu_itimer_which_t;
      uu_new : access constant itimerval;
      uu_old : access itimerval) return int  -- /usr/include/sys/time.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "setitimer";

   function utimes (uu_file : Interfaces.C.Strings.chars_ptr; uu_tvp : access constant WiringPI.bits_types_struct_timeval_h.timeval) return int  -- /usr/include/sys/time.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "utimes";

   function lutimes (uu_file : Interfaces.C.Strings.chars_ptr; uu_tvp : access constant WiringPI.bits_types_struct_timeval_h.timeval) return int  -- /usr/include/sys/time.h:189
   with Import => True, 
        Convention => C, 
        External_Name => "lutimes";

   function futimes (uu_fd : int; uu_tvp : access constant WiringPI.bits_types_struct_timeval_h.timeval) return int  -- /usr/include/sys/time.h:193
   with Import => True, 
        Convention => C, 
        External_Name => "futimes";

end WiringPI.sys_time_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
