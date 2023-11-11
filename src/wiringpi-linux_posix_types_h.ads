pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.linux_posix_types_h is

   type anon_array1173 is array (0 .. 15) of aliased unsigned_long;
   type uu_kernel_fd_set is record
      fds_bits : aliased anon_array1173;  -- /usr/include/linux/posix_types.h:26
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/linux/posix_types.h:27

   type uu_kernel_sighandler_t is access procedure (arg1 : int)
   with Convention => C;  -- /usr/include/linux/posix_types.h:30

   subtype uu_kernel_key_t is int;  -- /usr/include/linux/posix_types.h:33

   subtype uu_kernel_mqd_t is int;  -- /usr/include/linux/posix_types.h:34

end WiringPI.linux_posix_types_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
