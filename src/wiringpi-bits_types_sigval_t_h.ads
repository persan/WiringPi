pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_types_u_sigval_t_h;

package WiringPI.bits_types_sigval_t_h is

   subtype sigval_t is WiringPI.bits_types_u_sigval_t_h.uu_sigval_t;  -- /usr/include/bits/types/sigval_t.h:16

end WiringPI.bits_types_sigval_t_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
