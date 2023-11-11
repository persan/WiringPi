pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;

package WiringPI.crypt_h is

   CRYPT_OUTPUT_SIZE : constant := 384;  --  /usr/include/crypt.h:32

   CRYPT_MAX_PASSPHRASE_SIZE : constant := 512;  --  /usr/include/crypt.h:36

   CRYPT_GENSALT_OUTPUT_SIZE : constant := 192;  --  /usr/include/crypt.h:44

   CRYPT_DATA_RESERVED_SIZE : constant := 767;  --  /usr/include/crypt.h:68
   CRYPT_DATA_INTERNAL_SIZE : constant := 30720;  --  /usr/include/crypt.h:69

   CRYPT_SALT_OK : constant := 0;  --  /usr/include/crypt.h:213
   CRYPT_SALT_INVALID : constant := 1;  --  /usr/include/crypt.h:214
   CRYPT_SALT_METHOD_DISABLED : constant := 2;  --  /usr/include/crypt.h:215
   CRYPT_SALT_METHOD_LEGACY : constant := 3;  --  /usr/include/crypt.h:216
   CRYPT_SALT_TOO_CHEAP : constant := 4;  --  /usr/include/crypt.h:217

   CRYPT_GENSALT_IMPLEMENTS_DEFAULT_PREFIX : constant := 1;  --  /usr/include/crypt.h:230
   CRYPT_GENSALT_IMPLEMENTS_AUTO_ENTROPY : constant := 1;  --  /usr/include/crypt.h:231

   CRYPT_CHECKSALT_AVAILABLE : constant := 1;  --  /usr/include/crypt.h:235
   CRYPT_PREFERRED_METHOD_AVAILABLE : constant := 1;  --  /usr/include/crypt.h:236

   XCRYPT_VERSION_MAJOR : constant := 4;  --  /usr/include/crypt.h:239
   XCRYPT_VERSION_MINOR : constant := 4;  --  /usr/include/crypt.h:240
   --  unsupported macro: XCRYPT_VERSION_NUM ((XCRYPT_VERSION_MAJOR << 16) | XCRYPT_VERSION_MINOR)

   XCRYPT_VERSION_STR : aliased constant String := "4.4.36" & ASCII.NUL;  --  /usr/include/crypt.h:247

   function crypt (uu_key : Interfaces.C.Strings.chars_ptr; uu_salt : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/crypt.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "crypt";

   subtype anon_array1713 is Interfaces.C.char_array (0 .. 383);
   subtype anon_array1715 is Interfaces.C.char_array (0 .. 511);
   subtype anon_array1717 is Interfaces.C.char_array (0 .. 766);
   subtype anon_array1719 is Interfaces.C.char_array (0 .. 30719);
   type crypt_data is record
      output : aliased anon_array1713;  -- /usr/include/crypt.h:77
      setting : aliased anon_array1713;  -- /usr/include/crypt.h:86
      input : aliased anon_array1715;  -- /usr/include/crypt.h:91
      reserved : aliased anon_array1717;  -- /usr/include/crypt.h:98
      initialized : aliased char;  -- /usr/include/crypt.h:105
      internal : aliased anon_array1719;  -- /usr/include/crypt.h:110
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/crypt.h:72

   function crypt_r
     (uu_phrase : Interfaces.C.Strings.chars_ptr;
      uu_setting : Interfaces.C.Strings.chars_ptr;
      uu_data : access crypt_data) return Interfaces.C.Strings.chars_ptr  -- /usr/include/crypt.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "crypt_r";

   function crypt_rn
     (uu_phrase : Interfaces.C.Strings.chars_ptr;
      uu_setting : Interfaces.C.Strings.chars_ptr;
      uu_data : System.Address;
      uu_size : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/crypt.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "crypt_rn";

   function crypt_ra
     (uu_phrase : Interfaces.C.Strings.chars_ptr;
      uu_setting : Interfaces.C.Strings.chars_ptr;
      uu_data : System.Address;
      uu_size : access int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/crypt.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "crypt_ra";

   function crypt_gensalt
     (uu_prefix : Interfaces.C.Strings.chars_ptr;
      uu_count : unsigned_long;
      uu_rbytes : Interfaces.C.Strings.chars_ptr;
      uu_nrbytes : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/crypt.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "crypt_gensalt";

   function crypt_gensalt_rn
     (uu_prefix : Interfaces.C.Strings.chars_ptr;
      uu_count : unsigned_long;
      uu_rbytes : Interfaces.C.Strings.chars_ptr;
      uu_nrbytes : int;
      uu_output : Interfaces.C.Strings.chars_ptr;
      uu_output_size : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/crypt.h:178
   with Import => True, 
        Convention => C, 
        External_Name => "crypt_gensalt_rn";

   function crypt_gensalt_r
     (uu_prefix : Interfaces.C.Strings.chars_ptr;
      uu_count : unsigned_long;
      uu_rbytes : Interfaces.C.Strings.chars_ptr;
      uu_nrbytes : int;
      uu_output : Interfaces.C.Strings.chars_ptr;
      uu_output_size : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/crypt.h:189
   with Import => True, 
        Convention => C, 
        External_Name => "crypt_gensalt_rn";

   function crypt_gensalt_ra
     (uu_prefix : Interfaces.C.Strings.chars_ptr;
      uu_count : unsigned_long;
      uu_rbytes : Interfaces.C.Strings.chars_ptr;
      uu_nrbytes : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/crypt.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "crypt_gensalt_ra";

   function crypt_checksalt (uu_setting : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/crypt.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "crypt_checksalt";

   function crypt_preferred_method return Interfaces.C.Strings.chars_ptr  -- /usr/include/crypt.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "crypt_preferred_method";

end WiringPI.crypt_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
