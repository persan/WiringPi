pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with WiringPI.wiringPi_h;

package WiringPI.pseudoPins_c is

   SHARED_NAME : aliased constant String := "wiringPiPseudoPins" & ASCII.NUL;  --  pseudoPins.c:35
   PSEUDO_PINS : constant := 64;  --  pseudoPins.c:36

   function myAnalogRead (node : access WiringPI.wiringPi_h.wiringPiNodeStruct; pin : int) return int  -- pseudoPins.c:48
   with Import => True, 
        Convention => C, 
        External_Name => "myAnalogRead";

   procedure myAnalogWrite
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      value : int)  -- pseudoPins.c:57
   with Import => True, 
        Convention => C, 
        External_Name => "myAnalogWrite";

   function pseudoPinsSetup (pinBase : int) return int  -- pseudoPins.c:72
   with Import => True, 
        Convention => C, 
        External_Name => "pseudoPinsSetup";

end WiringPI.pseudoPins_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
