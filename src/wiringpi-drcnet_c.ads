pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
limited with WiringPI.wiringPi_h;

package WiringPI.drcNet_c is

   function remoteReadline
     (fd : int;
      buf : Interfaces.C.Strings.chars_ptr;
      max : int) return int  -- drcNet.c:50
   with Import => True, 
        Convention => C, 
        External_Name => "remoteReadline";

   function getChallenge (fd : int) return Interfaces.C.Strings.chars_ptr  -- drcNet.c:77
   with Import => True, 
        Convention => C, 
        External_Name => "getChallenge";

   function authenticate (fd : int; pass : Interfaces.C.Strings.chars_ptr) return int  -- drcNet.c:103
   with Import => True, 
        Convention => C, 
        External_Name => "authenticate";

   --  skipped func _drcSetupNet

   procedure myPinMode
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      mode : int)  -- drcNet.c:207
   with Import => True, 
        Convention => C, 
        External_Name => "myPinMode";

   procedure myPullUpDnControl
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      mode : int)  -- drcNet.c:225
   with Import => True, 
        Convention => C, 
        External_Name => "myPullUpDnControl";

   procedure myDigitalWrite
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      value : int)  -- drcNet.c:243
   with Import => True, 
        Convention => C, 
        External_Name => "myDigitalWrite";

   procedure myAnalogWrite
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      value : int)  -- drcNet.c:279
   with Import => True, 
        Convention => C, 
        External_Name => "myAnalogWrite";

   procedure myPwmWrite
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      value : int)  -- drcNet.c:297
   with Import => True, 
        Convention => C, 
        External_Name => "myPwmWrite";

   function myAnalogRead (node : access WiringPI.wiringPi_h.wiringPiNodeStruct; pin : int) return int  -- drcNet.c:315
   with Import => True, 
        Convention => C, 
        External_Name => "myAnalogRead";

   function myDigitalRead (node : access WiringPI.wiringPi_h.wiringPiNodeStruct; pin : int) return int  -- drcNet.c:335
   with Import => True, 
        Convention => C, 
        External_Name => "myDigitalRead";

   function drcSetupNet
     (pinBase : int;
      numPins : int;
      ipAddress : Interfaces.C.Strings.chars_ptr;
      port : Interfaces.C.Strings.chars_ptr;
      password : Interfaces.C.Strings.chars_ptr) return int  -- drcNet.c:377
   with Import => True, 
        Convention => C, 
        External_Name => "drcSetupNet";

end WiringPI.drcNet_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
