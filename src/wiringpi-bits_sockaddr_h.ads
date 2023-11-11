pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.bits_sockaddr_h is

   subtype sa_family_t is unsigned_short;  -- /usr/include/bits/sockaddr.h:28

end WiringPI.bits_sockaddr_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
