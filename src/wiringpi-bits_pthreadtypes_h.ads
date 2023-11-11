pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_struct_mutex_h;
with WiringPI.bits_thread_shared_types_h;
with WiringPI.bits_struct_rwlock_h;

package WiringPI.bits_pthreadtypes_h is

   subtype pthread_t is unsigned_long;  -- /usr/include/bits/pthreadtypes.h:27

   subtype anon_array916 is Interfaces.C.char_array (0 .. 3);
   type pthread_mutexattr_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_size : aliased anon_array916;  -- /usr/include/bits/pthreadtypes.h:34
         when others =>
            uu_align : aliased int;  -- /usr/include/bits/pthreadtypes.h:35
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /usr/include/bits/pthreadtypes.h:36

   type pthread_condattr_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_size : aliased anon_array916;  -- /usr/include/bits/pthreadtypes.h:43
         when others =>
            uu_align : aliased int;  -- /usr/include/bits/pthreadtypes.h:44
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /usr/include/bits/pthreadtypes.h:45

   subtype pthread_key_t is unsigned;  -- /usr/include/bits/pthreadtypes.h:49

   subtype pthread_once_t is int;  -- /usr/include/bits/pthreadtypes.h:53

   subtype anon_array1212 is Interfaces.C.char_array (0 .. 55);
   type pthread_attr_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_size : aliased anon_array1212;  -- /usr/include/bits/pthreadtypes.h:58
         when others =>
            uu_align : aliased long;  -- /usr/include/bits/pthreadtypes.h:59
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /usr/include/bits/pthreadtypes.h:56

   subtype anon_array1216 is Interfaces.C.char_array (0 .. 39);
   type pthread_mutex_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_data : aliased WiringPI.bits_struct_mutex_h.uu_pthread_mutex_s;  -- /usr/include/bits/pthreadtypes.h:69
         when 1 =>
            uu_size : aliased anon_array1216;  -- /usr/include/bits/pthreadtypes.h:70
         when others =>
            uu_align : aliased long;  -- /usr/include/bits/pthreadtypes.h:71
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /usr/include/bits/pthreadtypes.h:72

   subtype anon_array1220 is Interfaces.C.char_array (0 .. 47);
   type pthread_cond_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_data : aliased WiringPI.bits_thread_shared_types_h.uu_pthread_cond_s;  -- /usr/include/bits/pthreadtypes.h:77
         when 1 =>
            uu_size : aliased anon_array1220;  -- /usr/include/bits/pthreadtypes.h:78
         when others =>
            uu_align : aliased Long_Long_Integer;  -- /usr/include/bits/pthreadtypes.h:79
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /usr/include/bits/pthreadtypes.h:80

   type pthread_rwlock_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_data : aliased WiringPI.bits_struct_rwlock_h.uu_pthread_rwlock_arch_t;  -- /usr/include/bits/pthreadtypes.h:88
         when 1 =>
            uu_size : aliased anon_array1212;  -- /usr/include/bits/pthreadtypes.h:89
         when others =>
            uu_align : aliased long;  -- /usr/include/bits/pthreadtypes.h:90
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /usr/include/bits/pthreadtypes.h:91

   subtype anon_array1226 is Interfaces.C.char_array (0 .. 7);
   type pthread_rwlockattr_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_size : aliased anon_array1226;  -- /usr/include/bits/pthreadtypes.h:95
         when others =>
            uu_align : aliased long;  -- /usr/include/bits/pthreadtypes.h:96
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /usr/include/bits/pthreadtypes.h:97

   subtype pthread_spinlock_t is int;  -- /usr/include/bits/pthreadtypes.h:103

   subtype anon_array1232 is Interfaces.C.char_array (0 .. 31);
   type pthread_barrier_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_size : aliased anon_array1232;  -- /usr/include/bits/pthreadtypes.h:110
         when others =>
            uu_align : aliased long;  -- /usr/include/bits/pthreadtypes.h:111
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /usr/include/bits/pthreadtypes.h:112

   type pthread_barrierattr_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_size : aliased anon_array916;  -- /usr/include/bits/pthreadtypes.h:116
         when others =>
            uu_align : aliased int;  -- /usr/include/bits/pthreadtypes.h:117
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /usr/include/bits/pthreadtypes.h:118

end WiringPI.bits_pthreadtypes_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
