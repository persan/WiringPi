pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_stdint_uintn_h;
limited with WiringPI.wiringPi_h;

package WiringPI.mcp23s08_c is

   MCP_SPEED : constant := 4000000;  --  mcp23s08.c:34

   procedure writeByte
     (spiPort : WiringPI.bits_stdint_uintn_h.uint8_t;
      devId : WiringPI.bits_stdint_uintn_h.uint8_t;
      reg : WiringPI.bits_stdint_uintn_h.uint8_t;
      data : WiringPI.bits_stdint_uintn_h.uint8_t)  -- mcp23s08.c:44
   with Import => True, 
        Convention => C, 
        External_Name => "writeByte";

   function readByte
     (spiPort : WiringPI.bits_stdint_uintn_h.uint8_t;
      devId : WiringPI.bits_stdint_uintn_h.uint8_t;
      reg : WiringPI.bits_stdint_uintn_h.uint8_t) return WiringPI.bits_stdint_uintn_h.uint8_t  -- mcp23s08.c:61
   with Import => True, 
        Convention => C, 
        External_Name => "readByte";

   procedure myPinMode
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      mode : int)  -- mcp23s08.c:79
   with Import => True, 
        Convention => C, 
        External_Name => "myPinMode";

   procedure myPullUpDnControl
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      mode : int)  -- mcp23s08.c:101
   with Import => True, 
        Convention => C, 
        External_Name => "myPullUpDnControl";

   procedure myDigitalWrite
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      value : int)  -- mcp23s08.c:124
   with Import => True, 
        Convention => C, 
        External_Name => "myDigitalWrite";

   function myDigitalRead (node : access WiringPI.wiringPi_h.wiringPiNodeStruct; pin : int) return int  -- mcp23s08.c:146
   with Import => True, 
        Convention => C, 
        External_Name => "myDigitalRead";

   function mcp23s08Setup
     (pinBase : int;
      spiPort : int;
      devId : int) return int  -- mcp23s08.c:168
   with Import => True, 
        Convention => C, 
        External_Name => "mcp23s08Setup";

end WiringPI.mcp23s08_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
