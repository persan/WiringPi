pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;
with WiringPI.stddef_h;
with Interfaces.C.Strings;
with WiringPI.bits_types_locale_t_h;

package WiringPI.strings_h is

   function bcmp
     (uu_s1 : System.Address;
      uu_s2 : System.Address;
      uu_n : WiringPI.stddef_h.size_t) return int  -- /usr/include/strings.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "bcmp";

   procedure bcopy
     (uu_src : System.Address;
      uu_dest : System.Address;
      uu_n : WiringPI.stddef_h.size_t)  -- /usr/include/strings.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "bcopy";

   procedure bzero (uu_s : System.Address; uu_n : WiringPI.stddef_h.size_t)  -- /usr/include/strings.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "bzero";

   function index (uu_s : Interfaces.C.Strings.chars_ptr; uu_c : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/strings.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "index";

   function rindex (uu_s : Interfaces.C.Strings.chars_ptr; uu_c : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/strings.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "rindex";

   function ffs (uu_i : int) return int  -- /usr/include/strings.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "ffs";

   function ffsl (uu_l : long) return int  -- /usr/include/strings.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "ffsl";

   function ffsll (uu_ll : Long_Long_Integer) return int  -- /usr/include/strings.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "ffsll";

   function strcasecmp (uu_s1 : Interfaces.C.Strings.chars_ptr; uu_s2 : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/strings.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "strcasecmp";

   function strncasecmp
     (uu_s1 : Interfaces.C.Strings.chars_ptr;
      uu_s2 : Interfaces.C.Strings.chars_ptr;
      uu_n : WiringPI.stddef_h.size_t) return int  -- /usr/include/strings.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "strncasecmp";

   function strcasecmp_l
     (uu_s1 : Interfaces.C.Strings.chars_ptr;
      uu_s2 : Interfaces.C.Strings.chars_ptr;
      uu_loc : WiringPI.bits_types_locale_t_h.locale_t) return int  -- /usr/include/strings.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "strcasecmp_l";

   function strncasecmp_l
     (uu_s1 : Interfaces.C.Strings.chars_ptr;
      uu_s2 : Interfaces.C.Strings.chars_ptr;
      uu_n : WiringPI.stddef_h.size_t;
      uu_loc : WiringPI.bits_types_locale_t_h.locale_t) return int  -- /usr/include/strings.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "strncasecmp_l";

end WiringPI.strings_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
