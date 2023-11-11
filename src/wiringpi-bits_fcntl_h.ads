pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_types_h;

package WiringPI.bits_fcntl_h is

   F_GETLK64 : constant := 5;  --  /usr/include/bits/fcntl.h:29
   F_SETLK64 : constant := 6;  --  /usr/include/bits/fcntl.h:30
   F_SETLKW64 : constant := 7;  --  /usr/include/bits/fcntl.h:31

   type flock is record
      l_type : aliased short;  -- /usr/include/bits/fcntl.h:37
      l_whence : aliased short;  -- /usr/include/bits/fcntl.h:38
      l_start : aliased WiringPI.bits_types_h.uu_off_t;  -- /usr/include/bits/fcntl.h:40
      l_len : aliased WiringPI.bits_types_h.uu_off_t;  -- /usr/include/bits/fcntl.h:41
      l_pid : aliased WiringPI.bits_types_h.uu_pid_t;  -- /usr/include/bits/fcntl.h:46
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/fcntl.h:35

end WiringPI.bits_fcntl_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
