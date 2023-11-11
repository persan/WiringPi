pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.bits_types_idtype_t_h is

   type idtype_t is 
     (P_ALL,
      P_PID,
      P_PGID,
      P_PIDFD)
   with Convention => C;  -- /usr/include/bits/types/idtype_t.h:12

end WiringPI.bits_types_idtype_t_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
