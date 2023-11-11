pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
with Interfaces.C.Extensions;
with WiringPI.stddef_h;
with WiringPI.bits_stdint_intn_h;
with WiringPI.bits_types_h;

package WiringPI.stdlib_h is

   --  arg-macro: procedure WEXITSTATUS (status)
   --    __WEXITSTATUS (status)
   --  arg-macro: procedure WTERMSIG (status)
   --    __WTERMSIG (status)
   --  arg-macro: procedure WSTOPSIG (status)
   --    __WSTOPSIG (status)
   --  arg-macro: procedure WIFEXITED (status)
   --    __WIFEXITED (status)
   --  arg-macro: procedure WIFSIGNALED (status)
   --    __WIFSIGNALED (status)
   --  arg-macro: procedure WIFSTOPPED (status)
   --    __WIFSTOPPED (status)
   --  arg-macro: procedure WIFCONTINUED (status)
   --    __WIFCONTINUED (status)
   RAND_MAX : constant := 2147483647;  --  /usr/include/stdlib.h:87

   EXIT_FAILURE : constant := 1;  --  /usr/include/stdlib.h:92
   EXIT_SUCCESS : constant := 0;  --  /usr/include/stdlib.h:93
   --  unsupported macro: MB_CUR_MAX (__ctype_get_mb_cur_max ())

   type div_t is record
      quot : aliased int;  -- /usr/include/stdlib.h:61
      c_rem : aliased int;  -- /usr/include/stdlib.h:62
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/stdlib.h:63

   type ldiv_t is record
      quot : aliased long;  -- /usr/include/stdlib.h:69
      c_rem : aliased long;  -- /usr/include/stdlib.h:70
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/stdlib.h:71

   type lldiv_t is record
      quot : aliased Long_Long_Integer;  -- /usr/include/stdlib.h:79
      c_rem : aliased Long_Long_Integer;  -- /usr/include/stdlib.h:80
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/stdlib.h:81

   --  skipped func __ctype_get_mb_cur_max

   function atof (uu_nptr : Interfaces.C.Strings.chars_ptr) return double  -- /usr/include/stdlib.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "atof";

   function atoi (uu_nptr : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/stdlib.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "atoi";

   function atol (uu_nptr : Interfaces.C.Strings.chars_ptr) return long  -- /usr/include/stdlib.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "atol";

   function atoll (uu_nptr : Interfaces.C.Strings.chars_ptr) return Long_Long_Integer  -- /usr/include/stdlib.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "atoll";

   function strtod (uu_nptr : Interfaces.C.Strings.chars_ptr; uu_endptr : System.Address) return double  -- /usr/include/stdlib.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "strtod";

   function strtof (uu_nptr : Interfaces.C.Strings.chars_ptr; uu_endptr : System.Address) return float  -- /usr/include/stdlib.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "strtof";

   function strtold (uu_nptr : Interfaces.C.Strings.chars_ptr; uu_endptr : System.Address) return long_double  -- /usr/include/stdlib.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "strtold";

   function strtol
     (uu_nptr : Interfaces.C.Strings.chars_ptr;
      uu_endptr : System.Address;
      uu_base : int) return long  -- /usr/include/stdlib.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "strtol";

   function strtoul
     (uu_nptr : Interfaces.C.Strings.chars_ptr;
      uu_endptr : System.Address;
      uu_base : int) return unsigned_long  -- /usr/include/stdlib.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "strtoul";

   function strtoq
     (uu_nptr : Interfaces.C.Strings.chars_ptr;
      uu_endptr : System.Address;
      uu_base : int) return Long_Long_Integer  -- /usr/include/stdlib.h:188
   with Import => True, 
        Convention => C, 
        External_Name => "strtoq";

   function strtouq
     (uu_nptr : Interfaces.C.Strings.chars_ptr;
      uu_endptr : System.Address;
      uu_base : int) return Extensions.unsigned_long_long  -- /usr/include/stdlib.h:193
   with Import => True, 
        Convention => C, 
        External_Name => "strtouq";

   function strtoll
     (uu_nptr : Interfaces.C.Strings.chars_ptr;
      uu_endptr : System.Address;
      uu_base : int) return Long_Long_Integer  -- /usr/include/stdlib.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "strtoll";

   function strtoull
     (uu_nptr : Interfaces.C.Strings.chars_ptr;
      uu_endptr : System.Address;
      uu_base : int) return Extensions.unsigned_long_long  -- /usr/include/stdlib.h:206
   with Import => True, 
        Convention => C, 
        External_Name => "strtoull";

   function l64a (uu_n : long) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:386
   with Import => True, 
        Convention => C, 
        External_Name => "l64a";

   function a64l (uu_s : Interfaces.C.Strings.chars_ptr) return long  -- /usr/include/stdlib.h:389
   with Import => True, 
        Convention => C, 
        External_Name => "a64l";

   function random return long  -- /usr/include/stdlib.h:402
   with Import => True, 
        Convention => C, 
        External_Name => "random";

   procedure srandom (uu_seed : unsigned)  -- /usr/include/stdlib.h:405
   with Import => True, 
        Convention => C, 
        External_Name => "srandom";

   function initstate
     (uu_seed : unsigned;
      uu_statebuf : Interfaces.C.Strings.chars_ptr;
      uu_statelen : WiringPI.stddef_h.size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:411
   with Import => True, 
        Convention => C, 
        External_Name => "initstate";

   function setstate (uu_statebuf : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:416
   with Import => True, 
        Convention => C, 
        External_Name => "setstate";

   type random_data is record
      fptr : access WiringPI.bits_stdint_intn_h.int32_t;  -- /usr/include/stdlib.h:426
      rptr : access WiringPI.bits_stdint_intn_h.int32_t;  -- /usr/include/stdlib.h:427
      state : access WiringPI.bits_stdint_intn_h.int32_t;  -- /usr/include/stdlib.h:428
      rand_type : aliased int;  -- /usr/include/stdlib.h:429
      rand_deg : aliased int;  -- /usr/include/stdlib.h:430
      rand_sep : aliased int;  -- /usr/include/stdlib.h:431
      end_ptr : access WiringPI.bits_stdint_intn_h.int32_t;  -- /usr/include/stdlib.h:432
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/stdlib.h:424

   function random_r (uu_buf : access random_data; uu_result : access WiringPI.bits_stdint_intn_h.int32_t) return int  -- /usr/include/stdlib.h:435
   with Import => True, 
        Convention => C, 
        External_Name => "random_r";

   function srandom_r (uu_seed : unsigned; uu_buf : access random_data) return int  -- /usr/include/stdlib.h:438
   with Import => True, 
        Convention => C, 
        External_Name => "srandom_r";

   function initstate_r
     (uu_seed : unsigned;
      uu_statebuf : Interfaces.C.Strings.chars_ptr;
      uu_statelen : WiringPI.stddef_h.size_t;
      uu_buf : access random_data) return int  -- /usr/include/stdlib.h:441
   with Import => True, 
        Convention => C, 
        External_Name => "initstate_r";

   function setstate_r (uu_statebuf : Interfaces.C.Strings.chars_ptr; uu_buf : access random_data) return int  -- /usr/include/stdlib.h:446
   with Import => True, 
        Convention => C, 
        External_Name => "setstate_r";

   function rand return int  -- /usr/include/stdlib.h:454
   with Import => True, 
        Convention => C, 
        External_Name => "rand";

   procedure srand (uu_seed : unsigned)  -- /usr/include/stdlib.h:456
   with Import => True, 
        Convention => C, 
        External_Name => "srand";

   function rand_r (uu_seed : access unsigned) return int  -- /usr/include/stdlib.h:460
   with Import => True, 
        Convention => C, 
        External_Name => "rand_r";

   function drand48 return double  -- /usr/include/stdlib.h:468
   with Import => True, 
        Convention => C, 
        External_Name => "drand48";

   function erand48 (uu_xsubi : access unsigned_short) return double  -- /usr/include/stdlib.h:469
   with Import => True, 
        Convention => C, 
        External_Name => "erand48";

   function lrand48 return long  -- /usr/include/stdlib.h:472
   with Import => True, 
        Convention => C, 
        External_Name => "lrand48";

   function nrand48 (uu_xsubi : access unsigned_short) return long  -- /usr/include/stdlib.h:473
   with Import => True, 
        Convention => C, 
        External_Name => "nrand48";

   function mrand48 return long  -- /usr/include/stdlib.h:477
   with Import => True, 
        Convention => C, 
        External_Name => "mrand48";

   function jrand48 (uu_xsubi : access unsigned_short) return long  -- /usr/include/stdlib.h:478
   with Import => True, 
        Convention => C, 
        External_Name => "jrand48";

   procedure srand48 (uu_seedval : long)  -- /usr/include/stdlib.h:482
   with Import => True, 
        Convention => C, 
        External_Name => "srand48";

   function seed48 (uu_seed16v : access unsigned_short) return access unsigned_short  -- /usr/include/stdlib.h:483
   with Import => True, 
        Convention => C, 
        External_Name => "seed48";

   procedure lcong48 (uu_param : access unsigned_short)  -- /usr/include/stdlib.h:485
   with Import => True, 
        Convention => C, 
        External_Name => "lcong48";

   type anon_array1259 is array (0 .. 2) of aliased unsigned_short;
   type drand48_data is record
      uu_x : aliased anon_array1259;  -- /usr/include/stdlib.h:493
      uu_old_x : aliased anon_array1259;  -- /usr/include/stdlib.h:494
      uu_c : aliased unsigned_short;  -- /usr/include/stdlib.h:495
      uu_init : aliased unsigned_short;  -- /usr/include/stdlib.h:496
      uu_a : aliased Extensions.unsigned_long_long;  -- /usr/include/stdlib.h:497
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/stdlib.h:491

   function drand48_r (uu_buffer : access drand48_data; uu_result : access double) return int  -- /usr/include/stdlib.h:502
   with Import => True, 
        Convention => C, 
        External_Name => "drand48_r";

   function erand48_r
     (uu_xsubi : access unsigned_short;
      uu_buffer : access drand48_data;
      uu_result : access double) return int  -- /usr/include/stdlib.h:504
   with Import => True, 
        Convention => C, 
        External_Name => "erand48_r";

   function lrand48_r (uu_buffer : access drand48_data; uu_result : access long) return int  -- /usr/include/stdlib.h:509
   with Import => True, 
        Convention => C, 
        External_Name => "lrand48_r";

   function nrand48_r
     (uu_xsubi : access unsigned_short;
      uu_buffer : access drand48_data;
      uu_result : access long) return int  -- /usr/include/stdlib.h:512
   with Import => True, 
        Convention => C, 
        External_Name => "nrand48_r";

   function mrand48_r (uu_buffer : access drand48_data; uu_result : access long) return int  -- /usr/include/stdlib.h:518
   with Import => True, 
        Convention => C, 
        External_Name => "mrand48_r";

   function jrand48_r
     (uu_xsubi : access unsigned_short;
      uu_buffer : access drand48_data;
      uu_result : access long) return int  -- /usr/include/stdlib.h:521
   with Import => True, 
        Convention => C, 
        External_Name => "jrand48_r";

   function srand48_r (uu_seedval : long; uu_buffer : access drand48_data) return int  -- /usr/include/stdlib.h:527
   with Import => True, 
        Convention => C, 
        External_Name => "srand48_r";

   function seed48_r (uu_seed16v : access unsigned_short; uu_buffer : access drand48_data) return int  -- /usr/include/stdlib.h:530
   with Import => True, 
        Convention => C, 
        External_Name => "seed48_r";

   function lcong48_r (uu_param : access unsigned_short; uu_buffer : access drand48_data) return int  -- /usr/include/stdlib.h:533
   with Import => True, 
        Convention => C, 
        External_Name => "lcong48_r";

   function arc4random return WiringPI.bits_types_h.uu_uint32_t  -- /usr/include/stdlib.h:538
   with Import => True, 
        Convention => C, 
        External_Name => "arc4random";

   procedure arc4random_buf (uu_buf : System.Address; uu_size : WiringPI.stddef_h.size_t)  -- /usr/include/stdlib.h:542
   with Import => True, 
        Convention => C, 
        External_Name => "arc4random_buf";

   function arc4random_uniform (uu_upper_bound : WiringPI.bits_types_h.uu_uint32_t) return WiringPI.bits_types_h.uu_uint32_t  -- /usr/include/stdlib.h:547
   with Import => True, 
        Convention => C, 
        External_Name => "arc4random_uniform";

   function malloc (uu_size : WiringPI.stddef_h.size_t) return System.Address  -- /usr/include/stdlib.h:553
   with Import => True, 
        Convention => C, 
        External_Name => "malloc";

   function calloc (uu_nmemb : WiringPI.stddef_h.size_t; uu_size : WiringPI.stddef_h.size_t) return System.Address  -- /usr/include/stdlib.h:556
   with Import => True, 
        Convention => C, 
        External_Name => "calloc";

   function realloc (uu_ptr : System.Address; uu_size : WiringPI.stddef_h.size_t) return System.Address  -- /usr/include/stdlib.h:564
   with Import => True, 
        Convention => C, 
        External_Name => "realloc";

   procedure free (uu_ptr : System.Address)  -- /usr/include/stdlib.h:568
   with Import => True, 
        Convention => C, 
        External_Name => "free";

   function reallocarray
     (uu_ptr : System.Address;
      uu_nmemb : WiringPI.stddef_h.size_t;
      uu_size : WiringPI.stddef_h.size_t) return System.Address  -- /usr/include/stdlib.h:582
   with Import => True, 
        Convention => C, 
        External_Name => "reallocarray";

   function valloc (uu_size : WiringPI.stddef_h.size_t) return System.Address  -- /usr/include/stdlib.h:593
   with Import => True, 
        Convention => C, 
        External_Name => "valloc";

   function posix_memalign
     (uu_memptr : System.Address;
      uu_alignment : WiringPI.stddef_h.size_t;
      uu_size : WiringPI.stddef_h.size_t) return int  -- /usr/include/stdlib.h:599
   with Import => True, 
        Convention => C, 
        External_Name => "posix_memalign";

   function aligned_alloc (uu_alignment : WiringPI.stddef_h.size_t; uu_size : WiringPI.stddef_h.size_t) return System.Address  -- /usr/include/stdlib.h:605
   with Import => True, 
        Convention => C, 
        External_Name => "aligned_alloc";

   procedure c_abort  -- /usr/include/stdlib.h:611
   with Import => True, 
        Convention => C, 
        External_Name => "abort";

   function atexit (uu_func : access procedure) return int  -- /usr/include/stdlib.h:615
   with Import => True, 
        Convention => C, 
        External_Name => "atexit";

   function at_quick_exit (uu_func : access procedure) return int  -- /usr/include/stdlib.h:623
   with Import => True, 
        Convention => C, 
        External_Name => "at_quick_exit";

   function on_exit (uu_func : access procedure (arg1 : int; arg2 : System.Address); uu_arg : System.Address) return int  -- /usr/include/stdlib.h:630
   with Import => True, 
        Convention => C, 
        External_Name => "on_exit";

   procedure c_exit (uu_status : int)  -- /usr/include/stdlib.h:637
   with Import => True, 
        Convention => C, 
        External_Name => "exit";

   procedure quick_exit (uu_status : int)  -- /usr/include/stdlib.h:643
   with Import => True, 
        Convention => C, 
        External_Name => "quick_exit";

   --  skipped func _Exit

   function getenv (uu_name : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:654
   with Import => True, 
        Convention => C, 
        External_Name => "getenv";

   function putenv (uu_string : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/stdlib.h:667
   with Import => True, 
        Convention => C, 
        External_Name => "putenv";

   function setenv
     (uu_name : Interfaces.C.Strings.chars_ptr;
      uu_value : Interfaces.C.Strings.chars_ptr;
      uu_replace : int) return int  -- /usr/include/stdlib.h:673
   with Import => True, 
        Convention => C, 
        External_Name => "setenv";

   function unsetenv (uu_name : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/stdlib.h:677
   with Import => True, 
        Convention => C, 
        External_Name => "unsetenv";

   function clearenv return int  -- /usr/include/stdlib.h:684
   with Import => True, 
        Convention => C, 
        External_Name => "clearenv";

   function mktemp (uu_template : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:695
   with Import => True, 
        Convention => C, 
        External_Name => "mktemp";

   function mkstemp (uu_template : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/stdlib.h:708
   with Import => True, 
        Convention => C, 
        External_Name => "mkstemp";

   function mkstemps (uu_template : Interfaces.C.Strings.chars_ptr; uu_suffixlen : int) return int  -- /usr/include/stdlib.h:730
   with Import => True, 
        Convention => C, 
        External_Name => "mkstemps";

   function mkdtemp (uu_template : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:751
   with Import => True, 
        Convention => C, 
        External_Name => "mkdtemp";

   function c_system (uu_command : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/stdlib.h:804
   with Import => True, 
        Convention => C, 
        External_Name => "system";

   function realpath (uu_name : Interfaces.C.Strings.chars_ptr; uu_resolved : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:821
   with Import => True, 
        Convention => C, 
        External_Name => "realpath";

   type uu_compar_fn_t is access function (arg1 : System.Address; arg2 : System.Address) return int
   with Convention => C;  -- /usr/include/stdlib.h:829

   function bsearch
     (uu_key : System.Address;
      uu_base : System.Address;
      uu_nmemb : WiringPI.stddef_h.size_t;
      uu_size : WiringPI.stddef_h.size_t;
      uu_compar : uu_compar_fn_t) return System.Address  -- /usr/include/stdlib.h:841
   with Import => True, 
        Convention => C, 
        External_Name => "bsearch";

   procedure qsort
     (uu_base : System.Address;
      uu_nmemb : WiringPI.stddef_h.size_t;
      uu_size : WiringPI.stddef_h.size_t;
      uu_compar : uu_compar_fn_t)  -- /usr/include/stdlib.h:851
   with Import => True, 
        Convention => C, 
        External_Name => "qsort";

   function c_abs (uu_x : int) return int  -- /usr/include/stdlib.h:861
   with Import => True, 
        Convention => C, 
        External_Name => "abs";

   function labs (uu_x : long) return long  -- /usr/include/stdlib.h:862
   with Import => True, 
        Convention => C, 
        External_Name => "labs";

   function llabs (uu_x : Long_Long_Integer) return Long_Long_Integer  -- /usr/include/stdlib.h:865
   with Import => True, 
        Convention => C, 
        External_Name => "llabs";

   function div (uu_numer : int; uu_denom : int) return div_t  -- /usr/include/stdlib.h:873
   with Import => True, 
        Convention => C, 
        External_Name => "div";

   function ldiv (uu_numer : long; uu_denom : long) return ldiv_t  -- /usr/include/stdlib.h:875
   with Import => True, 
        Convention => C, 
        External_Name => "ldiv";

   function lldiv (uu_numer : Long_Long_Integer; uu_denom : Long_Long_Integer) return lldiv_t  -- /usr/include/stdlib.h:879
   with Import => True, 
        Convention => C, 
        External_Name => "lldiv";

   function ecvt
     (uu_value : double;
      uu_ndigit : int;
      uu_decpt : access int;
      uu_sign : access int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:893
   with Import => True, 
        Convention => C, 
        External_Name => "ecvt";

   function fcvt
     (uu_value : double;
      uu_ndigit : int;
      uu_decpt : access int;
      uu_sign : access int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:899
   with Import => True, 
        Convention => C, 
        External_Name => "fcvt";

   function gcvt
     (uu_value : double;
      uu_ndigit : int;
      uu_buf : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:905
   with Import => True, 
        Convention => C, 
        External_Name => "gcvt";

   function qecvt
     (uu_value : long_double;
      uu_ndigit : int;
      uu_decpt : access int;
      uu_sign : access int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:911
   with Import => True, 
        Convention => C, 
        External_Name => "qecvt";

   function qfcvt
     (uu_value : long_double;
      uu_ndigit : int;
      uu_decpt : access int;
      uu_sign : access int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:914
   with Import => True, 
        Convention => C, 
        External_Name => "qfcvt";

   function qgcvt
     (uu_value : long_double;
      uu_ndigit : int;
      uu_buf : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:917
   with Import => True, 
        Convention => C, 
        External_Name => "qgcvt";

   function ecvt_r
     (uu_value : double;
      uu_ndigit : int;
      uu_decpt : access int;
      uu_sign : access int;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_len : WiringPI.stddef_h.size_t) return int  -- /usr/include/stdlib.h:923
   with Import => True, 
        Convention => C, 
        External_Name => "ecvt_r";

   function fcvt_r
     (uu_value : double;
      uu_ndigit : int;
      uu_decpt : access int;
      uu_sign : access int;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_len : WiringPI.stddef_h.size_t) return int  -- /usr/include/stdlib.h:926
   with Import => True, 
        Convention => C, 
        External_Name => "fcvt_r";

   function qecvt_r
     (uu_value : long_double;
      uu_ndigit : int;
      uu_decpt : access int;
      uu_sign : access int;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_len : WiringPI.stddef_h.size_t) return int  -- /usr/include/stdlib.h:930
   with Import => True, 
        Convention => C, 
        External_Name => "qecvt_r";

   function qfcvt_r
     (uu_value : long_double;
      uu_ndigit : int;
      uu_decpt : access int;
      uu_sign : access int;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_len : WiringPI.stddef_h.size_t) return int  -- /usr/include/stdlib.h:934
   with Import => True, 
        Convention => C, 
        External_Name => "qfcvt_r";

   function mblen (uu_s : Interfaces.C.Strings.chars_ptr; uu_n : WiringPI.stddef_h.size_t) return int  -- /usr/include/stdlib.h:943
   with Import => True, 
        Convention => C, 
        External_Name => "mblen";

   function mbtowc
     (uu_pwc : access WiringPI.stddef_h.wchar_t;
      uu_s : Interfaces.C.Strings.chars_ptr;
      uu_n : WiringPI.stddef_h.size_t) return int  -- /usr/include/stdlib.h:946
   with Import => True, 
        Convention => C, 
        External_Name => "mbtowc";

   function wctomb (uu_s : Interfaces.C.Strings.chars_ptr; uu_wchar : WiringPI.stddef_h.wchar_t) return int  -- /usr/include/stdlib.h:950
   with Import => True, 
        Convention => C, 
        External_Name => "wctomb";

   function mbstowcs
     (uu_pwcs : access WiringPI.stddef_h.wchar_t;
      uu_s : Interfaces.C.Strings.chars_ptr;
      uu_n : WiringPI.stddef_h.size_t) return WiringPI.stddef_h.size_t  -- /usr/include/stdlib.h:954
   with Import => True, 
        Convention => C, 
        External_Name => "mbstowcs";

   function wcstombs
     (uu_s : Interfaces.C.Strings.chars_ptr;
      uu_pwcs : access WiringPI.stddef_h.wchar_t;
      uu_n : WiringPI.stddef_h.size_t) return WiringPI.stddef_h.size_t  -- /usr/include/stdlib.h:958
   with Import => True, 
        Convention => C, 
        External_Name => "wcstombs";

   function rpmatch (uu_response : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/stdlib.h:969
   with Import => True, 
        Convention => C, 
        External_Name => "rpmatch";

   function getsubopt
     (uu_optionp : System.Address;
      uu_tokens : System.Address;
      uu_valuep : System.Address) return int  -- /usr/include/stdlib.h:980
   with Import => True, 
        Convention => C, 
        External_Name => "getsubopt";

   function getloadavg (uu_loadavg : access double; uu_nelem : int) return int  -- /usr/include/stdlib.h:1026
   with Import => True, 
        Convention => C, 
        External_Name => "getloadavg";

end WiringPI.stdlib_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
