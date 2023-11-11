pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with WiringPI.wiringPi_h;
with Interfaces.C.Strings;

package WiringPI.ds18b20_c is

   W1_PREFIX : aliased constant String := "/sys/bus/w1/devices/28-" & ASCII.NUL;  --  ds18b20.c:41
   W1_POSTFIX : aliased constant String := "/w1_slave" & ASCII.NUL;  --  ds18b20.c:42

   function myAnalogRead (node : access WiringPI.wiringPi_h.wiringPiNodeStruct; pin : int) return int  -- ds18b20.c:50
   with Import => True, 
        Convention => C, 
        External_Name => "myAnalogRead";

   function ds18b20Setup (pinBase : int; deviceId : Interfaces.C.Strings.chars_ptr) return int  -- ds18b20.c:117
   with Import => True, 
        Convention => C, 
        External_Name => "ds18b20Setup";

end WiringPI.ds18b20_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
