pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_types_u_sigval_t_h;
limited with WiringPI.bits_pthreadtypes_h;
with WiringPI.bits_types_h;

package WiringPI.bits_types_sigevent_t_h is

   --  unsupported macro: sigev_notify_function _sigev_un._sigev_thread._function
   --  unsupported macro: sigev_notify_attributes _sigev_un._sigev_thread._attribute
   type anon_array2116 is array (0 .. 11) of aliased int;
   type anon_struct2117 is record
      u_function : access procedure (arg1 : WiringPI.bits_types_u_sigval_t_h.uu_sigval_t);  -- /usr/include/bits/types/sigevent_t.h:38
      u_attribute : access WiringPI.bits_pthreadtypes_h.pthread_attr_t;  -- /usr/include/bits/types/sigevent_t.h:39
   end record
   with Convention => C_Pass_By_Copy;
   type anon_union2115 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            u_pad : aliased anon_array2116;  -- /usr/include/bits/types/sigevent_t.h:30
         when 1 =>
            u_tid : aliased WiringPI.bits_types_h.uu_pid_t;  -- /usr/include/bits/types/sigevent_t.h:34
         when others =>
            u_sigev_thread : aliased anon_struct2117;  -- /usr/include/bits/types/sigevent_t.h:40
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type sigevent is record
      sigev_value : aliased WiringPI.bits_types_u_sigval_t_h.uu_sigval_t;  -- /usr/include/bits/types/sigevent_t.h:24
      sigev_signo : aliased int;  -- /usr/include/bits/types/sigevent_t.h:25
      sigev_notify : aliased int;  -- /usr/include/bits/types/sigevent_t.h:26
      u_sigev_un : aliased anon_union2115;  -- /usr/include/bits/types/sigevent_t.h:41
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/types/sigevent_t.h:22

   subtype sigevent_t is sigevent;  -- /usr/include/bits/types/sigevent_t.h:42

end WiringPI.bits_types_sigevent_t_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
