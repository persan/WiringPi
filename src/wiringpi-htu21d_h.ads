pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.htu21d_h is

   function htu21dSetup (pinBase : int) return int  -- htu21d.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "htu21dSetup";

end WiringPI.htu21d_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
