pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.mcp23017_h is

   function mcp23017Setup (pinBase : int; i2cAddress : int) return int  -- mcp23017.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "mcp23017Setup";

end WiringPI.mcp23017_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
