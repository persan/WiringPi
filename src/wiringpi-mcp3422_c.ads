pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with WiringPI.wiringPi_h;

package WiringPI.mcp3422_c is

   procedure waitForConversion
     (fd : int;
      buffer : access unsigned_char;
      n : int)  -- mcp3422.c:46
   with Import => True, 
        Convention => C, 
        External_Name => "waitForConversion";

   function myAnalogRead (node : access WiringPI.wiringPi_h.wiringPiNodeStruct; chan : int) return int  -- mcp3422.c:63
   with Import => True, 
        Convention => C, 
        External_Name => "myAnalogRead";

   function mcp3422Setup
     (pinBase : int;
      i2cAddress : int;
      sampleRate : int;
      gain : int) return int  -- mcp3422.c:109
   with Import => True, 
        Convention => C, 
        External_Name => "mcp3422Setup";

end WiringPI.mcp3422_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
