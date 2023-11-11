pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;
with WiringPI.stddef_h;
with Interfaces.C.Strings;
with WiringPI.bits_types_locale_t_h;

package WiringPI.string_h is

   function memcpy
     (uu_dest : System.Address;
      uu_src : System.Address;
      uu_n : WiringPI.stddef_h.size_t) return System.Address  -- /usr/include/string.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "memcpy";

   function memmove
     (uu_dest : System.Address;
      uu_src : System.Address;
      uu_n : WiringPI.stddef_h.size_t) return System.Address  -- /usr/include/string.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "memmove";

   function memccpy
     (uu_dest : System.Address;
      uu_src : System.Address;
      uu_c : int;
      uu_n : WiringPI.stddef_h.size_t) return System.Address  -- /usr/include/string.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "memccpy";

   function memset
     (uu_s : System.Address;
      uu_c : int;
      uu_n : WiringPI.stddef_h.size_t) return System.Address  -- /usr/include/string.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "memset";

   function memcmp
     (uu_s1 : System.Address;
      uu_s2 : System.Address;
      uu_n : WiringPI.stddef_h.size_t) return int  -- /usr/include/string.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "memcmp";

   --  skipped func __memcmpeq

   function memchr
     (uu_s : System.Address;
      uu_c : int;
      uu_n : WiringPI.stddef_h.size_t) return System.Address  -- /usr/include/string.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "memchr";

   function strcpy (uu_dest : Interfaces.C.Strings.chars_ptr; uu_src : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/string.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "strcpy";

   function strncpy
     (uu_dest : Interfaces.C.Strings.chars_ptr;
      uu_src : Interfaces.C.Strings.chars_ptr;
      uu_n : WiringPI.stddef_h.size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/string.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "strncpy";

   function strcat (uu_dest : Interfaces.C.Strings.chars_ptr; uu_src : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/string.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "strcat";

   function strncat
     (uu_dest : Interfaces.C.Strings.chars_ptr;
      uu_src : Interfaces.C.Strings.chars_ptr;
      uu_n : WiringPI.stddef_h.size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/string.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "strncat";

   function strcmp (uu_s1 : Interfaces.C.Strings.chars_ptr; uu_s2 : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/string.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "strcmp";

   function strncmp
     (uu_s1 : Interfaces.C.Strings.chars_ptr;
      uu_s2 : Interfaces.C.Strings.chars_ptr;
      uu_n : WiringPI.stddef_h.size_t) return int  -- /usr/include/string.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "strncmp";

   function strcoll (uu_s1 : Interfaces.C.Strings.chars_ptr; uu_s2 : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/string.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "strcoll";

   function strxfrm
     (uu_dest : Interfaces.C.Strings.chars_ptr;
      uu_src : Interfaces.C.Strings.chars_ptr;
      uu_n : WiringPI.stddef_h.size_t) return WiringPI.stddef_h.size_t  -- /usr/include/string.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "strxfrm";

   function strcoll_l
     (uu_s1 : Interfaces.C.Strings.chars_ptr;
      uu_s2 : Interfaces.C.Strings.chars_ptr;
      uu_l : WiringPI.bits_types_locale_t_h.locale_t) return int  -- /usr/include/string.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "strcoll_l";

   function strxfrm_l
     (uu_dest : Interfaces.C.Strings.chars_ptr;
      uu_src : Interfaces.C.Strings.chars_ptr;
      uu_n : WiringPI.stddef_h.size_t;
      uu_l : WiringPI.bits_types_locale_t_h.locale_t) return WiringPI.stddef_h.size_t  -- /usr/include/string.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "strxfrm_l";

   function strdup (uu_s : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/string.h:187
   with Import => True, 
        Convention => C, 
        External_Name => "strdup";

   function strndup (uu_string : Interfaces.C.Strings.chars_ptr; uu_n : WiringPI.stddef_h.size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/string.h:195
   with Import => True, 
        Convention => C, 
        External_Name => "strndup";

   function strchr (uu_s : Interfaces.C.Strings.chars_ptr; uu_c : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/string.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "strchr";

   function strrchr (uu_s : Interfaces.C.Strings.chars_ptr; uu_c : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/string.h:273
   with Import => True, 
        Convention => C, 
        External_Name => "strrchr";

   function strcspn (uu_s : Interfaces.C.Strings.chars_ptr; uu_reject : Interfaces.C.Strings.chars_ptr) return WiringPI.stddef_h.size_t  -- /usr/include/string.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "strcspn";

   function strspn (uu_s : Interfaces.C.Strings.chars_ptr; uu_accept : Interfaces.C.Strings.chars_ptr) return WiringPI.stddef_h.size_t  -- /usr/include/string.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "strspn";

   function strpbrk (uu_s : Interfaces.C.Strings.chars_ptr; uu_accept : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/string.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "strpbrk";

   function strstr (uu_haystack : Interfaces.C.Strings.chars_ptr; uu_needle : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/string.h:350
   with Import => True, 
        Convention => C, 
        External_Name => "strstr";

   function strtok (uu_s : Interfaces.C.Strings.chars_ptr; uu_delim : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/string.h:356
   with Import => True, 
        Convention => C, 
        External_Name => "strtok";

   --  skipped func __strtok_r

   function strtok_r
     (uu_s : Interfaces.C.Strings.chars_ptr;
      uu_delim : Interfaces.C.Strings.chars_ptr;
      uu_save_ptr : System.Address) return Interfaces.C.Strings.chars_ptr  -- /usr/include/string.h:366
   with Import => True, 
        Convention => C, 
        External_Name => "strtok_r";

   function strlen (uu_s : Interfaces.C.Strings.chars_ptr) return WiringPI.stddef_h.size_t  -- /usr/include/string.h:407
   with Import => True, 
        Convention => C, 
        External_Name => "strlen";

   function strnlen (uu_string : Interfaces.C.Strings.chars_ptr; uu_maxlen : WiringPI.stddef_h.size_t) return WiringPI.stddef_h.size_t  -- /usr/include/string.h:413
   with Import => True, 
        Convention => C, 
        External_Name => "strnlen";

   function strerror (uu_errnum : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/string.h:419
   with Import => True, 
        Convention => C, 
        External_Name => "strerror";

   function strerror_r
     (uu_errnum : int;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_buflen : WiringPI.stddef_h.size_t) return int  -- /usr/include/string.h:432
   with Import => True, 
        Convention => C, 
        External_Name => "__xpg_strerror_r";

   function strerror_l (uu_errnum : int; uu_l : WiringPI.bits_types_locale_t_h.locale_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/string.h:458
   with Import => True, 
        Convention => C, 
        External_Name => "strerror_l";

   procedure explicit_bzero (uu_s : System.Address; uu_n : WiringPI.stddef_h.size_t)  -- /usr/include/string.h:466
   with Import => True, 
        Convention => C, 
        External_Name => "explicit_bzero";

   function strsep (uu_stringp : System.Address; uu_delim : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/string.h:471
   with Import => True, 
        Convention => C, 
        External_Name => "strsep";

   function strsignal (uu_sig : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/string.h:478
   with Import => True, 
        Convention => C, 
        External_Name => "strsignal";

   --  skipped func __stpcpy

   function stpcpy (uu_dest : Interfaces.C.Strings.chars_ptr; uu_src : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/string.h:491
   with Import => True, 
        Convention => C, 
        External_Name => "stpcpy";

   --  skipped func __stpncpy

   function stpncpy
     (uu_dest : Interfaces.C.Strings.chars_ptr;
      uu_src : Interfaces.C.Strings.chars_ptr;
      uu_n : WiringPI.stddef_h.size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/string.h:499
   with Import => True, 
        Convention => C, 
        External_Name => "stpncpy";

end WiringPI.string_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
