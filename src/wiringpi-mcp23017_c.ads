pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with WiringPI.wiringPi_h;

package WiringPI.mcp23017_c is

   procedure myPinMode
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      mode : int)  -- mcp23017.c:40
   with Import => True, 
        Convention => C, 
        External_Name => "myPinMode";

   procedure myPullUpDnControl
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      mode : int)  -- mcp23017.c:71
   with Import => True, 
        Convention => C, 
        External_Name => "myPullUpDnControl";

   procedure myDigitalWrite
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      value : int)  -- mcp23017.c:102
   with Import => True, 
        Convention => C, 
        External_Name => "myDigitalWrite";

   function myDigitalRead (node : access WiringPI.wiringPi_h.wiringPiNodeStruct; pin : int) return int  -- mcp23017.c:142
   with Import => True, 
        Convention => C, 
        External_Name => "myDigitalRead";

   function mcp23017Setup (pinBase : int; i2cAddress : int) return int  -- mcp23017.c:174
   with Import => True, 
        Convention => C, 
        External_Name => "mcp23017Setup";

end WiringPI.mcp23017_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
