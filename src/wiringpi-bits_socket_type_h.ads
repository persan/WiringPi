pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.bits_socket_type_h is

   --  unsupported macro: SOCK_STREAM SOCK_STREAM
   --  unsupported macro: SOCK_DGRAM SOCK_DGRAM
   --  unsupported macro: SOCK_RAW SOCK_RAW
   --  unsupported macro: SOCK_RDM SOCK_RDM
   --  unsupported macro: SOCK_SEQPACKET SOCK_SEQPACKET
   --  unsupported macro: SOCK_DCCP SOCK_DCCP
   --  unsupported macro: SOCK_PACKET SOCK_PACKET
   --  unsupported macro: SOCK_CLOEXEC SOCK_CLOEXEC
   --  unsupported macro: SOCK_NONBLOCK SOCK_NONBLOCK
   subtype uu_socket_type is unsigned;
   uu_socket_type_SOCK_STREAM : constant uu_socket_type := 1;
   uu_socket_type_SOCK_DGRAM : constant uu_socket_type := 2;
   uu_socket_type_SOCK_RAW : constant uu_socket_type := 3;
   uu_socket_type_SOCK_RDM : constant uu_socket_type := 4;
   uu_socket_type_SOCK_SEQPACKET : constant uu_socket_type := 5;
   uu_socket_type_SOCK_DCCP : constant uu_socket_type := 6;
   uu_socket_type_SOCK_PACKET : constant uu_socket_type := 10;
   uu_socket_type_SOCK_CLOEXEC : constant uu_socket_type := 524288;
   uu_socket_type_SOCK_NONBLOCK : constant uu_socket_type := 2048;  -- /usr/include/bits/socket_type.h:24

end WiringPI.bits_socket_type_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
