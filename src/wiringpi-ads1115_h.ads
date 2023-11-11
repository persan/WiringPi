pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.ads1115_h is

   ADS1115_GAIN_6 : constant := 0;  --  ads1115.h:29
   ADS1115_GAIN_4 : constant := 1;  --  ads1115.h:30
   ADS1115_GAIN_2 : constant := 2;  --  ads1115.h:31
   ADS1115_GAIN_1 : constant := 3;  --  ads1115.h:32
   ADS1115_GAIN_HALF : constant := 4;  --  ads1115.h:33
   ADS1115_GAIN_QUARTER : constant := 5;  --  ads1115.h:34

   ADS1115_DR_8 : constant := 0;  --  ads1115.h:38
   ADS1115_DR_16 : constant := 1;  --  ads1115.h:39
   ADS1115_DR_32 : constant := 2;  --  ads1115.h:40
   ADS1115_DR_64 : constant := 3;  --  ads1115.h:41
   ADS1115_DR_128 : constant := 4;  --  ads1115.h:42
   ADS1115_DR_250 : constant := 5;  --  ads1115.h:43
   ADS1115_DR_475 : constant := 6;  --  ads1115.h:44
   ADS1115_DR_860 : constant := 7;  --  ads1115.h:45

   function ads1115Setup (pinBase : int; i2cAddress : int) return int  -- ads1115.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "ads1115Setup";

end WiringPI.ads1115_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
