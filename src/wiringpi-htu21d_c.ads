pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_stdint_uintn_h;
limited with WiringPI.wiringPi_h;

package WiringPI.htu21d_c is

   I2C_ADDRESS : constant := 16#40#;  --  htu21d.c:39

   function checksum (data : access WiringPI.bits_stdint_uintn_h.uint8_t) return int  -- htu21d.c:41
   with Import => True, 
        Convention => C, 
        External_Name => "checksum";

   function myAnalogRead (node : access WiringPI.wiringPi_h.wiringPiNodeStruct; pin : int) return int  -- htu21d.c:53
   with Import => True, 
        Convention => C, 
        External_Name => "myAnalogRead";

   function htu21dSetup (pinBase : int) return int  -- htu21d.c:122
   with Import => True, 
        Convention => C, 
        External_Name => "htu21dSetup";

end WiringPI.htu21d_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
