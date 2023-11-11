pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.asm_posix_types_64_h is

   subtype uu_kernel_old_uid_t is unsigned_short;  -- /usr/include/asm/posix_types_64.h:11

   subtype uu_kernel_old_gid_t is unsigned_short;  -- /usr/include/asm/posix_types_64.h:12

   subtype uu_kernel_old_dev_t is unsigned_long;  -- /usr/include/asm/posix_types_64.h:15

end WiringPI.asm_posix_types_64_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
