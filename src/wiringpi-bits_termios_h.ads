pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.bits_termios_h is

   B0 : constant := 8#000000#;  --  /usr/include/bits/termios.h:33
   B50 : constant := 8#000001#;  --  /usr/include/bits/termios.h:34
   B75 : constant := 8#000002#;  --  /usr/include/bits/termios.h:35
   B110 : constant := 8#000003#;  --  /usr/include/bits/termios.h:36
   B134 : constant := 8#000004#;  --  /usr/include/bits/termios.h:37
   B150 : constant := 8#000005#;  --  /usr/include/bits/termios.h:38
   B200 : constant := 8#000006#;  --  /usr/include/bits/termios.h:39
   B300 : constant := 8#000007#;  --  /usr/include/bits/termios.h:40
   B600 : constant := 8#000010#;  --  /usr/include/bits/termios.h:41
   B1200 : constant := 8#000011#;  --  /usr/include/bits/termios.h:42
   B1800 : constant := 8#000012#;  --  /usr/include/bits/termios.h:43
   B2400 : constant := 8#000013#;  --  /usr/include/bits/termios.h:44
   B4800 : constant := 8#000014#;  --  /usr/include/bits/termios.h:45
   B9600 : constant := 8#000015#;  --  /usr/include/bits/termios.h:46
   B19200 : constant := 8#000016#;  --  /usr/include/bits/termios.h:47
   B38400 : constant := 8#000017#;  --  /usr/include/bits/termios.h:48
   --  unsupported macro: EXTA B19200
   --  unsupported macro: EXTB B38400

   TCOOFF : constant := 0;  --  /usr/include/bits/termios.h:64
   TCOON : constant := 1;  --  /usr/include/bits/termios.h:65
   TCIOFF : constant := 2;  --  /usr/include/bits/termios.h:66
   TCION : constant := 3;  --  /usr/include/bits/termios.h:67

   TCIFLUSH : constant := 0;  --  /usr/include/bits/termios.h:70
   TCOFLUSH : constant := 1;  --  /usr/include/bits/termios.h:71
   TCIOFLUSH : constant := 2;  --  /usr/include/bits/termios.h:72

   subtype cc_t is unsigned_char;  -- /usr/include/bits/termios.h:23

   subtype speed_t is unsigned;  -- /usr/include/bits/termios.h:24

   subtype tcflag_t is unsigned;  -- /usr/include/bits/termios.h:25

end WiringPI.bits_termios_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
