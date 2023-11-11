pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with WiringPI.wiringPi_h;

package WiringPI.max31855_c is

   function myAnalogRead (node : access WiringPI.wiringPi_h.wiringPiNodeStruct; pin : int) return int  -- max31855.c:33
   with Import => True, 
        Convention => C, 
        External_Name => "myAnalogRead";

   function max31855Setup (pinBase : int; spiChannel : int) return int  -- max31855.c:86
   with Import => True, 
        Convention => C, 
        External_Name => "max31855Setup";

end WiringPI.max31855_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
