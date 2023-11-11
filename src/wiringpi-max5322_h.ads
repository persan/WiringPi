pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.max5322_h is

   function max5322Setup (pinBase : int; spiChannel : int) return int  -- max5322.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "max5322Setup";

end WiringPI.max5322_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
