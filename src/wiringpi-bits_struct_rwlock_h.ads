pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.bits_struct_rwlock_h is

   type anon_array1196 is array (0 .. 6) of aliased unsigned_char;
   type uu_pthread_rwlock_arch_t is record
      uu_readers : aliased unsigned;  -- /usr/include/bits/struct_rwlock.h:25
      uu_writers : aliased unsigned;  -- /usr/include/bits/struct_rwlock.h:26
      uu_wrphase_futex : aliased unsigned;  -- /usr/include/bits/struct_rwlock.h:27
      uu_writers_futex : aliased unsigned;  -- /usr/include/bits/struct_rwlock.h:28
      uu_pad3 : aliased unsigned;  -- /usr/include/bits/struct_rwlock.h:29
      uu_pad4 : aliased unsigned;  -- /usr/include/bits/struct_rwlock.h:30
      uu_cur_writer : aliased int;  -- /usr/include/bits/struct_rwlock.h:32
      uu_shared : aliased int;  -- /usr/include/bits/struct_rwlock.h:33
      uu_rwelision : aliased signed_char;  -- /usr/include/bits/struct_rwlock.h:34
      uu_pad1 : aliased anon_array1196;  -- /usr/include/bits/struct_rwlock.h:39
      uu_pad2 : aliased unsigned_long;  -- /usr/include/bits/struct_rwlock.h:42
      uu_flags : aliased unsigned;  -- /usr/include/bits/struct_rwlock.h:45
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/struct_rwlock.h:23

end WiringPI.bits_struct_rwlock_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
