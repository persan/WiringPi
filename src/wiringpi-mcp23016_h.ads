pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.mcp23016_h is

   function mcp23016Setup (pinBase : int; i2cAddress : int) return int  -- mcp23016.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "mcp23016Setup";

end WiringPI.mcp23016_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
