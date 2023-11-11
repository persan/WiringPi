pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_types_h;

package WiringPI.bits_types_timer_t_h is

   subtype timer_t is WiringPI.bits_types_h.uu_timer_t;  -- /usr/include/bits/types/timer_t.h:7

end WiringPI.bits_types_timer_t_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
