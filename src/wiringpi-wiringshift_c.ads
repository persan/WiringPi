pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_stdint_uintn_h;

package WiringPI.wiringShift_c is

   function shiftIn
     (dPin : WiringPI.bits_stdint_uintn_h.uint8_t;
      cPin : WiringPI.bits_stdint_uintn_h.uint8_t;
      order : WiringPI.bits_stdint_uintn_h.uint8_t) return WiringPI.bits_stdint_uintn_h.uint8_t  -- wiringShift.c:36
   with Import => True, 
        Convention => C, 
        External_Name => "shiftIn";

   procedure shiftOut
     (dPin : WiringPI.bits_stdint_uintn_h.uint8_t;
      cPin : WiringPI.bits_stdint_uintn_h.uint8_t;
      order : WiringPI.bits_stdint_uintn_h.uint8_t;
      val : WiringPI.bits_stdint_uintn_h.uint8_t)  -- wiringShift.c:65
   with Import => True, 
        Convention => C, 
        External_Name => "shiftOut";

end WiringPI.wiringShift_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
