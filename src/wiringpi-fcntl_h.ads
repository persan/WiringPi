pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with WiringPI.sys_types_h;
with WiringPI.stdio_h;

package WiringPI.fcntl_h is

   --  unsupported macro: S_IFMT __S_IFMT
   --  unsupported macro: S_IFDIR __S_IFDIR
   --  unsupported macro: S_IFCHR __S_IFCHR
   --  unsupported macro: S_IFBLK __S_IFBLK
   --  unsupported macro: S_IFREG __S_IFREG
   --  unsupported macro: S_IFIFO __S_IFIFO
   --  unsupported macro: S_IFLNK __S_IFLNK
   --  unsupported macro: S_IFSOCK __S_IFSOCK
   --  unsupported macro: S_ISUID __S_ISUID
   --  unsupported macro: S_ISGID __S_ISGID
   --  unsupported macro: S_ISVTX __S_ISVTX
   --  unsupported macro: S_IRUSR __S_IREAD
   --  unsupported macro: S_IWUSR __S_IWRITE
   --  unsupported macro: S_IXUSR __S_IEXEC
   --  unsupported macro: S_IRWXU (__S_IREAD|__S_IWRITE|__S_IEXEC)
   --  unsupported macro: S_IRGRP (S_IRUSR >> 3)
   --  unsupported macro: S_IWGRP (S_IWUSR >> 3)
   --  unsupported macro: S_IXGRP (S_IXUSR >> 3)
   --  unsupported macro: S_IRWXG (S_IRWXU >> 3)
   --  unsupported macro: S_IROTH (S_IRGRP >> 3)
   --  unsupported macro: S_IWOTH (S_IWGRP >> 3)
   --  unsupported macro: S_IXOTH (S_IXGRP >> 3)
   --  unsupported macro: S_IRWXO (S_IRWXG >> 3)
   SEEK_SET : constant := 0;  --  /usr/include/fcntl.h:137
   SEEK_CUR : constant := 1;  --  /usr/include/fcntl.h:138
   SEEK_END : constant := 2;  --  /usr/include/fcntl.h:139

   AT_FDCWD : constant := -100;  --  /usr/include/fcntl.h:149

   AT_SYMLINK_NOFOLLOW : constant := 16#100#;  --  /usr/include/fcntl.h:152
   AT_REMOVEDIR : constant := 16#200#;  --  /usr/include/fcntl.h:153

   AT_SYMLINK_FOLLOW : constant := 16#400#;  --  /usr/include/fcntl.h:155

   AT_EACCESS : constant := 16#200#;  --  /usr/include/fcntl.h:166

   function fcntl (uu_fd : int; uu_cmd : int  -- , ...
      ) return int  -- /usr/include/fcntl.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "fcntl";

   function open (uu_file : Interfaces.C.Strings.chars_ptr; uu_oflag : int  -- , ...
      ) return int  -- /usr/include/fcntl.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "open";

   function openat
     (uu_fd : int;
      uu_file : Interfaces.C.Strings.chars_ptr;
      uu_oflag : int  -- , ...
      ) return int  -- /usr/include/fcntl.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "openat";

   function creat (uu_file : Interfaces.C.Strings.chars_ptr; uu_mode : WiringPI.sys_types_h.mode_t) return int  -- /usr/include/fcntl.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "creat";

   function posix_fadvise
     (uu_fd : int;
      uu_offset : WiringPI.stdio_h.off_t;
      uu_len : WiringPI.stdio_h.off_t;
      uu_advise : int) return int  -- /usr/include/fcntl.h:301
   with Import => True, 
        Convention => C, 
        External_Name => "posix_fadvise";

   function posix_fallocate
     (uu_fd : int;
      uu_offset : WiringPI.stdio_h.off_t;
      uu_len : WiringPI.stdio_h.off_t) return int  -- /usr/include/fcntl.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "posix_fallocate";

end WiringPI.fcntl_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
