pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with WiringPI.wiringPi_h;

package WiringPI.pcf8574_c is

   procedure myPinMode
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      mode : int)  -- pcf8574.c:42
   with Import => True, 
        Convention => C, 
        External_Name => "myPinMode";

   procedure myDigitalWrite
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      value : int)  -- pcf8574.c:65
   with Import => True, 
        Convention => C, 
        External_Name => "myDigitalWrite";

   function myDigitalRead (node : access WiringPI.wiringPi_h.wiringPiNodeStruct; pin : int) return int  -- pcf8574.c:87
   with Import => True, 
        Convention => C, 
        External_Name => "myDigitalRead";

   function pcf8574Setup (pinBase : int; i2cAddress : int) return int  -- pcf8574.c:109
   with Import => True, 
        Convention => C, 
        External_Name => "pcf8574Setup";

end WiringPI.pcf8574_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
