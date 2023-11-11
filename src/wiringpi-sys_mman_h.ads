pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;
with WiringPI.stddef_h;
with WiringPI.bits_types_h;
with Interfaces.C.Strings;
with WiringPI.sys_types_h;

package WiringPI.sys_mman_h is

   --  unsupported macro: MAP_FAILED ((void *) -1)
   function mmap
     (uu_addr : System.Address;
      uu_len : WiringPI.stddef_h.size_t;
      uu_prot : int;
      uu_flags : int;
      uu_fd : int;
      uu_offset : WiringPI.bits_types_h.uu_off_t) return System.Address  -- /usr/include/sys/mman.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "mmap";

   function munmap (uu_addr : System.Address; uu_len : WiringPI.stddef_h.size_t) return int  -- /usr/include/sys/mman.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "munmap";

   function mprotect
     (uu_addr : System.Address;
      uu_len : WiringPI.stddef_h.size_t;
      uu_prot : int) return int  -- /usr/include/sys/mman.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "mprotect";

   function msync
     (uu_addr : System.Address;
      uu_len : WiringPI.stddef_h.size_t;
      uu_flags : int) return int  -- /usr/include/sys/mman.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "msync";

   function madvise
     (uu_addr : System.Address;
      uu_len : WiringPI.stddef_h.size_t;
      uu_advice : int) return int  -- /usr/include/sys/mman.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "madvise";

   function posix_madvise
     (uu_addr : System.Address;
      uu_len : WiringPI.stddef_h.size_t;
      uu_advice : int) return int  -- /usr/include/sys/mman.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "posix_madvise";

   function mlock (uu_addr : System.Address; uu_len : WiringPI.stddef_h.size_t) return int  -- /usr/include/sys/mman.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "mlock";

   function munlock (uu_addr : System.Address; uu_len : WiringPI.stddef_h.size_t) return int  -- /usr/include/sys/mman.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "munlock";

   function mlockall (uu_flags : int) return int  -- /usr/include/sys/mman.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "mlockall";

   function munlockall return int  -- /usr/include/sys/mman.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "munlockall";

   function mincore
     (uu_start : System.Address;
      uu_len : WiringPI.stddef_h.size_t;
      uu_vec : access unsigned_char) return int  -- /usr/include/sys/mman.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "mincore";

   function shm_open
     (uu_name : Interfaces.C.Strings.chars_ptr;
      uu_oflag : int;
      uu_mode : WiringPI.sys_types_h.mode_t) return int  -- /usr/include/sys/mman.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "shm_open";

   function shm_unlink (uu_name : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/sys/mman.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "shm_unlink";

end WiringPI.sys_mman_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
