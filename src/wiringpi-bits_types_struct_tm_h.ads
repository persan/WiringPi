pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package WiringPI.bits_types_struct_tm_h is

   type tm is record
      tm_sec : aliased int;  -- /usr/include/bits/types/struct_tm.h:9
      tm_min : aliased int;  -- /usr/include/bits/types/struct_tm.h:10
      tm_hour : aliased int;  -- /usr/include/bits/types/struct_tm.h:11
      tm_mday : aliased int;  -- /usr/include/bits/types/struct_tm.h:12
      tm_mon : aliased int;  -- /usr/include/bits/types/struct_tm.h:13
      tm_year : aliased int;  -- /usr/include/bits/types/struct_tm.h:14
      tm_wday : aliased int;  -- /usr/include/bits/types/struct_tm.h:15
      tm_yday : aliased int;  -- /usr/include/bits/types/struct_tm.h:16
      tm_isdst : aliased int;  -- /usr/include/bits/types/struct_tm.h:17
      tm_gmtoff : aliased long;  -- /usr/include/bits/types/struct_tm.h:20
      tm_zone : Interfaces.C.Strings.chars_ptr;  -- /usr/include/bits/types/struct_tm.h:21
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/types/struct_tm.h:7

end WiringPI.bits_types_struct_tm_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
