pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_termios_h;

package WiringPI.bits_termios_struct_h is

   NCCS : constant := 32;  --  /usr/include/bits/termios-struct.h:23

   type anon_array1516 is array (0 .. 31) of aliased WiringPI.bits_termios_h.cc_t;
   type termios is record
      c_iflag : aliased WiringPI.bits_termios_h.tcflag_t;  -- /usr/include/bits/termios-struct.h:26
      c_oflag : aliased WiringPI.bits_termios_h.tcflag_t;  -- /usr/include/bits/termios-struct.h:27
      c_cflag : aliased WiringPI.bits_termios_h.tcflag_t;  -- /usr/include/bits/termios-struct.h:28
      c_lflag : aliased WiringPI.bits_termios_h.tcflag_t;  -- /usr/include/bits/termios-struct.h:29
      c_line : aliased WiringPI.bits_termios_h.cc_t;  -- /usr/include/bits/termios-struct.h:30
      c_cc : aliased anon_array1516;  -- /usr/include/bits/termios-struct.h:31
      c_ispeed : aliased WiringPI.bits_termios_h.speed_t;  -- /usr/include/bits/termios-struct.h:32
      c_ospeed : aliased WiringPI.bits_termios_h.speed_t;  -- /usr/include/bits/termios-struct.h:33
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/termios-struct.h:24

end WiringPI.bits_termios_struct_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
