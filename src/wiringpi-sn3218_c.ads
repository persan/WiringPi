pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with WiringPI.wiringPi_h;

package WiringPI.sn3218_c is

   procedure myAnalogWrite
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      value : int)  -- sn3218.c:36
   with Import => True, 
        Convention => C, 
        External_Name => "myAnalogWrite";

   function sn3218Setup (pinBase : int) return int  -- sn3218.c:52
   with Import => True, 
        Convention => C, 
        External_Name => "sn3218Setup";

end WiringPI.sn3218_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
