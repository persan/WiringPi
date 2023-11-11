pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.sr595_h is

   function sr595Setup
     (pinBase : int;
      numPins : int;
      dataPin : int;
      clockPin : int;
      latchPin : int) return int  -- sr595.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "sr595Setup";

end WiringPI.sr595_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
