pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_pthreadtypes_h;
with System;

package WiringPI.softPwm_c is

   MAX_PINS : constant := 64;  --  softPwm.c:37

   PULSE_TIME : constant := 100;  --  softPwm.c:53

   marks : aliased array (0 .. 63) of aliased int  -- softPwm.c:55
   with Import => True, 
        Convention => C, 
        External_Name => "marks";

   c_range : aliased array (0 .. 63) of aliased int  -- softPwm.c:56
   with Import => True, 
        Convention => C, 
        External_Name => "range";

   threads : aliased array (0 .. 63) of aliased WiringPI.bits_pthreadtypes_h.pthread_t  -- softPwm.c:57
   with Import => True, 
        Convention => C, 
        External_Name => "threads";

   newPin : aliased int  -- softPwm.c:58
   with Import => True, 
        Convention => C, 
        External_Name => "newPin";

   function softPwmThread (arg : System.Address) return System.Address  -- softPwm.c:67
   with Import => True, 
        Convention => C, 
        External_Name => "softPwmThread";

   procedure softPwmWrite (pin : int; value : int)  -- softPwm.c:107
   with Import => True, 
        Convention => C, 
        External_Name => "softPwmWrite";

   function softPwmCreate
     (pin : int;
      initialValue : int;
      pwmRange : int) return int  -- softPwm.c:127
   with Import => True, 
        Convention => C, 
        External_Name => "softPwmCreate";

   procedure softPwmStop (pin : int)  -- softPwm.c:174
   with Import => True, 
        Convention => C, 
        External_Name => "softPwmStop";

end WiringPI.softPwm_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
