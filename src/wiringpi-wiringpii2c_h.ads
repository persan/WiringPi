pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package WiringPI.wiringPiI2C_h is

   function wiringPiI2CRead (fd : int) return int  -- ./wiringPiI2C.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiI2CRead";

   function wiringPiI2CReadReg8 (fd : int; reg : int) return int  -- ./wiringPiI2C.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiI2CReadReg8";

   function wiringPiI2CReadReg16 (fd : int; reg : int) return int  -- ./wiringPiI2C.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiI2CReadReg16";

   function wiringPiI2CWrite (fd : int; data : int) return int  -- ./wiringPiI2C.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiI2CWrite";

   function wiringPiI2CWriteReg8
     (fd : int;
      reg : int;
      data : int) return int  -- ./wiringPiI2C.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiI2CWriteReg8";

   function wiringPiI2CWriteReg16
     (fd : int;
      reg : int;
      data : int) return int  -- ./wiringPiI2C.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiI2CWriteReg16";

   function wiringPiI2CSetupInterface (device : Interfaces.C.Strings.chars_ptr; devId : int) return int  -- ./wiringPiI2C.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiI2CSetupInterface";

   function wiringPiI2CSetup (devId : int) return int  -- ./wiringPiI2C.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiI2CSetup";

end WiringPI.wiringPiI2C_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
