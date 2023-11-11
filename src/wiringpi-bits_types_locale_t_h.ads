pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_types_u_locale_t_h;

package WiringPI.bits_types_locale_t_h is

   subtype locale_t is WiringPI.bits_types_u_locale_t_h.uu_locale_t;  -- /usr/include/bits/types/locale_t.h:24

end WiringPI.bits_types_locale_t_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
