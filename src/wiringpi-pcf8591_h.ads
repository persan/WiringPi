pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.pcf8591_h is

   function pcf8591Setup (pinBase : int; i2cAddress : int) return int  -- pcf8591.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "pcf8591Setup";

end WiringPI.pcf8591_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
