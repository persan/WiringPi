pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.max31855_h is

   function max31855Setup (pinBase : int; spiChannel : int) return int  -- max31855.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "max31855Setup";

end WiringPI.max31855_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
