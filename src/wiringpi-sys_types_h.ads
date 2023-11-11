pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_types_h;

package WiringPI.sys_types_h is

   subtype u_char is WiringPI.bits_types_h.uu_u_char;  -- /usr/include/sys/types.h:33

   subtype u_short is WiringPI.bits_types_h.uu_u_short;  -- /usr/include/sys/types.h:34

   subtype u_int is WiringPI.bits_types_h.uu_u_int;  -- /usr/include/sys/types.h:35

   subtype u_long is WiringPI.bits_types_h.uu_u_long;  -- /usr/include/sys/types.h:36

   subtype quad_t is WiringPI.bits_types_h.uu_quad_t;  -- /usr/include/sys/types.h:37

   subtype u_quad_t is WiringPI.bits_types_h.uu_u_quad_t;  -- /usr/include/sys/types.h:38

   subtype fsid_t is WiringPI.bits_types_h.uu_fsid_t;  -- /usr/include/sys/types.h:39

   subtype loff_t is WiringPI.bits_types_h.uu_loff_t;  -- /usr/include/sys/types.h:42

   subtype ino_t is WiringPI.bits_types_h.uu_ino_t;  -- /usr/include/sys/types.h:47

   subtype dev_t is WiringPI.bits_types_h.uu_dev_t;  -- /usr/include/sys/types.h:59

   subtype gid_t is WiringPI.bits_types_h.uu_gid_t;  -- /usr/include/sys/types.h:64

   subtype mode_t is WiringPI.bits_types_h.uu_mode_t;  -- /usr/include/sys/types.h:69

   subtype nlink_t is WiringPI.bits_types_h.uu_nlink_t;  -- /usr/include/sys/types.h:74

   subtype uid_t is WiringPI.bits_types_h.uu_uid_t;  -- /usr/include/sys/types.h:79

   subtype pid_t is WiringPI.bits_types_h.uu_pid_t;  -- /usr/include/sys/types.h:97

   subtype id_t is WiringPI.bits_types_h.uu_id_t;  -- /usr/include/sys/types.h:103

   subtype daddr_t is WiringPI.bits_types_h.uu_daddr_t;  -- /usr/include/sys/types.h:114

   subtype caddr_t is WiringPI.bits_types_h.uu_caddr_t;  -- /usr/include/sys/types.h:115

   subtype key_t is WiringPI.bits_types_h.uu_key_t;  -- /usr/include/sys/types.h:121

   subtype ulong is unsigned_long;  -- /usr/include/sys/types.h:148

   subtype ushort is unsigned_short;  -- /usr/include/sys/types.h:149

   subtype uint is unsigned;  -- /usr/include/sys/types.h:150

   subtype u_int8_t is WiringPI.bits_types_h.uu_uint8_t;  -- /usr/include/sys/types.h:158

   subtype u_int16_t is WiringPI.bits_types_h.uu_uint16_t;  -- /usr/include/sys/types.h:159

   subtype u_int32_t is WiringPI.bits_types_h.uu_uint32_t;  -- /usr/include/sys/types.h:160

   subtype u_int64_t is WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/sys/types.h:161

   subtype register_t is long;  -- /usr/include/sys/types.h:164

   subtype blksize_t is WiringPI.bits_types_h.uu_blksize_t;  -- /usr/include/sys/types.h:185

   subtype blkcnt_t is WiringPI.bits_types_h.uu_blkcnt_t;  -- /usr/include/sys/types.h:192

   subtype fsblkcnt_t is WiringPI.bits_types_h.uu_fsblkcnt_t;  -- /usr/include/sys/types.h:196

   subtype fsfilcnt_t is WiringPI.bits_types_h.uu_fsfilcnt_t;  -- /usr/include/sys/types.h:200

end WiringPI.sys_types_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
