pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with WiringPI.wiringPi_h;

package WiringPI.mcp4802_c is

   procedure myAnalogWrite
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      value : int)  -- mcp4802.c:36
   with Import => True, 
        Convention => C, 
        External_Name => "myAnalogWrite";

   function mcp4802Setup (pinBase : int; spiChannel : int) return int  -- mcp4802.c:63
   with Import => True, 
        Convention => C, 
        External_Name => "mcp4802Setup";

end WiringPI.mcp4802_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
