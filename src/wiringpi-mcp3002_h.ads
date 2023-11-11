pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.mcp3002_h is

   function mcp3002Setup (pinBase : int; spiChannel : int) return int  -- mcp3002.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "mcp3002Setup";

end WiringPI.mcp3002_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
