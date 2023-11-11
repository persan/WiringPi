pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.rht03_h is

   function rht03Setup (pinBase : int; devicePin : int) return int  -- rht03.h:25
   with Import => True, 
        Convention => C, 
        External_Name => "rht03Setup";

end WiringPI.rht03_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
