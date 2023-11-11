pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_types_struct_FILE_h;

package WiringPI.bits_types_FILE_h is

   subtype FILE is WiringPI.bits_types_struct_FILE_h.u_IO_FILE;  -- /usr/include/bits/types/FILE.h:7

end WiringPI.bits_types_FILE_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
