pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_types_h;

package WiringPI.bits_stdint_uintn_h is

   subtype uint8_t is WiringPI.bits_types_h.uu_uint8_t;  -- /usr/include/bits/stdint-uintn.h:24

   subtype uint16_t is WiringPI.bits_types_h.uu_uint16_t;  -- /usr/include/bits/stdint-uintn.h:25

   subtype uint32_t is WiringPI.bits_types_h.uu_uint32_t;  -- /usr/include/bits/stdint-uintn.h:26

   subtype uint64_t is WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/stdint-uintn.h:27

end WiringPI.bits_stdint_uintn_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
