pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.bits_ioctl_types_h is

   NCC : constant := 8;  --  /usr/include/bits/ioctl-types.h:35

   TIOCM_LE : constant := 16#001#;  --  /usr/include/bits/ioctl-types.h:47
   TIOCM_DTR : constant := 16#002#;  --  /usr/include/bits/ioctl-types.h:48
   TIOCM_RTS : constant := 16#004#;  --  /usr/include/bits/ioctl-types.h:49
   TIOCM_ST : constant := 16#008#;  --  /usr/include/bits/ioctl-types.h:50
   TIOCM_SR : constant := 16#010#;  --  /usr/include/bits/ioctl-types.h:51
   TIOCM_CTS : constant := 16#020#;  --  /usr/include/bits/ioctl-types.h:52
   TIOCM_CAR : constant := 16#040#;  --  /usr/include/bits/ioctl-types.h:53
   TIOCM_RNG : constant := 16#080#;  --  /usr/include/bits/ioctl-types.h:54
   TIOCM_DSR : constant := 16#100#;  --  /usr/include/bits/ioctl-types.h:55
   --  unsupported macro: TIOCM_CD TIOCM_CAR
   --  unsupported macro: TIOCM_RI TIOCM_RNG

   N_TTY : constant := 0;  --  /usr/include/bits/ioctl-types.h:62
   N_SLIP : constant := 1;  --  /usr/include/bits/ioctl-types.h:63
   N_MOUSE : constant := 2;  --  /usr/include/bits/ioctl-types.h:64
   N_PPP : constant := 3;  --  /usr/include/bits/ioctl-types.h:65
   N_STRIP : constant := 4;  --  /usr/include/bits/ioctl-types.h:66
   N_AX25 : constant := 5;  --  /usr/include/bits/ioctl-types.h:67
   N_X25 : constant := 6;  --  /usr/include/bits/ioctl-types.h:68
   N_6PACK : constant := 7;  --  /usr/include/bits/ioctl-types.h:69
   N_MASC : constant := 8;  --  /usr/include/bits/ioctl-types.h:70
   N_R3964 : constant := 9;  --  /usr/include/bits/ioctl-types.h:71
   N_PROFIBUS_FDL : constant := 10;  --  /usr/include/bits/ioctl-types.h:72
   N_IRDA : constant := 11;  --  /usr/include/bits/ioctl-types.h:73
   N_SMSBLOCK : constant := 12;  --  /usr/include/bits/ioctl-types.h:74
   N_HDLC : constant := 13;  --  /usr/include/bits/ioctl-types.h:75
   N_SYNC_PPP : constant := 14;  --  /usr/include/bits/ioctl-types.h:76
   N_HCI : constant := 15;  --  /usr/include/bits/ioctl-types.h:77

   type winsize is record
      ws_row : aliased unsigned_short;  -- /usr/include/bits/ioctl-types.h:29
      ws_col : aliased unsigned_short;  -- /usr/include/bits/ioctl-types.h:30
      ws_xpixel : aliased unsigned_short;  -- /usr/include/bits/ioctl-types.h:31
      ws_ypixel : aliased unsigned_short;  -- /usr/include/bits/ioctl-types.h:32
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/ioctl-types.h:27

   type anon_array1657 is array (0 .. 7) of aliased unsigned_char;
   type termio is record
      c_iflag : aliased unsigned_short;  -- /usr/include/bits/ioctl-types.h:38
      c_oflag : aliased unsigned_short;  -- /usr/include/bits/ioctl-types.h:39
      c_cflag : aliased unsigned_short;  -- /usr/include/bits/ioctl-types.h:40
      c_lflag : aliased unsigned_short;  -- /usr/include/bits/ioctl-types.h:41
      c_line : aliased unsigned_char;  -- /usr/include/bits/ioctl-types.h:42
      c_cc : aliased anon_array1657;  -- /usr/include/bits/ioctl-types.h:43
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/ioctl-types.h:36

end WiringPI.bits_ioctl_types_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
