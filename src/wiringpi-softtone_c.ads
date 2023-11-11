pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_pthreadtypes_h;
with System;

package WiringPI.softTone_c is

   MAX_PINS : constant := 64;  --  softTone.c:35

   PULSE_TIME : constant := 100;  --  softTone.c:37

   freqs : aliased array (0 .. 63) of aliased int  -- softTone.c:39
   with Import => True, 
        Convention => C, 
        External_Name => "freqs";

   threads : aliased array (0 .. 63) of aliased WiringPI.bits_pthreadtypes_h.pthread_t  -- softTone.c:40
   with Import => True, 
        Convention => C, 
        External_Name => "threads";

   newPin : aliased int  -- softTone.c:42
   with Import => True, 
        Convention => C, 
        External_Name => "newPin";

   function softToneThread (dummy : System.Address) return System.Address  -- softTone.c:51
   with Import => True, 
        Convention => C, 
        External_Name => "softToneThread";

   procedure softToneWrite (pin : int; freq : int)  -- softTone.c:91
   with Import => True, 
        Convention => C, 
        External_Name => "softToneWrite";

   function softToneCreate (pin : int) return int  -- softTone.c:110
   with Import => True, 
        Convention => C, 
        External_Name => "softToneCreate";

   procedure softToneStop (pin : int)  -- softTone.c:141
   with Import => True, 
        Convention => C, 
        External_Name => "softToneStop";

end WiringPI.softTone_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
