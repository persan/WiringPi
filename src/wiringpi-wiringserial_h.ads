pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package WiringPI.wiringSerial_h is

   function serialOpen (device : Interfaces.C.Strings.chars_ptr; baud : int) return int  -- wiringSerial.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "serialOpen";

   procedure serialClose (fd : int)  -- wiringSerial.h:28
   with Import => True, 
        Convention => C, 
        External_Name => "serialClose";

   procedure serialFlush (fd : int)  -- wiringSerial.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "serialFlush";

   procedure serialPutchar (fd : int; c : unsigned_char)  -- wiringSerial.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "serialPutchar";

   procedure serialPuts (fd : int; s : Interfaces.C.Strings.chars_ptr)  -- wiringSerial.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "serialPuts";

   procedure serialPrintf (fd : int; message : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- wiringSerial.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "serialPrintf";

   function serialDataAvail (fd : int) return int  -- wiringSerial.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "serialDataAvail";

   function serialGetchar (fd : int) return int  -- wiringSerial.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "serialGetchar";

end WiringPI.wiringSerial_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
