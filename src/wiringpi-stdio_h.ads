pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.stdarg_h;
with WiringPI.bits_types_h;
with WiringPI.bits_types_u_fpos_t_h;
limited with WiringPI.bits_types_struct_FILE_h;
with Interfaces.C.Strings;
with System;
with WiringPI.stddef_h;

package WiringPI.stdio_h is

   BUFSIZ : constant := 8192;  --  /usr/include/stdio.h:99

   EOF : constant := (-1);  --  /usr/include/stdio.h:104

   P_tmpdir : aliased constant String := "/tmp" & ASCII.NUL;  --  /usr/include/stdio.h:120
   --  unsupported macro: stdin stdin
   --  unsupported macro: stdout stdout
   --  unsupported macro: stderr stderr

   subtype va_list is WiringPI.stdarg_h.uu_gnuc_va_list;  -- /usr/include/stdio.h:52

   subtype off_t is WiringPI.bits_types_h.uu_off_t;  -- /usr/include/stdio.h:63

   subtype ssize_t is WiringPI.bits_types_h.uu_ssize_t;  -- /usr/include/stdio.h:77

   subtype fpos_t is WiringPI.bits_types_u_fpos_t_h.uu_fpos_t;  -- /usr/include/stdio.h:84

   stdin : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE  -- /usr/include/stdio.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "stdin";

   stdout : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE  -- /usr/include/stdio.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "stdout";

   stderr : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE  -- /usr/include/stdio.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "stderr";

   function remove (uu_filename : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/stdio.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "remove";

   function rename (uu_old : Interfaces.C.Strings.chars_ptr; uu_new : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/stdio.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "rename";

   function renameat
     (uu_oldfd : int;
      uu_old : Interfaces.C.Strings.chars_ptr;
      uu_newfd : int;
      uu_new : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/stdio.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "renameat";

   function fclose (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return int  -- /usr/include/stdio.h:178
   with Import => True, 
        Convention => C, 
        External_Name => "fclose";

   function tmpfile return access WiringPI.bits_types_struct_FILE_h.u_IO_FILE  -- /usr/include/stdio.h:188
   with Import => True, 
        Convention => C, 
        External_Name => "tmpfile";

   function tmpnam (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdio.h:205
   with Import => True, 
        Convention => C, 
        External_Name => "tmpnam";

   function tmpnam_r (uu_s : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdio.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "tmpnam_r";

   function tempnam (uu_dir : Interfaces.C.Strings.chars_ptr; uu_pfx : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdio.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "tempnam";

   function fflush (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return int  -- /usr/include/stdio.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "fflush";

   function fflush_unlocked (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return int  -- /usr/include/stdio.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "fflush_unlocked";

   function fopen (uu_filename : Interfaces.C.Strings.chars_ptr; uu_modes : Interfaces.C.Strings.chars_ptr) return access WiringPI.bits_types_struct_FILE_h.u_IO_FILE  -- /usr/include/stdio.h:258
   with Import => True, 
        Convention => C, 
        External_Name => "fopen";

   function freopen
     (uu_filename : Interfaces.C.Strings.chars_ptr;
      uu_modes : Interfaces.C.Strings.chars_ptr;
      uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return access WiringPI.bits_types_struct_FILE_h.u_IO_FILE  -- /usr/include/stdio.h:265
   with Import => True, 
        Convention => C, 
        External_Name => "freopen";

   function fdopen (uu_fd : int; uu_modes : Interfaces.C.Strings.chars_ptr) return access WiringPI.bits_types_struct_FILE_h.u_IO_FILE  -- /usr/include/stdio.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "fdopen";

   function fmemopen
     (uu_s : System.Address;
      uu_len : WiringPI.stddef_h.size_t;
      uu_modes : Interfaces.C.Strings.chars_ptr) return access WiringPI.bits_types_struct_FILE_h.u_IO_FILE  -- /usr/include/stdio.h:308
   with Import => True, 
        Convention => C, 
        External_Name => "fmemopen";

   function open_memstream (uu_bufloc : System.Address; uu_sizeloc : access WiringPI.stddef_h.size_t) return access WiringPI.bits_types_struct_FILE_h.u_IO_FILE  -- /usr/include/stdio.h:314
   with Import => True, 
        Convention => C, 
        External_Name => "open_memstream";

   procedure setbuf (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE; uu_buf : Interfaces.C.Strings.chars_ptr)  -- /usr/include/stdio.h:328
   with Import => True, 
        Convention => C, 
        External_Name => "setbuf";

   function setvbuf
     (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_modes : int;
      uu_n : WiringPI.stddef_h.size_t) return int  -- /usr/include/stdio.h:332
   with Import => True, 
        Convention => C, 
        External_Name => "setvbuf";

   procedure setbuffer
     (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_size : WiringPI.stddef_h.size_t)  -- /usr/include/stdio.h:338
   with Import => True, 
        Convention => C, 
        External_Name => "setbuffer";

   procedure setlinebuf (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE)  -- /usr/include/stdio.h:342
   with Import => True, 
        Convention => C, 
        External_Name => "setlinebuf";

   function fprintf (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE; uu_format : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/stdio.h:350
   with Import => True, 
        Convention => C, 
        External_Name => "fprintf";

   function printf (uu_format : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/stdio.h:356
   with Import => True, 
        Convention => C, 
        External_Name => "printf";

   function sprintf (uu_s : Interfaces.C.Strings.chars_ptr; uu_format : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/stdio.h:358
   with Import => True, 
        Convention => C, 
        External_Name => "sprintf";

   function vfprintf
     (uu_s : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE;
      uu_format : Interfaces.C.Strings.chars_ptr;
      uu_arg : access System.Address) return int  -- /usr/include/stdio.h:365
   with Import => True, 
        Convention => C, 
        External_Name => "vfprintf";

   function vprintf (uu_format : Interfaces.C.Strings.chars_ptr; uu_arg : access System.Address) return int  -- /usr/include/stdio.h:371
   with Import => True, 
        Convention => C, 
        External_Name => "vprintf";

   function vsprintf
     (uu_s : Interfaces.C.Strings.chars_ptr;
      uu_format : Interfaces.C.Strings.chars_ptr;
      uu_arg : access System.Address) return int  -- /usr/include/stdio.h:373
   with Import => True, 
        Convention => C, 
        External_Name => "vsprintf";

   function snprintf
     (uu_s : Interfaces.C.Strings.chars_ptr;
      uu_maxlen : WiringPI.stddef_h.size_t;
      uu_format : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/stdio.h:378
   with Import => True, 
        Convention => C, 
        External_Name => "snprintf";

   function vsnprintf
     (uu_s : Interfaces.C.Strings.chars_ptr;
      uu_maxlen : WiringPI.stddef_h.size_t;
      uu_format : Interfaces.C.Strings.chars_ptr;
      uu_arg : access System.Address) return int  -- /usr/include/stdio.h:382
   with Import => True, 
        Convention => C, 
        External_Name => "vsnprintf";

   function vdprintf
     (uu_fd : int;
      uu_fmt : Interfaces.C.Strings.chars_ptr;
      uu_arg : access System.Address) return int  -- /usr/include/stdio.h:403
   with Import => True, 
        Convention => C, 
        External_Name => "vdprintf";

   function dprintf (uu_fd : int; uu_fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/stdio.h:406
   with Import => True, 
        Convention => C, 
        External_Name => "dprintf";

   function fscanf (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE; uu_format : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/stdio.h:434
   with Import => True, 
        Convention => C, 
        External_Name => "__isoc99_fscanf";

   function scanf (uu_format : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/stdio.h:437
   with Import => True, 
        Convention => C, 
        External_Name => "__isoc99_scanf";

   function sscanf (uu_s : Interfaces.C.Strings.chars_ptr; uu_format : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/stdio.h:439
   with Import => True, 
        Convention => C, 
        External_Name => "__isoc99_sscanf";

   function vfscanf
     (uu_s : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE;
      uu_format : Interfaces.C.Strings.chars_ptr;
      uu_arg : access System.Address) return int  -- /usr/include/stdio.h:479
   with Import => True, 
        Convention => C, 
        External_Name => "__isoc99_vfscanf";

   function vscanf (uu_format : Interfaces.C.Strings.chars_ptr; uu_arg : access System.Address) return int  -- /usr/include/stdio.h:484
   with Import => True, 
        Convention => C, 
        External_Name => "__isoc99_vscanf";

   function vsscanf
     (uu_s : Interfaces.C.Strings.chars_ptr;
      uu_format : Interfaces.C.Strings.chars_ptr;
      uu_arg : access System.Address) return int  -- /usr/include/stdio.h:487
   with Import => True, 
        Convention => C, 
        External_Name => "__isoc99_vsscanf";

   function fgetc (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return int  -- /usr/include/stdio.h:513
   with Import => True, 
        Convention => C, 
        External_Name => "fgetc";

   function getc (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return int  -- /usr/include/stdio.h:514
   with Import => True, 
        Convention => C, 
        External_Name => "getc";

   function getchar return int  -- /usr/include/stdio.h:520
   with Import => True, 
        Convention => C, 
        External_Name => "getchar";

   function getc_unlocked (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return int  -- /usr/include/stdio.h:527
   with Import => True, 
        Convention => C, 
        External_Name => "getc_unlocked";

   function getchar_unlocked return int  -- /usr/include/stdio.h:528
   with Import => True, 
        Convention => C, 
        External_Name => "getchar_unlocked";

   function fgetc_unlocked (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return int  -- /usr/include/stdio.h:538
   with Import => True, 
        Convention => C, 
        External_Name => "fgetc_unlocked";

   function fputc (uu_c : int; uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return int  -- /usr/include/stdio.h:549
   with Import => True, 
        Convention => C, 
        External_Name => "fputc";

   function putc (uu_c : int; uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return int  -- /usr/include/stdio.h:550
   with Import => True, 
        Convention => C, 
        External_Name => "putc";

   function putchar (uu_c : int) return int  -- /usr/include/stdio.h:556
   with Import => True, 
        Convention => C, 
        External_Name => "putchar";

   function fputc_unlocked (uu_c : int; uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return int  -- /usr/include/stdio.h:565
   with Import => True, 
        Convention => C, 
        External_Name => "fputc_unlocked";

   function putc_unlocked (uu_c : int; uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return int  -- /usr/include/stdio.h:573
   with Import => True, 
        Convention => C, 
        External_Name => "putc_unlocked";

   function putchar_unlocked (uu_c : int) return int  -- /usr/include/stdio.h:574
   with Import => True, 
        Convention => C, 
        External_Name => "putchar_unlocked";

   function getw (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return int  -- /usr/include/stdio.h:581
   with Import => True, 
        Convention => C, 
        External_Name => "getw";

   function putw (uu_w : int; uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return int  -- /usr/include/stdio.h:584
   with Import => True, 
        Convention => C, 
        External_Name => "putw";

   function fgets
     (uu_s : Interfaces.C.Strings.chars_ptr;
      uu_n : int;
      uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdio.h:592
   with Import => True, 
        Convention => C, 
        External_Name => "fgets";

   --  skipped func __getdelim

   function getdelim
     (uu_lineptr : System.Address;
      uu_n : access WiringPI.stddef_h.size_t;
      uu_delimiter : int;
      uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return WiringPI.bits_types_h.uu_ssize_t  -- /usr/include/stdio.h:635
   with Import => True, 
        Convention => C, 
        External_Name => "getdelim";

   function getline
     (uu_lineptr : System.Address;
      uu_n : access WiringPI.stddef_h.size_t;
      uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return WiringPI.bits_types_h.uu_ssize_t  -- /usr/include/stdio.h:645
   with Import => True, 
        Convention => C, 
        External_Name => "getline";

   function fputs (uu_s : Interfaces.C.Strings.chars_ptr; uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return int  -- /usr/include/stdio.h:655
   with Import => True, 
        Convention => C, 
        External_Name => "fputs";

   function puts (uu_s : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/stdio.h:661
   with Import => True, 
        Convention => C, 
        External_Name => "puts";

   function ungetc (uu_c : int; uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return int  -- /usr/include/stdio.h:668
   with Import => True, 
        Convention => C, 
        External_Name => "ungetc";

   function fread
     (uu_ptr : System.Address;
      uu_size : WiringPI.stddef_h.size_t;
      uu_n : WiringPI.stddef_h.size_t;
      uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return WiringPI.stddef_h.size_t  -- /usr/include/stdio.h:675
   with Import => True, 
        Convention => C, 
        External_Name => "fread";

   function fwrite
     (uu_ptr : System.Address;
      uu_size : WiringPI.stddef_h.size_t;
      uu_n : WiringPI.stddef_h.size_t;
      uu_s : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return WiringPI.stddef_h.size_t  -- /usr/include/stdio.h:681
   with Import => True, 
        Convention => C, 
        External_Name => "fwrite";

   function fread_unlocked
     (uu_ptr : System.Address;
      uu_size : WiringPI.stddef_h.size_t;
      uu_n : WiringPI.stddef_h.size_t;
      uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return WiringPI.stddef_h.size_t  -- /usr/include/stdio.h:702
   with Import => True, 
        Convention => C, 
        External_Name => "fread_unlocked";

   function fwrite_unlocked
     (uu_ptr : System.Address;
      uu_size : WiringPI.stddef_h.size_t;
      uu_n : WiringPI.stddef_h.size_t;
      uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return WiringPI.stddef_h.size_t  -- /usr/include/stdio.h:704
   with Import => True, 
        Convention => C, 
        External_Name => "fwrite_unlocked";

   function fseek
     (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE;
      uu_off : long;
      uu_whence : int) return int  -- /usr/include/stdio.h:713
   with Import => True, 
        Convention => C, 
        External_Name => "fseek";

   function ftell (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return long  -- /usr/include/stdio.h:718
   with Import => True, 
        Convention => C, 
        External_Name => "ftell";

   procedure rewind (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE)  -- /usr/include/stdio.h:723
   with Import => True, 
        Convention => C, 
        External_Name => "rewind";

   function fseeko
     (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE;
      uu_off : WiringPI.bits_types_h.uu_off_t;
      uu_whence : int) return int  -- /usr/include/stdio.h:736
   with Import => True, 
        Convention => C, 
        External_Name => "fseeko";

   function ftello (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return WiringPI.bits_types_h.uu_off_t  -- /usr/include/stdio.h:741
   with Import => True, 
        Convention => C, 
        External_Name => "ftello";

   function fgetpos (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE; uu_pos : access fpos_t) return int  -- /usr/include/stdio.h:760
   with Import => True, 
        Convention => C, 
        External_Name => "fgetpos";

   function fsetpos (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE; uu_pos : access constant fpos_t) return int  -- /usr/include/stdio.h:765
   with Import => True, 
        Convention => C, 
        External_Name => "fsetpos";

   procedure clearerr (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE)  -- /usr/include/stdio.h:786
   with Import => True, 
        Convention => C, 
        External_Name => "clearerr";

   function feof (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return int  -- /usr/include/stdio.h:788
   with Import => True, 
        Convention => C, 
        External_Name => "feof";

   function ferror (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return int  -- /usr/include/stdio.h:790
   with Import => True, 
        Convention => C, 
        External_Name => "ferror";

   procedure clearerr_unlocked (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE)  -- /usr/include/stdio.h:794
   with Import => True, 
        Convention => C, 
        External_Name => "clearerr_unlocked";

   function feof_unlocked (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return int  -- /usr/include/stdio.h:795
   with Import => True, 
        Convention => C, 
        External_Name => "feof_unlocked";

   function ferror_unlocked (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return int  -- /usr/include/stdio.h:796
   with Import => True, 
        Convention => C, 
        External_Name => "ferror_unlocked";

   procedure perror (uu_s : Interfaces.C.Strings.chars_ptr)  -- /usr/include/stdio.h:804
   with Import => True, 
        Convention => C, 
        External_Name => "perror";

   function fileno (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return int  -- /usr/include/stdio.h:809
   with Import => True, 
        Convention => C, 
        External_Name => "fileno";

   function fileno_unlocked (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return int  -- /usr/include/stdio.h:814
   with Import => True, 
        Convention => C, 
        External_Name => "fileno_unlocked";

   function pclose (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return int  -- /usr/include/stdio.h:823
   with Import => True, 
        Convention => C, 
        External_Name => "pclose";

   function popen (uu_command : Interfaces.C.Strings.chars_ptr; uu_modes : Interfaces.C.Strings.chars_ptr) return access WiringPI.bits_types_struct_FILE_h.u_IO_FILE  -- /usr/include/stdio.h:829
   with Import => True, 
        Convention => C, 
        External_Name => "popen";

   function ctermid (uu_s : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdio.h:837
   with Import => True, 
        Convention => C, 
        External_Name => "ctermid";

   procedure flockfile (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE)  -- /usr/include/stdio.h:867
   with Import => True, 
        Convention => C, 
        External_Name => "flockfile";

   function ftrylockfile (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE) return int  -- /usr/include/stdio.h:871
   with Import => True, 
        Convention => C, 
        External_Name => "ftrylockfile";

   procedure funlockfile (uu_stream : access WiringPI.bits_types_struct_FILE_h.u_IO_FILE)  -- /usr/include/stdio.h:874
   with Import => True, 
        Convention => C, 
        External_Name => "funlockfile";

   --  skipped func __uflow

   --  skipped func __overflow

end WiringPI.stdio_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
