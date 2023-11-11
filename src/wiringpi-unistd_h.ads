pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_types_h;
with Interfaces.C.Strings;
with System;
with WiringPI.stddef_h;
with WiringPI.stdio_h;
with WiringPI.stdint_h;

package WiringPI.unistd_h is

   STDIN_FILENO : constant := 0;  --  /usr/include/unistd.h:210
   STDOUT_FILENO : constant := 1;  --  /usr/include/unistd.h:211
   STDERR_FILENO : constant := 2;  --  /usr/include/unistd.h:212

   R_OK : constant := 4;  --  /usr/include/unistd.h:281
   W_OK : constant := 2;  --  /usr/include/unistd.h:282
   X_OK : constant := 1;  --  /usr/include/unistd.h:283
   F_OK : constant := 0;  --  /usr/include/unistd.h:284
   --  unsupported macro: L_SET SEEK_SET
   --  unsupported macro: L_INCR SEEK_CUR
   --  unsupported macro: L_XTND SEEK_END

   F_ULOCK : constant := 0;  --  /usr/include/unistd.h:1108
   F_LOCK : constant := 1;  --  /usr/include/unistd.h:1109
   F_TLOCK : constant := 2;  --  /usr/include/unistd.h:1110
   F_TEST : constant := 3;  --  /usr/include/unistd.h:1111

   subtype useconds_t is WiringPI.bits_types_h.uu_useconds_t;  -- /usr/include/unistd.h:255

   subtype socklen_t is WiringPI.bits_types_h.uu_socklen_t;  -- /usr/include/unistd.h:274

   function c_access (uu_name : Interfaces.C.Strings.chars_ptr; uu_type : int) return int  -- /usr/include/unistd.h:287
   with Import => True, 
        Convention => C, 
        External_Name => "access";

   function faccessat
     (uu_fd : int;
      uu_file : Interfaces.C.Strings.chars_ptr;
      uu_type : int;
      uu_flag : int) return int  -- /usr/include/unistd.h:309
   with Import => True, 
        Convention => C, 
        External_Name => "faccessat";

   function lseek
     (uu_fd : int;
      uu_offset : WiringPI.bits_types_h.uu_off_t;
      uu_whence : int) return WiringPI.bits_types_h.uu_off_t  -- /usr/include/unistd.h:339
   with Import => True, 
        Convention => C, 
        External_Name => "lseek";

   function close (uu_fd : int) return int  -- /usr/include/unistd.h:358
   with Import => True, 
        Convention => C, 
        External_Name => "close";

   procedure closefrom (uu_lowfd : int)  -- /usr/include/unistd.h:363
   with Import => True, 
        Convention => C, 
        External_Name => "closefrom";

   function read
     (uu_fd : int;
      uu_buf : System.Address;
      uu_nbytes : WiringPI.stddef_h.size_t) return WiringPI.stdio_h.ssize_t  -- /usr/include/unistd.h:371
   with Import => True, 
        Convention => C, 
        External_Name => "read";

   function write
     (uu_fd : int;
      uu_buf : System.Address;
      uu_n : WiringPI.stddef_h.size_t) return WiringPI.stdio_h.ssize_t  -- /usr/include/unistd.h:378
   with Import => True, 
        Convention => C, 
        External_Name => "write";

   function pread
     (uu_fd : int;
      uu_buf : System.Address;
      uu_nbytes : WiringPI.stddef_h.size_t;
      uu_offset : WiringPI.bits_types_h.uu_off_t) return WiringPI.stdio_h.ssize_t  -- /usr/include/unistd.h:389
   with Import => True, 
        Convention => C, 
        External_Name => "pread";

   function pwrite
     (uu_fd : int;
      uu_buf : System.Address;
      uu_n : WiringPI.stddef_h.size_t;
      uu_offset : WiringPI.bits_types_h.uu_off_t) return WiringPI.stdio_h.ssize_t  -- /usr/include/unistd.h:398
   with Import => True, 
        Convention => C, 
        External_Name => "pwrite";

   function pipe (uu_pipedes : access int) return int  -- /usr/include/unistd.h:437
   with Import => True, 
        Convention => C, 
        External_Name => "pipe";

   function alarm (uu_seconds : unsigned) return unsigned  -- /usr/include/unistd.h:452
   with Import => True, 
        Convention => C, 
        External_Name => "alarm";

   function sleep (uu_seconds : unsigned) return unsigned  -- /usr/include/unistd.h:464
   with Import => True, 
        Convention => C, 
        External_Name => "sleep";

   function ualarm (uu_value : WiringPI.bits_types_h.uu_useconds_t; uu_interval : WiringPI.bits_types_h.uu_useconds_t) return WiringPI.bits_types_h.uu_useconds_t  -- /usr/include/unistd.h:472
   with Import => True, 
        Convention => C, 
        External_Name => "ualarm";

   function usleep (uu_useconds : WiringPI.bits_types_h.uu_useconds_t) return int  -- /usr/include/unistd.h:480
   with Import => True, 
        Convention => C, 
        External_Name => "usleep";

   function pause return int  -- /usr/include/unistd.h:489
   with Import => True, 
        Convention => C, 
        External_Name => "pause";

   function chown
     (uu_file : Interfaces.C.Strings.chars_ptr;
      uu_owner : WiringPI.bits_types_h.uu_uid_t;
      uu_group : WiringPI.bits_types_h.uu_gid_t) return int  -- /usr/include/unistd.h:493
   with Import => True, 
        Convention => C, 
        External_Name => "chown";

   function fchown
     (uu_fd : int;
      uu_owner : WiringPI.bits_types_h.uu_uid_t;
      uu_group : WiringPI.bits_types_h.uu_gid_t) return int  -- /usr/include/unistd.h:498
   with Import => True, 
        Convention => C, 
        External_Name => "fchown";

   function lchown
     (uu_file : Interfaces.C.Strings.chars_ptr;
      uu_owner : WiringPI.bits_types_h.uu_uid_t;
      uu_group : WiringPI.bits_types_h.uu_gid_t) return int  -- /usr/include/unistd.h:503
   with Import => True, 
        Convention => C, 
        External_Name => "lchown";

   function fchownat
     (uu_fd : int;
      uu_file : Interfaces.C.Strings.chars_ptr;
      uu_owner : WiringPI.bits_types_h.uu_uid_t;
      uu_group : WiringPI.bits_types_h.uu_gid_t;
      uu_flag : int) return int  -- /usr/include/unistd.h:511
   with Import => True, 
        Convention => C, 
        External_Name => "fchownat";

   function chdir (uu_path : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/unistd.h:517
   with Import => True, 
        Convention => C, 
        External_Name => "chdir";

   function fchdir (uu_fd : int) return int  -- /usr/include/unistd.h:521
   with Import => True, 
        Convention => C, 
        External_Name => "fchdir";

   function getcwd (uu_buf : Interfaces.C.Strings.chars_ptr; uu_size : WiringPI.stddef_h.size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/unistd.h:531
   with Import => True, 
        Convention => C, 
        External_Name => "getcwd";

   function getwd (uu_buf : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/unistd.h:545
   with Import => True, 
        Convention => C, 
        External_Name => "getwd";

   function dup (uu_fd : int) return int  -- /usr/include/unistd.h:552
   with Import => True, 
        Convention => C, 
        External_Name => "dup";

   function dup2 (uu_fd : int; uu_fd2 : int) return int  -- /usr/include/unistd.h:555
   with Import => True, 
        Convention => C, 
        External_Name => "dup2";

   function execve
     (uu_path : Interfaces.C.Strings.chars_ptr;
      uu_argv : System.Address;
      uu_envp : System.Address) return int  -- /usr/include/unistd.h:572
   with Import => True, 
        Convention => C, 
        External_Name => "execve";

   function fexecve
     (uu_fd : int;
      uu_argv : System.Address;
      uu_envp : System.Address) return int  -- /usr/include/unistd.h:578
   with Import => True, 
        Convention => C, 
        External_Name => "fexecve";

   function execv (uu_path : Interfaces.C.Strings.chars_ptr; uu_argv : System.Address) return int  -- /usr/include/unistd.h:584
   with Import => True, 
        Convention => C, 
        External_Name => "execv";

   function execle (uu_path : Interfaces.C.Strings.chars_ptr; uu_arg : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/unistd.h:589
   with Import => True, 
        Convention => C, 
        External_Name => "execle";

   function execl (uu_path : Interfaces.C.Strings.chars_ptr; uu_arg : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/unistd.h:594
   with Import => True, 
        Convention => C, 
        External_Name => "execl";

   function execvp (uu_file : Interfaces.C.Strings.chars_ptr; uu_argv : System.Address) return int  -- /usr/include/unistd.h:599
   with Import => True, 
        Convention => C, 
        External_Name => "execvp";

   function execlp (uu_file : Interfaces.C.Strings.chars_ptr; uu_arg : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/unistd.h:605
   with Import => True, 
        Convention => C, 
        External_Name => "execlp";

   function nice (uu_inc : int) return int  -- /usr/include/unistd.h:619
   with Import => True, 
        Convention => C, 
        External_Name => "nice";

   --  skipped func _exit

   function pathconf (uu_path : Interfaces.C.Strings.chars_ptr; uu_name : int) return long  -- /usr/include/unistd.h:633
   with Import => True, 
        Convention => C, 
        External_Name => "pathconf";

   function fpathconf (uu_fd : int; uu_name : int) return long  -- /usr/include/unistd.h:637
   with Import => True, 
        Convention => C, 
        External_Name => "fpathconf";

   function sysconf (uu_name : int) return long  -- /usr/include/unistd.h:640
   with Import => True, 
        Convention => C, 
        External_Name => "sysconf";

   function confstr
     (uu_name : int;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_len : WiringPI.stddef_h.size_t) return WiringPI.stddef_h.size_t  -- /usr/include/unistd.h:644
   with Import => True, 
        Convention => C, 
        External_Name => "confstr";

   function getpid return WiringPI.bits_types_h.uu_pid_t  -- /usr/include/unistd.h:650
   with Import => True, 
        Convention => C, 
        External_Name => "getpid";

   function getppid return WiringPI.bits_types_h.uu_pid_t  -- /usr/include/unistd.h:653
   with Import => True, 
        Convention => C, 
        External_Name => "getppid";

   function getpgrp return WiringPI.bits_types_h.uu_pid_t  -- /usr/include/unistd.h:656
   with Import => True, 
        Convention => C, 
        External_Name => "getpgrp";

   --  skipped func __getpgid

   function getpgid (uu_pid : WiringPI.bits_types_h.uu_pid_t) return WiringPI.bits_types_h.uu_pid_t  -- /usr/include/unistd.h:661
   with Import => True, 
        Convention => C, 
        External_Name => "getpgid";

   function setpgid (uu_pid : WiringPI.bits_types_h.uu_pid_t; uu_pgid : WiringPI.bits_types_h.uu_pid_t) return int  -- /usr/include/unistd.h:668
   with Import => True, 
        Convention => C, 
        External_Name => "setpgid";

   function setpgrp return int  -- /usr/include/unistd.h:682
   with Import => True, 
        Convention => C, 
        External_Name => "setpgrp";

   function setsid return WiringPI.bits_types_h.uu_pid_t  -- /usr/include/unistd.h:689
   with Import => True, 
        Convention => C, 
        External_Name => "setsid";

   function getsid (uu_pid : WiringPI.bits_types_h.uu_pid_t) return WiringPI.bits_types_h.uu_pid_t  -- /usr/include/unistd.h:693
   with Import => True, 
        Convention => C, 
        External_Name => "getsid";

   function getuid return WiringPI.bits_types_h.uu_uid_t  -- /usr/include/unistd.h:697
   with Import => True, 
        Convention => C, 
        External_Name => "getuid";

   function geteuid return WiringPI.bits_types_h.uu_uid_t  -- /usr/include/unistd.h:700
   with Import => True, 
        Convention => C, 
        External_Name => "geteuid";

   function getgid return WiringPI.bits_types_h.uu_gid_t  -- /usr/include/unistd.h:703
   with Import => True, 
        Convention => C, 
        External_Name => "getgid";

   function getegid return WiringPI.bits_types_h.uu_gid_t  -- /usr/include/unistd.h:706
   with Import => True, 
        Convention => C, 
        External_Name => "getegid";

   function getgroups (uu_size : int; uu_list : access WiringPI.bits_types_h.uu_gid_t) return int  -- /usr/include/unistd.h:711
   with Import => True, 
        Convention => C, 
        External_Name => "getgroups";

   function setuid (uu_uid : WiringPI.bits_types_h.uu_uid_t) return int  -- /usr/include/unistd.h:722
   with Import => True, 
        Convention => C, 
        External_Name => "setuid";

   function setreuid (uu_ruid : WiringPI.bits_types_h.uu_uid_t; uu_euid : WiringPI.bits_types_h.uu_uid_t) return int  -- /usr/include/unistd.h:727
   with Import => True, 
        Convention => C, 
        External_Name => "setreuid";

   function seteuid (uu_uid : WiringPI.bits_types_h.uu_uid_t) return int  -- /usr/include/unistd.h:732
   with Import => True, 
        Convention => C, 
        External_Name => "seteuid";

   function setgid (uu_gid : WiringPI.bits_types_h.uu_gid_t) return int  -- /usr/include/unistd.h:739
   with Import => True, 
        Convention => C, 
        External_Name => "setgid";

   function setregid (uu_rgid : WiringPI.bits_types_h.uu_gid_t; uu_egid : WiringPI.bits_types_h.uu_gid_t) return int  -- /usr/include/unistd.h:744
   with Import => True, 
        Convention => C, 
        External_Name => "setregid";

   function setegid (uu_gid : WiringPI.bits_types_h.uu_gid_t) return int  -- /usr/include/unistd.h:749
   with Import => True, 
        Convention => C, 
        External_Name => "setegid";

   function fork return WiringPI.bits_types_h.uu_pid_t  -- /usr/include/unistd.h:778
   with Import => True, 
        Convention => C, 
        External_Name => "fork";

   function vfork return WiringPI.bits_types_h.uu_pid_t  -- /usr/include/unistd.h:786
   with Import => True, 
        Convention => C, 
        External_Name => "vfork";

   function ttyname (uu_fd : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/unistd.h:799
   with Import => True, 
        Convention => C, 
        External_Name => "ttyname";

   function ttyname_r
     (uu_fd : int;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_buflen : WiringPI.stddef_h.size_t) return int  -- /usr/include/unistd.h:803
   with Import => True, 
        Convention => C, 
        External_Name => "ttyname_r";

   function isatty (uu_fd : int) return int  -- /usr/include/unistd.h:809
   with Import => True, 
        Convention => C, 
        External_Name => "isatty";

   function ttyslot return int  -- /usr/include/unistd.h:814
   with Import => True, 
        Convention => C, 
        External_Name => "ttyslot";

   function link (uu_from : Interfaces.C.Strings.chars_ptr; uu_to : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/unistd.h:819
   with Import => True, 
        Convention => C, 
        External_Name => "link";

   function linkat
     (uu_fromfd : int;
      uu_from : Interfaces.C.Strings.chars_ptr;
      uu_tofd : int;
      uu_to : Interfaces.C.Strings.chars_ptr;
      uu_flags : int) return int  -- /usr/include/unistd.h:825
   with Import => True, 
        Convention => C, 
        External_Name => "linkat";

   function symlink (uu_from : Interfaces.C.Strings.chars_ptr; uu_to : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/unistd.h:832
   with Import => True, 
        Convention => C, 
        External_Name => "symlink";

   function readlink
     (uu_path : Interfaces.C.Strings.chars_ptr;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_len : WiringPI.stddef_h.size_t) return WiringPI.stdio_h.ssize_t  -- /usr/include/unistd.h:838
   with Import => True, 
        Convention => C, 
        External_Name => "readlink";

   function symlinkat
     (uu_from : Interfaces.C.Strings.chars_ptr;
      uu_tofd : int;
      uu_to : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/unistd.h:847
   with Import => True, 
        Convention => C, 
        External_Name => "symlinkat";

   function readlinkat
     (uu_fd : int;
      uu_path : Interfaces.C.Strings.chars_ptr;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_len : WiringPI.stddef_h.size_t) return WiringPI.stdio_h.ssize_t  -- /usr/include/unistd.h:851
   with Import => True, 
        Convention => C, 
        External_Name => "readlinkat";

   function unlink (uu_name : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/unistd.h:858
   with Import => True, 
        Convention => C, 
        External_Name => "unlink";

   function unlinkat
     (uu_fd : int;
      uu_name : Interfaces.C.Strings.chars_ptr;
      uu_flag : int) return int  -- /usr/include/unistd.h:862
   with Import => True, 
        Convention => C, 
        External_Name => "unlinkat";

   function rmdir (uu_path : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/unistd.h:867
   with Import => True, 
        Convention => C, 
        External_Name => "rmdir";

   function tcgetpgrp (uu_fd : int) return WiringPI.bits_types_h.uu_pid_t  -- /usr/include/unistd.h:871
   with Import => True, 
        Convention => C, 
        External_Name => "tcgetpgrp";

   function tcsetpgrp (uu_fd : int; uu_pgrp_id : WiringPI.bits_types_h.uu_pid_t) return int  -- /usr/include/unistd.h:874
   with Import => True, 
        Convention => C, 
        External_Name => "tcsetpgrp";

   function getlogin return Interfaces.C.Strings.chars_ptr  -- /usr/include/unistd.h:881
   with Import => True, 
        Convention => C, 
        External_Name => "getlogin";

   function getlogin_r (uu_name : Interfaces.C.Strings.chars_ptr; uu_name_len : WiringPI.stddef_h.size_t) return int  -- /usr/include/unistd.h:889
   with Import => True, 
        Convention => C, 
        External_Name => "getlogin_r";

   function setlogin (uu_name : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/unistd.h:895
   with Import => True, 
        Convention => C, 
        External_Name => "setlogin";

   function gethostname (uu_name : Interfaces.C.Strings.chars_ptr; uu_len : WiringPI.stddef_h.size_t) return int  -- /usr/include/unistd.h:911
   with Import => True, 
        Convention => C, 
        External_Name => "gethostname";

   function sethostname (uu_name : Interfaces.C.Strings.chars_ptr; uu_len : WiringPI.stddef_h.size_t) return int  -- /usr/include/unistd.h:919
   with Import => True, 
        Convention => C, 
        External_Name => "sethostname";

   function sethostid (uu_id : long) return int  -- /usr/include/unistd.h:924
   with Import => True, 
        Convention => C, 
        External_Name => "sethostid";

   function getdomainname (uu_name : Interfaces.C.Strings.chars_ptr; uu_len : WiringPI.stddef_h.size_t) return int  -- /usr/include/unistd.h:930
   with Import => True, 
        Convention => C, 
        External_Name => "getdomainname";

   function setdomainname (uu_name : Interfaces.C.Strings.chars_ptr; uu_len : WiringPI.stddef_h.size_t) return int  -- /usr/include/unistd.h:933
   with Import => True, 
        Convention => C, 
        External_Name => "setdomainname";

   function vhangup return int  -- /usr/include/unistd.h:939
   with Import => True, 
        Convention => C, 
        External_Name => "vhangup";

   function revoke (uu_file : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/unistd.h:942
   with Import => True, 
        Convention => C, 
        External_Name => "revoke";

   function profil
     (uu_sample_buffer : access unsigned_short;
      uu_size : WiringPI.stddef_h.size_t;
      uu_offset : WiringPI.stddef_h.size_t;
      uu_scale : unsigned) return int  -- /usr/include/unistd.h:950
   with Import => True, 
        Convention => C, 
        External_Name => "profil";

   function acct (uu_name : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/unistd.h:958
   with Import => True, 
        Convention => C, 
        External_Name => "acct";

   function getusershell return Interfaces.C.Strings.chars_ptr  -- /usr/include/unistd.h:962
   with Import => True, 
        Convention => C, 
        External_Name => "getusershell";

   procedure endusershell  -- /usr/include/unistd.h:963
   with Import => True, 
        Convention => C, 
        External_Name => "endusershell";

   procedure setusershell  -- /usr/include/unistd.h:964
   with Import => True, 
        Convention => C, 
        External_Name => "setusershell";

   function daemon (uu_nochdir : int; uu_noclose : int) return int  -- /usr/include/unistd.h:970
   with Import => True, 
        Convention => C, 
        External_Name => "daemon";

   function chroot (uu_path : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/unistd.h:977
   with Import => True, 
        Convention => C, 
        External_Name => "chroot";

   function getpass (uu_prompt : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/unistd.h:981
   with Import => True, 
        Convention => C, 
        External_Name => "getpass";

   function fsync (uu_fd : int) return int  -- /usr/include/unistd.h:989
   with Import => True, 
        Convention => C, 
        External_Name => "fsync";

   function gethostid return long  -- /usr/include/unistd.h:1002
   with Import => True, 
        Convention => C, 
        External_Name => "gethostid";

   procedure sync  -- /usr/include/unistd.h:1005
   with Import => True, 
        Convention => C, 
        External_Name => "sync";

   function getpagesize return int  -- /usr/include/unistd.h:1011
   with Import => True, 
        Convention => C, 
        External_Name => "getpagesize";

   function getdtablesize return int  -- /usr/include/unistd.h:1016
   with Import => True, 
        Convention => C, 
        External_Name => "getdtablesize";

   function truncate (uu_file : Interfaces.C.Strings.chars_ptr; uu_length : WiringPI.bits_types_h.uu_off_t) return int  -- /usr/include/unistd.h:1026
   with Import => True, 
        Convention => C, 
        External_Name => "truncate";

   function ftruncate (uu_fd : int; uu_length : WiringPI.bits_types_h.uu_off_t) return int  -- /usr/include/unistd.h:1049
   with Import => True, 
        Convention => C, 
        External_Name => "ftruncate";

   function brk (uu_addr : System.Address) return int  -- /usr/include/unistd.h:1070
   with Import => True, 
        Convention => C, 
        External_Name => "brk";

   function sbrk (uu_delta : WiringPI.stdint_h.intptr_t) return System.Address  -- /usr/include/unistd.h:1076
   with Import => True, 
        Convention => C, 
        External_Name => "sbrk";

   function syscall (uu_sysno : long  -- , ...
      ) return long  -- /usr/include/unistd.h:1091
   with Import => True, 
        Convention => C, 
        External_Name => "syscall";

   function lockf
     (uu_fd : int;
      uu_cmd : int;
      uu_len : WiringPI.bits_types_h.uu_off_t) return int  -- /usr/include/unistd.h:1114
   with Import => True, 
        Convention => C, 
        External_Name => "lockf";

   function fdatasync (uu_fildes : int) return int  -- /usr/include/unistd.h:1150
   with Import => True, 
        Convention => C, 
        External_Name => "fdatasync";

   function crypt (uu_key : Interfaces.C.Strings.chars_ptr; uu_salt : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/unistd.h:1159
   with Import => True, 
        Convention => C, 
        External_Name => "crypt";

   function getentropy (uu_buffer : System.Address; uu_length : WiringPI.stddef_h.size_t) return int  -- /usr/include/unistd.h:1198
   with Import => True, 
        Convention => C, 
        External_Name => "getentropy";

end WiringPI.unistd_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
