pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_types_clock_t_h;
with WiringPI.bits_types_time_t_h;
limited with WiringPI.bits_types_struct_tm_h;
with Interfaces.C.Strings;
with WiringPI.stddef_h;
with WiringPI.bits_types_locale_t_h;
limited with WiringPI.bits_types_struct_timespec_h;
with WiringPI.bits_types_clockid_t_h;
with WiringPI.sys_types_h;
limited with WiringPI.bits_types_sigevent_t_h;
with System;
with WiringPI.bits_types_timer_t_h;
limited with WiringPI.bits_types_struct_itimerspec_h;

package WiringPI.time_h is

   TIME_UTC : constant := 1;  --  /usr/include/time.h:65

   function clock return WiringPI.bits_types_clock_t_h.clock_t  -- /usr/include/time.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "clock";

   function time (uu_timer : access WiringPI.bits_types_time_t_h.time_t) return WiringPI.bits_types_time_t_h.time_t  -- /usr/include/time.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "time";

   function difftime (uu_time1 : WiringPI.bits_types_time_t_h.time_t; uu_time0 : WiringPI.bits_types_time_t_h.time_t) return double  -- /usr/include/time.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "difftime";

   function mktime (uu_tp : access WiringPI.bits_types_struct_tm_h.tm) return WiringPI.bits_types_time_t_h.time_t  -- /usr/include/time.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "mktime";

   function strftime
     (uu_s : Interfaces.C.Strings.chars_ptr;
      uu_maxsize : WiringPI.stddef_h.size_t;
      uu_format : Interfaces.C.Strings.chars_ptr;
      uu_tp : access constant WiringPI.bits_types_struct_tm_h.tm) return WiringPI.stddef_h.size_t  -- /usr/include/time.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "strftime";

   function strftime_l
     (uu_s : Interfaces.C.Strings.chars_ptr;
      uu_maxsize : WiringPI.stddef_h.size_t;
      uu_format : Interfaces.C.Strings.chars_ptr;
      uu_tp : access constant WiringPI.bits_types_struct_tm_h.tm;
      uu_loc : WiringPI.bits_types_locale_t_h.locale_t) return WiringPI.stddef_h.size_t  -- /usr/include/time.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "strftime_l";

   function gmtime (uu_timer : access WiringPI.bits_types_time_t_h.time_t) return access WiringPI.bits_types_struct_tm_h.tm  -- /usr/include/time.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "gmtime";

   function localtime (uu_timer : access WiringPI.bits_types_time_t_h.time_t) return access WiringPI.bits_types_struct_tm_h.tm  -- /usr/include/time.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "localtime";

   function gmtime_r (uu_timer : access WiringPI.bits_types_time_t_h.time_t; uu_tp : access WiringPI.bits_types_struct_tm_h.tm) return access WiringPI.bits_types_struct_tm_h.tm  -- /usr/include/time.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "gmtime_r";

   function localtime_r (uu_timer : access WiringPI.bits_types_time_t_h.time_t; uu_tp : access WiringPI.bits_types_struct_tm_h.tm) return access WiringPI.bits_types_struct_tm_h.tm  -- /usr/include/time.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "localtime_r";

   function asctime (uu_tp : access constant WiringPI.bits_types_struct_tm_h.tm) return Interfaces.C.Strings.chars_ptr  -- /usr/include/time.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "asctime";

   function ctime (uu_timer : access WiringPI.bits_types_time_t_h.time_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/time.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "ctime";

   function asctime_r (uu_tp : access constant WiringPI.bits_types_struct_tm_h.tm; uu_buf : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/time.h:197
   with Import => True, 
        Convention => C, 
        External_Name => "asctime_r";

   function ctime_r (uu_timer : access WiringPI.bits_types_time_t_h.time_t; uu_buf : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/time.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "ctime_r";

   tzname : array (0 .. 1) of Interfaces.C.Strings.chars_ptr  -- /usr/include/time.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "tzname";

   procedure tzset  -- /usr/include/time.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "tzset";

   daylight : aliased int  -- /usr/include/time.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "daylight";

   timezone : aliased long  -- /usr/include/time.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "timezone";

   function timegm (uu_tp : access WiringPI.bits_types_struct_tm_h.tm) return WiringPI.bits_types_time_t_h.time_t  -- /usr/include/time.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "timegm";

   function timelocal (uu_tp : access WiringPI.bits_types_struct_tm_h.tm) return WiringPI.bits_types_time_t_h.time_t  -- /usr/include/time.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "timelocal";

   function dysize (uu_year : int) return int  -- /usr/include/time.h:271
   with Import => True, 
        Convention => C, 
        External_Name => "dysize";

   function nanosleep (uu_requested_time : access constant WiringPI.bits_types_struct_timespec_h.timespec; uu_remaining : access WiringPI.bits_types_struct_timespec_h.timespec) return int  -- /usr/include/time.h:281
   with Import => True, 
        Convention => C, 
        External_Name => "nanosleep";

   function clock_getres (uu_clock_id : WiringPI.bits_types_clockid_t_h.clockid_t; uu_res : access WiringPI.bits_types_struct_timespec_h.timespec) return int  -- /usr/include/time.h:285
   with Import => True, 
        Convention => C, 
        External_Name => "clock_getres";

   function clock_gettime (uu_clock_id : WiringPI.bits_types_clockid_t_h.clockid_t; uu_tp : access WiringPI.bits_types_struct_timespec_h.timespec) return int  -- /usr/include/time.h:288
   with Import => True, 
        Convention => C, 
        External_Name => "clock_gettime";

   function clock_settime (uu_clock_id : WiringPI.bits_types_clockid_t_h.clockid_t; uu_tp : access constant WiringPI.bits_types_struct_timespec_h.timespec) return int  -- /usr/include/time.h:292
   with Import => True, 
        Convention => C, 
        External_Name => "clock_settime";

   function clock_nanosleep
     (uu_clock_id : WiringPI.bits_types_clockid_t_h.clockid_t;
      uu_flags : int;
      uu_req : access constant WiringPI.bits_types_struct_timespec_h.timespec;
      uu_rem : access WiringPI.bits_types_struct_timespec_h.timespec) return int  -- /usr/include/time.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "clock_nanosleep";

   function clock_getcpuclockid (uu_pid : WiringPI.sys_types_h.pid_t; uu_clock_id : access WiringPI.bits_types_clockid_t_h.clockid_t) return int  -- /usr/include/time.h:338
   with Import => True, 
        Convention => C, 
        External_Name => "clock_getcpuclockid";

   function timer_create
     (uu_clock_id : WiringPI.bits_types_clockid_t_h.clockid_t;
      uu_evp : access WiringPI.bits_types_sigevent_t_h.sigevent;
      uu_timerid : System.Address) return int  -- /usr/include/time.h:343
   with Import => True, 
        Convention => C, 
        External_Name => "timer_create";

   function timer_delete (uu_timerid : WiringPI.bits_types_timer_t_h.timer_t) return int  -- /usr/include/time.h:348
   with Import => True, 
        Convention => C, 
        External_Name => "timer_delete";

   function timer_settime
     (uu_timerid : WiringPI.bits_types_timer_t_h.timer_t;
      uu_flags : int;
      uu_value : access constant WiringPI.bits_types_struct_itimerspec_h.itimerspec;
      uu_ovalue : access WiringPI.bits_types_struct_itimerspec_h.itimerspec) return int  -- /usr/include/time.h:352
   with Import => True, 
        Convention => C, 
        External_Name => "timer_settime";

   function timer_gettime (uu_timerid : WiringPI.bits_types_timer_t_h.timer_t; uu_value : access WiringPI.bits_types_struct_itimerspec_h.itimerspec) return int  -- /usr/include/time.h:357
   with Import => True, 
        Convention => C, 
        External_Name => "timer_gettime";

   function timer_getoverrun (uu_timerid : WiringPI.bits_types_timer_t_h.timer_t) return int  -- /usr/include/time.h:376
   with Import => True, 
        Convention => C, 
        External_Name => "timer_getoverrun";

   function timespec_get (uu_ts : access WiringPI.bits_types_struct_timespec_h.timespec; uu_base : int) return int  -- /usr/include/time.h:383
   with Import => True, 
        Convention => C, 
        External_Name => "timespec_get";

end WiringPI.time_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
