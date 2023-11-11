pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.pseudoPins_h is

   function pseudoPinsSetup (pinBase : int) return int  -- pseudoPins.h:26
   with Import => True, 
        Convention => C, 
        External_Name => "pseudoPinsSetup";

end WiringPI.pseudoPins_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
