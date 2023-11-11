pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.bits_cpu_set_h is

   subtype uu_cpu_mask is unsigned_long;  -- /usr/include/bits/cpu-set.h:32

   type anon_array1730 is array (0 .. 15) of aliased uu_cpu_mask;
   type cpu_set_t is record
      uu_bits : aliased anon_array1730;  -- /usr/include/bits/cpu-set.h:41
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/cpu-set.h:42

   --  skipped func __sched_cpucount

   --  skipped func __sched_cpualloc

   --  skipped func __sched_cpufree

end WiringPI.bits_cpu_set_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
