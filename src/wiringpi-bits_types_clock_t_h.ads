pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_types_h;

package WiringPI.bits_types_clock_t_h is

   subtype clock_t is WiringPI.bits_types_h.uu_clock_t;  -- /usr/include/bits/types/clock_t.h:7

end WiringPI.bits_types_clock_t_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
