pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.pcf8574_h is

   function pcf8574Setup (pinBase : int; i2cAddress : int) return int  -- pcf8574.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "pcf8574Setup";

end WiringPI.pcf8574_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
