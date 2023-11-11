pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with WiringPI.bits_termios_struct_h;
with WiringPI.bits_termios_h;
with WiringPI.bits_types_h;

package WiringPI.termios_h is

   --  arg-macro: function CCEQ (val, c)
   --    return (c) = (val)  and then  (val) /= _POSIX_VDISABLE;
   function cfgetospeed (uu_termios_p : access constant WiringPI.bits_termios_struct_h.termios) return WiringPI.bits_termios_h.speed_t  -- /usr/include/termios.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "cfgetospeed";

   function cfgetispeed (uu_termios_p : access constant WiringPI.bits_termios_struct_h.termios) return WiringPI.bits_termios_h.speed_t  -- /usr/include/termios.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "cfgetispeed";

   function cfsetospeed (uu_termios_p : access WiringPI.bits_termios_struct_h.termios; uu_speed : WiringPI.bits_termios_h.speed_t) return int  -- /usr/include/termios.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "cfsetospeed";

   function cfsetispeed (uu_termios_p : access WiringPI.bits_termios_struct_h.termios; uu_speed : WiringPI.bits_termios_h.speed_t) return int  -- /usr/include/termios.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "cfsetispeed";

   function cfsetspeed (uu_termios_p : access WiringPI.bits_termios_struct_h.termios; uu_speed : WiringPI.bits_termios_h.speed_t) return int  -- /usr/include/termios.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "cfsetspeed";

   function tcgetattr (uu_fd : int; uu_termios_p : access WiringPI.bits_termios_struct_h.termios) return int  -- /usr/include/termios.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "tcgetattr";

   function tcsetattr
     (uu_fd : int;
      uu_optional_actions : int;
      uu_termios_p : access constant WiringPI.bits_termios_struct_h.termios) return int  -- /usr/include/termios.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "tcsetattr";

   procedure cfmakeraw (uu_termios_p : access WiringPI.bits_termios_struct_h.termios)  -- /usr/include/termios.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "cfmakeraw";

   function tcsendbreak (uu_fd : int; uu_duration : int) return int  -- /usr/include/termios.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "tcsendbreak";

   function tcdrain (uu_fd : int) return int  -- /usr/include/termios.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "tcdrain";

   function tcflush (uu_fd : int; uu_queue_selector : int) return int  -- /usr/include/termios.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "tcflush";

   function tcflow (uu_fd : int; uu_action : int) return int  -- /usr/include/termios.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "tcflow";

   function tcgetsid (uu_fd : int) return WiringPI.bits_types_h.uu_pid_t  -- /usr/include/termios.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "tcgetsid";

end WiringPI.termios_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
