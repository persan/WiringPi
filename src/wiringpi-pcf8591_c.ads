pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with WiringPI.wiringPi_h;

package WiringPI.pcf8591_c is

   procedure myAnalogWrite
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      value : int)  -- pcf8591.c:39
   with Import => True, 
        Convention => C, 
        External_Name => "myAnalogWrite";

   function myAnalogRead (node : access WiringPI.wiringPi_h.wiringPiNodeStruct; pin : int) return int  -- pcf8591.c:53
   with Import => True, 
        Convention => C, 
        External_Name => "myAnalogRead";

   function pcf8591Setup (pinBase : int; i2cAddress : int) return int  -- pcf8591.c:75
   with Import => True, 
        Convention => C, 
        External_Name => "pcf8591Setup";

end WiringPI.pcf8591_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
