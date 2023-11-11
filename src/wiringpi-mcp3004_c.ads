pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with WiringPI.wiringPi_h;

package WiringPI.mcp3004_c is

   function myAnalogRead (node : access WiringPI.wiringPi_h.wiringPiNodeStruct; pin : int) return int  -- mcp3004.c:38
   with Import => True, 
        Convention => C, 
        External_Name => "myAnalogRead";

   function mcp3004Setup (pinBase : int; spiChannel : int) return int  -- mcp3004.c:63
   with Import => True, 
        Convention => C, 
        External_Name => "mcp3004Setup";

end WiringPI.mcp3004_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
