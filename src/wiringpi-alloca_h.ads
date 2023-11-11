pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.stddef_h;
with System;

package WiringPI.alloca_h is

   --  arg-macro: procedure alloca (size)
   --    __builtin_alloca (size)
   function alloca (uu_size : WiringPI.stddef_h.size_t) return System.Address  -- /usr/include/alloca.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "alloca";

end WiringPI.alloca_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
