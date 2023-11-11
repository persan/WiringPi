pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package WiringPI.drcNet_h is

   function drcSetupNet
     (pinBase : int;
      numPins : int;
      ipAddress : Interfaces.C.Strings.chars_ptr;
      port : Interfaces.C.Strings.chars_ptr;
      password : Interfaces.C.Strings.chars_ptr) return int  -- drcNet.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "drcSetupNet";

end WiringPI.drcNet_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
