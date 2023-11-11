pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.sn3218_h is

   function sn3218Setup (pinBase : int) return int  -- sn3218.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "sn3218Setup";

end WiringPI.sn3218_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
