pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

package WiringPI.bits_atomic_wide_counter_h is

   type anon_struct1185 is record
      uu_low : aliased unsigned;  -- /usr/include/bits/atomic_wide_counter.h:30
      uu_high : aliased unsigned;  -- /usr/include/bits/atomic_wide_counter.h:31
   end record
   with Convention => C_Pass_By_Copy;
   type uu_atomic_wide_counter (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_value64 : aliased Extensions.unsigned_long_long;  -- /usr/include/bits/atomic_wide_counter.h:27
         when others =>
            uu_value32 : aliased anon_struct1185;  -- /usr/include/bits/atomic_wide_counter.h:32
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /usr/include/bits/atomic_wide_counter.h:33

end WiringPI.bits_atomic_wide_counter_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
