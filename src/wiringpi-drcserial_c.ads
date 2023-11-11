pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with WiringPI.wiringPi_h;
with Interfaces.C.Strings;

package WiringPI.drcSerial_c is

   procedure myPinMode
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      mode : int)  -- drcSerial.c:42
   with Import => True, 
        Convention => C, 
        External_Name => "myPinMode";

   procedure myPullUpDnControl
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      mode : int)  -- drcSerial.c:61
   with Import => True, 
        Convention => C, 
        External_Name => "myPullUpDnControl";

   procedure myDigitalWrite
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      value : int)  -- drcSerial.c:87
   with Import => True, 
        Convention => C, 
        External_Name => "myDigitalWrite";

   procedure myPwmWrite
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      value : int)  -- drcSerial.c:99
   with Import => True, 
        Convention => C, 
        External_Name => "myPwmWrite";

   function myAnalogRead (node : access WiringPI.wiringPi_h.wiringPiNodeStruct; pin : int) return int  -- drcSerial.c:112
   with Import => True, 
        Convention => C, 
        External_Name => "myAnalogRead";

   function myDigitalRead (node : access WiringPI.wiringPi_h.wiringPiNodeStruct; pin : int) return int  -- drcSerial.c:130
   with Import => True, 
        Convention => C, 
        External_Name => "myDigitalRead";

   function drcSetupSerial
     (pinBase : int;
      numPins : int;
      device : Interfaces.C.Strings.chars_ptr;
      baud : int) return int  -- drcSerial.c:146
   with Import => True, 
        Convention => C, 
        External_Name => "drcSetupSerial";

end WiringPI.drcSerial_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
