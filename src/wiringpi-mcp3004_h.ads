pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.mcp3004_h is

   function mcp3004Setup (pinBase : int; spiChannel : int) return int  -- mcp3004.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "mcp3004Setup";

end WiringPI.mcp3004_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
