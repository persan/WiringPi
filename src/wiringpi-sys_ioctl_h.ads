pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.sys_ioctl_h is

   function ioctl (uu_fd : int; uu_request : unsigned_long  -- , ...
      ) return int  -- /usr/include/sys/ioctl.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "ioctl";

end WiringPI.sys_ioctl_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
