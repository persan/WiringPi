pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.bmp180_h is

   function bmp180Setup (pinBase : int) return int  -- bmp180.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "bmp180Setup";

end WiringPI.bmp180_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
