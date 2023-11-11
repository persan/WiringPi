pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;

package WiringPI.bits_types_u_sigval_t_h is

   type sigval (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            sival_int : aliased int;  -- /usr/include/bits/types/__sigval_t.h:26
         when others =>
            sival_ptr : System.Address;  -- /usr/include/bits/types/__sigval_t.h:27
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /usr/include/bits/types/__sigval_t.h:24

   subtype uu_sigval_t is sigval;  -- /usr/include/bits/types/__sigval_t.h:30

end WiringPI.bits_types_u_sigval_t_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
