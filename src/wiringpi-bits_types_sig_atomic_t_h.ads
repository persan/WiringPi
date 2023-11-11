pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_types_h;

package WiringPI.bits_types_sig_atomic_t_h is

   subtype sig_atomic_t is WiringPI.bits_types_h.uu_sig_atomic_t;  -- /usr/include/bits/types/sig_atomic_t.h:8

end WiringPI.bits_types_sig_atomic_t_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
