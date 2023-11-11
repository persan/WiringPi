pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with WiringPI.wiringPi_h;

package WiringPI.rht03_c is

   function maxDetectLowHighWait (pin : int) return int  -- rht03.c:39
   with Import => True, 
        Convention => C, 
        External_Name => "maxDetectLowHighWait";

   function maxDetectClockByte (pin : int) return unsigned  -- rht03.c:81
   with Import => True, 
        Convention => C, 
        External_Name => "maxDetectClockByte";

   function maxDetectRead (pin : int; buffer : access unsigned_char) return int  -- rht03.c:110
   with Import => True, 
        Convention => C, 
        External_Name => "maxDetectRead";

   function myReadRHT03
     (pin : int;
      temp : access int;
      rh : access int) return int  -- rht03.c:174
   with Import => True, 
        Convention => C, 
        External_Name => "myReadRHT03";

   function myAnalogRead (node : access WiringPI.wiringPi_h.wiringPiNodeStruct; pin : int) return int  -- rht03.c:210
   with Import => True, 
        Convention => C, 
        External_Name => "myAnalogRead";

   function rht03Setup (pinBase : int; piPin : int) return int  -- rht03.c:237
   with Import => True, 
        Convention => C, 
        External_Name => "rht03Setup";

end WiringPI.rht03_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
