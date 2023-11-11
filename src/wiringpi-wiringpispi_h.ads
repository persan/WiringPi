pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.wiringPiSPI_h is

   function wiringPiSPIGetFd (channel : int) return int  -- ./wiringPiSPI.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiSPIGetFd";

   function wiringPiSPIDataRW
     (channel : int;
      data : access unsigned_char;
      len : int) return int  -- ./wiringPiSPI.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiSPIDataRW";

   function wiringPiSPISetupMode
     (channel : int;
      speed : int;
      mode : int) return int  -- ./wiringPiSPI.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiSPISetupMode";

   function wiringPiSPISetup (channel : int; speed : int) return int  -- ./wiringPiSPI.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiSPISetup";

end WiringPI.wiringPiSPI_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
