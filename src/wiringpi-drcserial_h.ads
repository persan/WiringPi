pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package WiringPI.drcSerial_h is

   function drcSetupSerial
     (pinBase : int;
      numPins : int;
      device : Interfaces.C.Strings.chars_ptr;
      baud : int) return int  -- drcSerial.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "drcSetupSerial";

end WiringPI.drcSerial_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
