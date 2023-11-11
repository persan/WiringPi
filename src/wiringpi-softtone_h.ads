pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.softTone_h is

   function softToneCreate (pin : int) return int  -- softTone.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "softToneCreate";

   procedure softToneStop (pin : int)  -- softTone.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "softToneStop";

   procedure softToneWrite (pin : int; freq : int)  -- softTone.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "softToneWrite";

end WiringPI.softTone_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
