pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package WiringPI.wiringSerial_c is

   function serialOpen (device : Interfaces.C.Strings.chars_ptr; baud : int) return int  -- wiringSerial.c:44
   with Import => True, 
        Convention => C, 
        External_Name => "serialOpen";

   procedure serialFlush (fd : int)  -- wiringSerial.c:132
   with Import => True, 
        Convention => C, 
        External_Name => "serialFlush";

   procedure serialClose (fd : int)  -- wiringSerial.c:144
   with Import => True, 
        Convention => C, 
        External_Name => "serialClose";

   procedure serialPutchar (fd : int; c : unsigned_char)  -- wiringSerial.c:156
   with Import => True, 
        Convention => C, 
        External_Name => "serialPutchar";

   procedure serialPuts (fd : int; s : Interfaces.C.Strings.chars_ptr)  -- wiringSerial.c:168
   with Import => True, 
        Convention => C, 
        External_Name => "serialPuts";

   procedure serialPrintf (fd : int; message : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- wiringSerial.c:179
   with Import => True, 
        Convention => C, 
        External_Name => "serialPrintf";

   function serialDataAvail (fd : int) return int  -- wiringSerial.c:198
   with Import => True, 
        Convention => C, 
        External_Name => "serialDataAvail";

   function serialGetchar (fd : int) return int  -- wiringSerial.c:217
   with Import => True, 
        Convention => C, 
        External_Name => "serialGetchar";

end WiringPI.wiringSerial_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
