pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with WiringPI.wiringPi_h;

package WiringPI.mcp3002_c is

   function myAnalogRead (node : access WiringPI.wiringPi_h.wiringPiNodeStruct; pin : int) return int  -- mcp3002.c:36
   with Import => True, 
        Convention => C, 
        External_Name => "myAnalogRead";

   function mcp3002Setup (pinBase : int; spiChannel : int) return int  -- mcp3002.c:63
   with Import => True, 
        Convention => C, 
        External_Name => "mcp3002Setup";

end WiringPI.mcp3002_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
