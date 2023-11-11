pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package WiringPI.bits_types_u_locale_t_h is

   type uu_locale_data is null record;   -- incomplete struct

   type anon_array1429 is array (0 .. 12) of access uu_locale_data;
   type anon_array1430 is array (0 .. 12) of Interfaces.C.Strings.chars_ptr;
   type uu_locale_struct is record
      uu_locales : anon_array1429;  -- /usr/include/bits/types/__locale_t.h:30
      uu_ctype_b : access unsigned_short;  -- /usr/include/bits/types/__locale_t.h:33
      uu_ctype_tolower : access int;  -- /usr/include/bits/types/__locale_t.h:34
      uu_ctype_toupper : access int;  -- /usr/include/bits/types/__locale_t.h:35
      uu_names : anon_array1430;  -- /usr/include/bits/types/__locale_t.h:38
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/types/__locale_t.h:27

   type uu_locale_t is access all uu_locale_struct;  -- /usr/include/bits/types/__locale_t.h:41

end WiringPI.bits_types_u_locale_t_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
