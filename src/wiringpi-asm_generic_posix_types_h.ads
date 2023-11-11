pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package WiringPI.asm_generic_posix_types_h is

   subtype uu_kernel_long_t is long;  -- /usr/include/asm-generic/posix_types.h:15

   subtype uu_kernel_ulong_t is unsigned_long;  -- /usr/include/asm-generic/posix_types.h:16

   subtype uu_kernel_ino_t is uu_kernel_ulong_t;  -- /usr/include/asm-generic/posix_types.h:20

   subtype uu_kernel_mode_t is unsigned;  -- /usr/include/asm-generic/posix_types.h:24

   subtype uu_kernel_pid_t is int;  -- /usr/include/asm-generic/posix_types.h:28

   subtype uu_kernel_ipc_pid_t is int;  -- /usr/include/asm-generic/posix_types.h:32

   subtype uu_kernel_uid_t is unsigned;  -- /usr/include/asm-generic/posix_types.h:36

   subtype uu_kernel_gid_t is unsigned;  -- /usr/include/asm-generic/posix_types.h:37

   subtype uu_kernel_suseconds_t is uu_kernel_long_t;  -- /usr/include/asm-generic/posix_types.h:41

   subtype uu_kernel_daddr_t is int;  -- /usr/include/asm-generic/posix_types.h:45

   subtype uu_kernel_uid32_t is unsigned;  -- /usr/include/asm-generic/posix_types.h:49

   subtype uu_kernel_gid32_t is unsigned;  -- /usr/include/asm-generic/posix_types.h:50

   subtype uu_kernel_size_t is uu_kernel_ulong_t;  -- /usr/include/asm-generic/posix_types.h:72

   subtype uu_kernel_ssize_t is uu_kernel_long_t;  -- /usr/include/asm-generic/posix_types.h:73

   subtype uu_kernel_ptrdiff_t is uu_kernel_long_t;  -- /usr/include/asm-generic/posix_types.h:74

   type anon_array883 is array (0 .. 1) of aliased int;
   type uu_kernel_fsid_t is record
      val : aliased anon_array883;  -- /usr/include/asm-generic/posix_types.h:80
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/asm-generic/posix_types.h:81

   subtype uu_kernel_off_t is uu_kernel_long_t;  -- /usr/include/asm-generic/posix_types.h:87

   subtype uu_kernel_loff_t is Long_Long_Integer;  -- /usr/include/asm-generic/posix_types.h:88

   subtype uu_kernel_old_time_t is uu_kernel_long_t;  -- /usr/include/asm-generic/posix_types.h:89

   subtype uu_kernel_time_t is uu_kernel_long_t;  -- /usr/include/asm-generic/posix_types.h:90

   subtype uu_kernel_time64_t is Long_Long_Integer;  -- /usr/include/asm-generic/posix_types.h:91

   subtype uu_kernel_clock_t is uu_kernel_long_t;  -- /usr/include/asm-generic/posix_types.h:92

   subtype uu_kernel_timer_t is int;  -- /usr/include/asm-generic/posix_types.h:93

   subtype uu_kernel_clockid_t is int;  -- /usr/include/asm-generic/posix_types.h:94

   type uu_kernel_caddr_t is new Interfaces.C.Strings.chars_ptr;  -- /usr/include/asm-generic/posix_types.h:95

   subtype uu_kernel_uid16_t is unsigned_short;  -- /usr/include/asm-generic/posix_types.h:96

   subtype uu_kernel_gid16_t is unsigned_short;  -- /usr/include/asm-generic/posix_types.h:97

end WiringPI.asm_generic_posix_types_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
