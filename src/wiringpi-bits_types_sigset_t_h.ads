pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_types_u_sigset_t_h;

package WiringPI.bits_types_sigset_t_h is

   subtype sigset_t is WiringPI.bits_types_u_sigset_t_h.uu_sigset_t;  -- /usr/include/bits/types/sigset_t.h:7

end WiringPI.bits_types_sigset_t_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
