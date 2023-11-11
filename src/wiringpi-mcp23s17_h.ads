pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.mcp23s17_h is

   function mcp23s17Setup
     (pinBase : int;
      spiPort : int;
      devId : int) return int  -- mcp23s17.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "mcp23s17Setup";

end WiringPI.mcp23s17_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
