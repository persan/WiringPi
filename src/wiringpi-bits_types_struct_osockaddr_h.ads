pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.bits_types_struct_osockaddr_h is

   type anon_array1414 is array (0 .. 13) of aliased unsigned_char;
   type osockaddr is record
      sa_family : aliased unsigned_short;  -- /usr/include/bits/types/struct_osockaddr.h:8
      sa_data : aliased anon_array1414;  -- /usr/include/bits/types/struct_osockaddr.h:9
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/types/struct_osockaddr.h:6

end WiringPI.bits_types_struct_osockaddr_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
