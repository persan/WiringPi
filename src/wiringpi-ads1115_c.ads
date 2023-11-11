pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_stdint_uintn_h;
limited with WiringPI.wiringPi_h;

package WiringPI.ads1115_c is

   CONFIG_OS_MASK : constant := (16#8000#);  --  ads1115.c:46
   CONFIG_OS_SINGLE : constant := (16#8000#);  --  ads1115.c:47

   CONFIG_MUX_MASK : constant := (16#7000#);  --  ads1115.c:52

   CONFIG_MUX_DIFF_0_1 : constant := (16#0000#);  --  ads1115.c:56
   CONFIG_MUX_DIFF_0_3 : constant := (16#1000#);  --  ads1115.c:57
   CONFIG_MUX_DIFF_1_3 : constant := (16#2000#);  --  ads1115.c:58
   CONFIG_MUX_DIFF_2_3 : constant := (16#3000#);  --  ads1115.c:59

   CONFIG_MUX_SINGLE_0 : constant := (16#4000#);  --  ads1115.c:63
   CONFIG_MUX_SINGLE_1 : constant := (16#5000#);  --  ads1115.c:64
   CONFIG_MUX_SINGLE_2 : constant := (16#6000#);  --  ads1115.c:65
   CONFIG_MUX_SINGLE_3 : constant := (16#7000#);  --  ads1115.c:66

   CONFIG_PGA_MASK : constant := (16#0E00#);  --  ads1115.c:70
   CONFIG_PGA_6_144V : constant := (16#0000#);  --  ads1115.c:71
   CONFIG_PGA_4_096V : constant := (16#0200#);  --  ads1115.c:72
   CONFIG_PGA_2_048V : constant := (16#0400#);  --  ads1115.c:73
   CONFIG_PGA_1_024V : constant := (16#0600#);  --  ads1115.c:74
   CONFIG_PGA_0_512V : constant := (16#0800#);  --  ads1115.c:75
   CONFIG_PGA_0_256V : constant := (16#0A00#);  --  ads1115.c:76

   CONFIG_MODE : constant := (16#0100#);  --  ads1115.c:78

   CONFIG_DR_MASK : constant := (16#00E0#);  --  ads1115.c:82
   CONFIG_DR_8SPS : constant := (16#0000#);  --  ads1115.c:83
   CONFIG_DR_16SPS : constant := (16#0020#);  --  ads1115.c:84
   CONFIG_DR_32SPS : constant := (16#0040#);  --  ads1115.c:85
   CONFIG_DR_64SPS : constant := (16#0060#);  --  ads1115.c:86
   CONFIG_DR_128SPS : constant := (16#0080#);  --  ads1115.c:87
   CONFIG_DR_475SPS : constant := (16#00A0#);  --  ads1115.c:88
   CONFIG_DR_860SPS : constant := (16#00C0#);  --  ads1115.c:89

   CONFIG_CMODE_MASK : constant := (16#0010#);  --  ads1115.c:93
   CONFIG_CMODE_TRAD : constant := (16#0000#);  --  ads1115.c:94
   CONFIG_CMODE_WINDOW : constant := (16#0010#);  --  ads1115.c:95

   CONFIG_CPOL_MASK : constant := (16#0008#);  --  ads1115.c:99
   CONFIG_CPOL_ACTVLOW : constant := (16#0000#);  --  ads1115.c:100
   CONFIG_CPOL_ACTVHI : constant := (16#0008#);  --  ads1115.c:101

   CONFIG_CLAT_MASK : constant := (16#0004#);  --  ads1115.c:105
   CONFIG_CLAT_NONLAT : constant := (16#0000#);  --  ads1115.c:106
   CONFIG_CLAT_LATCH : constant := (16#0004#);  --  ads1115.c:107

   CONFIG_CQUE_MASK : constant := (16#0003#);  --  ads1115.c:111
   CONFIG_CQUE_1CONV : constant := (16#0000#);  --  ads1115.c:112
   CONFIG_CQUE_2CONV : constant := (16#0001#);  --  ads1115.c:113
   CONFIG_CQUE_4CONV : constant := (16#0002#);  --  ads1115.c:114
   CONFIG_CQUE_NONE : constant := (16#0003#);  --  ads1115.c:115

   CONFIG_DEFAULT : constant := (16#8583#);  --  ads1115.c:117

   dataRates : aliased array (0 .. 7) of aliased WiringPI.bits_stdint_uintn_h.uint16_t  -- ads1115.c:120
   with Import => True, 
        Convention => C, 
        External_Name => "dataRates";

   gains : aliased array (0 .. 5) of aliased WiringPI.bits_stdint_uintn_h.uint16_t  -- ads1115.c:125
   with Import => True, 
        Convention => C, 
        External_Name => "gains";

   function myAnalogRead (node : access WiringPI.wiringPi_h.wiringPiNodeStruct; pin : int) return int  -- ads1115.c:139
   with Import => True, 
        Convention => C, 
        External_Name => "myAnalogRead";

   procedure myDigitalWrite
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      data : int)  -- ads1115.c:216
   with Import => True, 
        Convention => C, 
        External_Name => "myDigitalWrite";

   procedure myAnalogWrite
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      data : int)  -- ads1115.c:245
   with Import => True, 
        Convention => C, 
        External_Name => "myAnalogWrite";

   function ads1115Setup (pinBase : int; i2cAddr : int) return int  -- ads1115.c:275
   with Import => True, 
        Convention => C, 
        External_Name => "ads1115Setup";

end WiringPI.ads1115_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
