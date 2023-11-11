pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.bits_setjmp_h is

   type uu_jmp_buf is array (0 .. 7) of aliased long;  -- /usr/include/bits/setjmp.h:31

end WiringPI.bits_setjmp_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
