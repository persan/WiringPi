pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_stdint_uintn_h;
with Interfaces.C.Strings;

package WiringPI.wiringPiI2C_c is

   I2C_SLAVE : constant := 16#0703#;  --  wiringPiI2C.c:62
   I2C_SMBUS : constant := 16#0720#;  --  wiringPiI2C.c:63

   I2C_SMBUS_READ : constant := 1;  --  wiringPiI2C.c:65
   I2C_SMBUS_WRITE : constant := 0;  --  wiringPiI2C.c:66

   I2C_SMBUS_QUICK : constant := 0;  --  wiringPiI2C.c:70
   I2C_SMBUS_BYTE : constant := 1;  --  wiringPiI2C.c:71
   I2C_SMBUS_BYTE_DATA : constant := 2;  --  wiringPiI2C.c:72
   I2C_SMBUS_WORD_DATA : constant := 3;  --  wiringPiI2C.c:73
   I2C_SMBUS_PROC_CALL : constant := 4;  --  wiringPiI2C.c:74
   I2C_SMBUS_BLOCK_DATA : constant := 5;  --  wiringPiI2C.c:75
   I2C_SMBUS_I2C_BLOCK_BROKEN : constant := 6;  --  wiringPiI2C.c:76
   I2C_SMBUS_BLOCK_PROC_CALL : constant := 7;  --  wiringPiI2C.c:77
   I2C_SMBUS_I2C_BLOCK_DATA : constant := 8;  --  wiringPiI2C.c:78

   I2C_SMBUS_BLOCK_MAX : constant := 32;  --  wiringPiI2C.c:82
   I2C_SMBUS_I2C_BLOCK_MAX : constant := 32;  --  wiringPiI2C.c:83

   type anon_array1560 is array (0 .. 33) of aliased WiringPI.bits_stdint_uintn_h.uint8_t;
   type i2c_smbus_data (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            byte : aliased WiringPI.bits_stdint_uintn_h.uint8_t;  -- wiringPiI2C.c:89
         when 1 =>
            word : aliased WiringPI.bits_stdint_uintn_h.uint16_t;  -- wiringPiI2C.c:90
         when others =>
            block : aliased anon_array1560;  -- wiringPiI2C.c:91
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- wiringPiI2C.c:87

   type i2c_smbus_ioctl_data is record
      read_write : aliased char;  -- wiringPiI2C.c:96
      command : aliased WiringPI.bits_stdint_uintn_h.uint8_t;  -- wiringPiI2C.c:97
      size : aliased int;  -- wiringPiI2C.c:98
      data : access i2c_smbus_data;  -- wiringPiI2C.c:99
   end record
   with Convention => C_Pass_By_Copy;  -- wiringPiI2C.c:94

   function i2c_smbus_access
     (fd : int;
      rw : char;
      command : WiringPI.bits_stdint_uintn_h.uint8_t;
      size : int;
      data : access i2c_smbus_data) return int  -- wiringPiI2C.c:102
   with Import => True, 
        Convention => C, 
        External_Name => "i2c_smbus_access";

   function wiringPiI2CRead (fd : int) return int  -- wiringPiI2C.c:120
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiI2CRead";

   function wiringPiI2CReadReg8 (fd : int; reg : int) return int  -- wiringPiI2C.c:137
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiI2CReadReg8";

   function wiringPiI2CReadReg16 (fd : int; reg : int) return int  -- wiringPiI2C.c:147
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiI2CReadReg16";

   function wiringPiI2CWrite (fd : int; data : int) return int  -- wiringPiI2C.c:164
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiI2CWrite";

   function wiringPiI2CWriteReg8
     (fd : int;
      reg : int;
      value : int) return int  -- wiringPiI2C.c:176
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiI2CWriteReg8";

   function wiringPiI2CWriteReg16
     (fd : int;
      reg : int;
      value : int) return int  -- wiringPiI2C.c:184
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiI2CWriteReg16";

   function wiringPiI2CSetupInterface (device : Interfaces.C.Strings.chars_ptr; devId : int) return int  -- wiringPiI2C.c:200
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiI2CSetupInterface";

   function wiringPiI2CSetup (devId : int) return int  -- wiringPiI2C.c:220
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiI2CSetup";

end WiringPI.wiringPiI2C_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
