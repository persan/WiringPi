pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with WiringPI.wiringPi_h;

package WiringPI.sr595_c is

   procedure myDigitalWrite
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      value : int)  -- sr595.c:43
   with Import => True, 
        Convention => C, 
        External_Name => "myDigitalWrite";

   function sr595Setup
     (pinBase : int;
      numPins : int;
      dataPin : int;
      clockPin : int;
      latchPin : int) return int  -- sr595.c:85
   with Import => True, 
        Convention => C, 
        External_Name => "sr595Setup";

end WiringPI.sr595_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
