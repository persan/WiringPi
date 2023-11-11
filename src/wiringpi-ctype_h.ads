pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_types_locale_t_h;

package WiringPI.ctype_h is

   --  arg-macro: procedure isalnum (c)
   --    __isctype((c), _ISalnum)
   --  arg-macro: procedure isalpha (c)
   --    __isctype((c), _ISalpha)
   --  arg-macro: procedure iscntrl (c)
   --    __isctype((c), _IScntrl)
   --  arg-macro: procedure isdigit (c)
   --    __isctype((c), _ISdigit)
   --  arg-macro: procedure islower (c)
   --    __isctype((c), _ISlower)
   --  arg-macro: procedure isgraph (c)
   --    __isctype((c), _ISgraph)
   --  arg-macro: procedure isprint (c)
   --    __isctype((c), _ISprint)
   --  arg-macro: procedure ispunct (c)
   --    __isctype((c), _ISpunct)
   --  arg-macro: procedure isspace (c)
   --    __isctype((c), _ISspace)
   --  arg-macro: procedure isupper (c)
   --    __isctype((c), _ISupper)
   --  arg-macro: procedure isxdigit (c)
   --    __isctype((c), _ISxdigit)
   --  arg-macro: procedure isblank (c)
   --    __isctype((c), _ISblank)
   --  arg-macro: procedure isascii (c)
   --    __isascii (c)
   --  arg-macro: procedure toascii (c)
   --    __toascii (c)
   --  arg-macro: procedure isalnum_l (c, l)
   --    __isalnum_l ((c), (l))
   --  arg-macro: procedure isalpha_l (c, l)
   --    __isalpha_l ((c), (l))
   --  arg-macro: procedure iscntrl_l (c, l)
   --    __iscntrl_l ((c), (l))
   --  arg-macro: procedure isdigit_l (c, l)
   --    __isdigit_l ((c), (l))
   --  arg-macro: procedure islower_l (c, l)
   --    __islower_l ((c), (l))
   --  arg-macro: procedure isgraph_l (c, l)
   --    __isgraph_l ((c), (l))
   --  arg-macro: procedure isprint_l (c, l)
   --    __isprint_l ((c), (l))
   --  arg-macro: procedure ispunct_l (c, l)
   --    __ispunct_l ((c), (l))
   --  arg-macro: procedure isspace_l (c, l)
   --    __isspace_l ((c), (l))
   --  arg-macro: procedure isupper_l (c, l)
   --    __isupper_l ((c), (l))
   --  arg-macro: procedure isxdigit_l (c, l)
   --    __isxdigit_l ((c), (l))
   --  arg-macro: procedure isblank_l (c, l)
   --    __isblank_l ((c), (l))
   --  arg-macro: procedure isascii_l (c, l)
   --    __isascii_l ((c), (l))
   --  arg-macro: procedure toascii_l (c, l)
   --    __toascii_l ((c), (l))
   --  skipped func __ctype_b_loc

   --  skipped func __ctype_tolower_loc

   --  skipped func __ctype_toupper_loc

   function isalnum (arg1 : int) return int  -- /usr/include/ctype.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "isalnum";

   function isalpha (arg1 : int) return int  -- /usr/include/ctype.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "isalpha";

   function iscntrl (arg1 : int) return int  -- /usr/include/ctype.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "iscntrl";

   function isdigit (arg1 : int) return int  -- /usr/include/ctype.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "isdigit";

   function islower (arg1 : int) return int  -- /usr/include/ctype.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "islower";

   function isgraph (arg1 : int) return int  -- /usr/include/ctype.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "isgraph";

   function isprint (arg1 : int) return int  -- /usr/include/ctype.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "isprint";

   function ispunct (arg1 : int) return int  -- /usr/include/ctype.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "ispunct";

   function isspace (arg1 : int) return int  -- /usr/include/ctype.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "isspace";

   function isupper (arg1 : int) return int  -- /usr/include/ctype.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "isupper";

   function isxdigit (arg1 : int) return int  -- /usr/include/ctype.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "isxdigit";

   function tolower (uu_c : int) return int  -- /usr/include/ctype.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "tolower";

   function toupper (uu_c : int) return int  -- /usr/include/ctype.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "toupper";

   function isblank (arg1 : int) return int  -- /usr/include/ctype.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "isblank";

   function isascii (uu_c : int) return int  -- /usr/include/ctype.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "isascii";

   function toascii (uu_c : int) return int  -- /usr/include/ctype.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "toascii";

   --  skipped func _toupper

   --  skipped func _tolower

   function isalnum_l (arg1 : int; arg2 : WiringPI.bits_types_locale_t_h.locale_t) return int  -- /usr/include/ctype.h:251
   with Import => True, 
        Convention => C, 
        External_Name => "isalnum_l";

   function isalpha_l (arg1 : int; arg2 : WiringPI.bits_types_locale_t_h.locale_t) return int  -- /usr/include/ctype.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "isalpha_l";

   function iscntrl_l (arg1 : int; arg2 : WiringPI.bits_types_locale_t_h.locale_t) return int  -- /usr/include/ctype.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "iscntrl_l";

   function isdigit_l (arg1 : int; arg2 : WiringPI.bits_types_locale_t_h.locale_t) return int  -- /usr/include/ctype.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "isdigit_l";

   function islower_l (arg1 : int; arg2 : WiringPI.bits_types_locale_t_h.locale_t) return int  -- /usr/include/ctype.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "islower_l";

   function isgraph_l (arg1 : int; arg2 : WiringPI.bits_types_locale_t_h.locale_t) return int  -- /usr/include/ctype.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "isgraph_l";

   function isprint_l (arg1 : int; arg2 : WiringPI.bits_types_locale_t_h.locale_t) return int  -- /usr/include/ctype.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "isprint_l";

   function ispunct_l (arg1 : int; arg2 : WiringPI.bits_types_locale_t_h.locale_t) return int  -- /usr/include/ctype.h:258
   with Import => True, 
        Convention => C, 
        External_Name => "ispunct_l";

   function isspace_l (arg1 : int; arg2 : WiringPI.bits_types_locale_t_h.locale_t) return int  -- /usr/include/ctype.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "isspace_l";

   function isupper_l (arg1 : int; arg2 : WiringPI.bits_types_locale_t_h.locale_t) return int  -- /usr/include/ctype.h:260
   with Import => True, 
        Convention => C, 
        External_Name => "isupper_l";

   function isxdigit_l (arg1 : int; arg2 : WiringPI.bits_types_locale_t_h.locale_t) return int  -- /usr/include/ctype.h:261
   with Import => True, 
        Convention => C, 
        External_Name => "isxdigit_l";

   function isblank_l (arg1 : int; arg2 : WiringPI.bits_types_locale_t_h.locale_t) return int  -- /usr/include/ctype.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "isblank_l";

   --  skipped func __tolower_l

   function tolower_l (uu_c : int; uu_l : WiringPI.bits_types_locale_t_h.locale_t) return int  -- /usr/include/ctype.h:268
   with Import => True, 
        Convention => C, 
        External_Name => "tolower_l";

   --  skipped func __toupper_l

   function toupper_l (uu_c : int; uu_l : WiringPI.bits_types_locale_t_h.locale_t) return int  -- /usr/include/ctype.h:272
   with Import => True, 
        Convention => C, 
        External_Name => "toupper_l";

end WiringPI.ctype_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
