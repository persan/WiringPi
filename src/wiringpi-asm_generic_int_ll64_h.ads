pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

package WiringPI.asm_generic_int_ll64_h is

   subtype uu_s8 is signed_char;  -- /usr/include/asm-generic/int-ll64.h:20

   subtype uu_u8 is unsigned_char;  -- /usr/include/asm-generic/int-ll64.h:21

   subtype uu_s16 is short;  -- /usr/include/asm-generic/int-ll64.h:23

   subtype uu_u16 is unsigned_short;  -- /usr/include/asm-generic/int-ll64.h:24

   subtype uu_s32 is int;  -- /usr/include/asm-generic/int-ll64.h:26

   subtype uu_u32 is unsigned;  -- /usr/include/asm-generic/int-ll64.h:27

   subtype uu_s64 is Long_Long_Integer;  -- /usr/include/asm-generic/int-ll64.h:30

   subtype uu_u64 is Extensions.unsigned_long_long;  -- /usr/include/asm-generic/int-ll64.h:31

end WiringPI.asm_generic_int_ll64_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
