pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.bits_types_u_mbstate_t_h is

   subtype anon_array916 is Interfaces.C.char_array (0 .. 3);
   type anon_union914 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_wch : aliased unsigned;  -- /usr/include/bits/types/__mbstate_t.h:18
         when others =>
            uu_wchb : aliased anon_array916;  -- /usr/include/bits/types/__mbstate_t.h:19
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type uu_mbstate_t is record
      uu_count : aliased int;  -- /usr/include/bits/types/__mbstate_t.h:15
      uu_value : aliased anon_union914;  -- /usr/include/bits/types/__mbstate_t.h:20
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/types/__mbstate_t.h:21

end WiringPI.bits_types_u_mbstate_t_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
