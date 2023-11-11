pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with WiringPI.wiringPi_h;

package WiringPI.max5322_c is

   procedure myAnalogWrite
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      value : int)  -- max5322.c:36
   with Import => True, 
        Convention => C, 
        External_Name => "myAnalogWrite";

   function max5322Setup (pinBase : int; spiChannel : int) return int  -- max5322.c:63
   with Import => True, 
        Convention => C, 
        External_Name => "max5322Setup";

end WiringPI.max5322_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
