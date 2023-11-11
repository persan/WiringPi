pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_stdint_intn_h;
with WiringPI.bits_stdint_uintn_h;
limited with WiringPI.wiringPi_h;

package WiringPI.bmp180_c is

   I2C_ADDRESS : constant := 16#77#;  --  bmp180.c:43
   BMP180_OSS : constant := 0;  --  bmp180.c:44

   AC1 : aliased WiringPI.bits_stdint_intn_h.int16_t  -- bmp180.c:52
   with Import => True, 
        Convention => C, 
        External_Name => "AC1";

   AC2 : aliased WiringPI.bits_stdint_intn_h.int16_t  -- bmp180.c:52
   with Import => True, 
        Convention => C, 
        External_Name => "AC2";

   AC3 : aliased WiringPI.bits_stdint_intn_h.int16_t  -- bmp180.c:52
   with Import => True, 
        Convention => C, 
        External_Name => "AC3";

   AC4 : aliased WiringPI.bits_stdint_uintn_h.uint16_t  -- bmp180.c:53
   with Import => True, 
        Convention => C, 
        External_Name => "AC4";

   AC5 : aliased WiringPI.bits_stdint_uintn_h.uint16_t  -- bmp180.c:53
   with Import => True, 
        Convention => C, 
        External_Name => "AC5";

   AC6 : aliased WiringPI.bits_stdint_uintn_h.uint16_t  -- bmp180.c:53
   with Import => True, 
        Convention => C, 
        External_Name => "AC6";

   VB1 : aliased WiringPI.bits_stdint_intn_h.int16_t  -- bmp180.c:54
   with Import => True, 
        Convention => C, 
        External_Name => "VB1";

   VB2 : aliased WiringPI.bits_stdint_intn_h.int16_t  -- bmp180.c:54
   with Import => True, 
        Convention => C, 
        External_Name => "VB2";

   MB : aliased WiringPI.bits_stdint_intn_h.int16_t  -- bmp180.c:55
   with Import => True, 
        Convention => C, 
        External_Name => "MB";

   MC : aliased WiringPI.bits_stdint_intn_h.int16_t  -- bmp180.c:55
   with Import => True, 
        Convention => C, 
        External_Name => "MC";

   MD : aliased WiringPI.bits_stdint_intn_h.int16_t  -- bmp180.c:55
   with Import => True, 
        Convention => C, 
        External_Name => "MD";

   c5 : aliased double  -- bmp180.c:57
   with Import => True, 
        Convention => C, 
        External_Name => "c5";

   c6 : aliased double  -- bmp180.c:57
   with Import => True, 
        Convention => C, 
        External_Name => "c6";

   Mc_2 : aliased double  -- bmp180.c:57
   with Import => True, 
        Convention => C, 
        External_Name => "mc";

   md_2 : aliased double  -- bmp180.c:57
   with Import => True, 
        Convention => C, 
        External_Name => "md";

   x0 : aliased double  -- bmp180.c:57
   with Import => True, 
        Convention => C, 
        External_Name => "x0";

   x1 : aliased double  -- bmp180.c:57
   with Import => True, 
        Convention => C, 
        External_Name => "x1";

   x2 : aliased double  -- bmp180.c:57
   with Import => True, 
        Convention => C, 
        External_Name => "x2";

   yy0 : aliased double  -- bmp180.c:57
   with Import => True, 
        Convention => C, 
        External_Name => "yy0";

   yy1 : aliased double  -- bmp180.c:57
   with Import => True, 
        Convention => C, 
        External_Name => "yy1";

   yy2 : aliased double  -- bmp180.c:57
   with Import => True, 
        Convention => C, 
        External_Name => "yy2";

   p0 : aliased double  -- bmp180.c:57
   with Import => True, 
        Convention => C, 
        External_Name => "p0";

   p1 : aliased double  -- bmp180.c:57
   with Import => True, 
        Convention => C, 
        External_Name => "p1";

   p2 : aliased double  -- bmp180.c:57
   with Import => True, 
        Convention => C, 
        External_Name => "p2";

   cPress : aliased WiringPI.bits_stdint_uintn_h.uint32_t  -- bmp180.c:61
   with Import => True, 
        Convention => C, 
        External_Name => "cPress";

   cTemp : aliased WiringPI.bits_stdint_uintn_h.uint32_t  -- bmp180.c:61
   with Import => True, 
        Convention => C, 
        External_Name => "cTemp";

   altitude : aliased int  -- bmp180.c:63
   with Import => True, 
        Convention => C, 
        External_Name => "altitude";

   function read16 (fd : int; reg : int) return WiringPI.bits_stdint_uintn_h.uint16_t  -- bmp180.c:71
   with Import => True, 
        Convention => C, 
        External_Name => "read16";

   procedure bmp180ReadTempPress (fd : int)  -- bmp180.c:84
   with Import => True, 
        Convention => C, 
        External_Name => "bmp180ReadTempPress";

   procedure myAnalogWrite
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      value : int)  -- bmp180.c:148
   with Import => True, 
        Convention => C, 
        External_Name => "myAnalogWrite";

   function myAnalogRead (node : access WiringPI.wiringPi_h.wiringPiNodeStruct; pin : int) return int  -- bmp180.c:161
   with Import => True, 
        Convention => C, 
        External_Name => "myAnalogRead";

   function bmp180Setup (pinBase : int) return int  -- bmp180.c:188
   with Import => True, 
        Convention => C, 
        External_Name => "bmp180Setup";

end WiringPI.bmp180_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
