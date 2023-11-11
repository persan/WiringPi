pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package WiringPI.ds18b20_h is

   function ds18b20Setup (pinBase : int; serialNum : Interfaces.C.Strings.chars_ptr) return int  -- ds18b20.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "ds18b20Setup";

end WiringPI.ds18b20_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
