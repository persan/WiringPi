pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.stddef_h is

   --  unsupported macro: NULL ((void *)0)
   subtype size_t is unsigned_long;  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include/stddef.h:214

   subtype wchar_t is int;  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include/stddef.h:329

end WiringPI.stddef_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
