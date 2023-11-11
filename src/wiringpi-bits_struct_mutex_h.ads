pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_thread_shared_types_h;

package WiringPI.bits_struct_mutex_h is

   type uu_pthread_mutex_s is record
      uu_lock : aliased int;  -- /usr/include/bits/struct_mutex.h:24
      uu_count : aliased unsigned;  -- /usr/include/bits/struct_mutex.h:25
      uu_owner : aliased int;  -- /usr/include/bits/struct_mutex.h:26
      uu_nusers : aliased unsigned;  -- /usr/include/bits/struct_mutex.h:28
      uu_kind : aliased int;  -- /usr/include/bits/struct_mutex.h:32
      uu_spins : aliased short;  -- /usr/include/bits/struct_mutex.h:34
      uu_elision : aliased short;  -- /usr/include/bits/struct_mutex.h:35
      uu_list : aliased WiringPI.bits_thread_shared_types_h.uu_pthread_list_t;  -- /usr/include/bits/struct_mutex.h:36
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/struct_mutex.h:22

end WiringPI.bits_struct_mutex_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
