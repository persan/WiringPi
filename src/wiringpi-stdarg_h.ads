pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;

package WiringPI.stdarg_h is

   --  arg-macro: procedure va_start (v, l)
   --    __builtin_va_start(v,l)
   --  arg-macro: procedure va_end (v)
   --    __builtin_va_end(v)
   --  arg-macro: procedure va_arg (v, l)
   --    __builtin_va_arg(v,l)
   --  arg-macro: procedure va_copy (d, s)
   --    __builtin_va_copy(d,s)
   subtype uu_gnuc_va_list is System.Address;  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include/stdarg.h:40

end WiringPI.stdarg_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
