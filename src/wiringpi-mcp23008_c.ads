pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with WiringPI.wiringPi_h;

package WiringPI.mcp23008_c is

   procedure myPinMode
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      mode : int)  -- mcp23008.c:40
   with Import => True, 
        Convention => C, 
        External_Name => "myPinMode";

   procedure myPullUpDnControl
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      mode : int)  -- mcp23008.c:62
   with Import => True, 
        Convention => C, 
        External_Name => "myPullUpDnControl";

   procedure myDigitalWrite
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      value : int)  -- mcp23008.c:85
   with Import => True, 
        Convention => C, 
        External_Name => "myDigitalWrite";

   function myDigitalRead (node : access WiringPI.wiringPi_h.wiringPiNodeStruct; pin : int) return int  -- mcp23008.c:107
   with Import => True, 
        Convention => C, 
        External_Name => "myDigitalRead";

   function mcp23008Setup (pinBase : int; i2cAddress : int) return int  -- mcp23008.c:129
   with Import => True, 
        Convention => C, 
        External_Name => "mcp23008Setup";

end WiringPI.mcp23008_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
