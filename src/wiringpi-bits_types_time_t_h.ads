pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_types_h;

package WiringPI.bits_types_time_t_h is

   subtype time_t is WiringPI.bits_types_h.uu_time_t;  -- /usr/include/bits/types/time_t.h:10

end WiringPI.bits_types_time_t_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
