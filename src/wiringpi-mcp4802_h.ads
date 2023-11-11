pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.mcp4802_h is

   function mcp4802Setup (pinBase : int; spiChannel : int) return int  -- mcp4802.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "mcp4802Setup";

end WiringPI.mcp4802_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
