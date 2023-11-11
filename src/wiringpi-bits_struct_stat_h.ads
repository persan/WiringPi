pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_types_h;
with WiringPI.bits_types_struct_timespec_h;

package WiringPI.bits_struct_stat_h is

   --  unsupported macro: st_atime st_atim.tv_sec
   --  unsupported macro: st_mtime st_mtim.tv_sec
   --  unsupported macro: st_ctime st_ctim.tv_sec
   type anon_array1637 is array (0 .. 2) of aliased WiringPI.bits_types_h.uu_syscall_slong_t;
   type stat is record
      st_dev : aliased WiringPI.bits_types_h.uu_dev_t;  -- /usr/include/bits/struct_stat.h:31
      st_ino : aliased WiringPI.bits_types_h.uu_ino_t;  -- /usr/include/bits/struct_stat.h:36
      st_nlink : aliased WiringPI.bits_types_h.uu_nlink_t;  -- /usr/include/bits/struct_stat.h:44
      st_mode : aliased WiringPI.bits_types_h.uu_mode_t;  -- /usr/include/bits/struct_stat.h:45
      st_uid : aliased WiringPI.bits_types_h.uu_uid_t;  -- /usr/include/bits/struct_stat.h:47
      st_gid : aliased WiringPI.bits_types_h.uu_gid_t;  -- /usr/include/bits/struct_stat.h:48
      uu_pad0 : aliased int;  -- /usr/include/bits/struct_stat.h:50
      st_rdev : aliased WiringPI.bits_types_h.uu_dev_t;  -- /usr/include/bits/struct_stat.h:52
      st_size : aliased WiringPI.bits_types_h.uu_off_t;  -- /usr/include/bits/struct_stat.h:57
      st_blksize : aliased WiringPI.bits_types_h.uu_blksize_t;  -- /usr/include/bits/struct_stat.h:61
      st_blocks : aliased WiringPI.bits_types_h.uu_blkcnt_t;  -- /usr/include/bits/struct_stat.h:63
      st_atim : aliased WiringPI.bits_types_struct_timespec_h.timespec;  -- /usr/include/bits/struct_stat.h:74
      st_mtim : aliased WiringPI.bits_types_struct_timespec_h.timespec;  -- /usr/include/bits/struct_stat.h:75
      st_ctim : aliased WiringPI.bits_types_struct_timespec_h.timespec;  -- /usr/include/bits/struct_stat.h:76
      uu_glibc_reserved : aliased anon_array1637;  -- /usr/include/bits/struct_stat.h:89
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/struct_stat.h:26

end WiringPI.bits_struct_stat_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
