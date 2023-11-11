pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_stdint_uintn_h;

package WiringPI.wiringPiSPI_c is

   spiBPW : aliased constant WiringPI.bits_stdint_uintn_h.uint8_t  -- wiringPiSPI.c:46
   with Import => True, 
        Convention => C, 
        External_Name => "spiBPW";

   spiDelay : aliased constant WiringPI.bits_stdint_uintn_h.uint16_t  -- wiringPiSPI.c:47
   with Import => True, 
        Convention => C, 
        External_Name => "spiDelay";

   spiSpeeds : aliased array (0 .. 1) of aliased WiringPI.bits_stdint_uintn_h.uint32_t  -- wiringPiSPI.c:49
   with Import => True, 
        Convention => C, 
        External_Name => "spiSpeeds";

   spiFds : aliased array (0 .. 1) of aliased int  -- wiringPiSPI.c:50
   with Import => True, 
        Convention => C, 
        External_Name => "spiFds";

   function wiringPiSPIGetFd (channel : int) return int  -- wiringPiSPI.c:59
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiSPIGetFd";

   function wiringPiSPIDataRW
     (channel : int;
      data : access unsigned_char;
      len : int) return int  -- wiringPiSPI.c:74
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiSPIDataRW";

   function wiringPiSPISetupMode
     (channel : int;
      speed : int;
      mode : int) return int  -- wiringPiSPI.c:102
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiSPISetupMode";

   function wiringPiSPISetup (channel : int; speed : int) return int  -- wiringPiSPI.c:141
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiSPISetup";

end WiringPI.wiringPiSPI_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
