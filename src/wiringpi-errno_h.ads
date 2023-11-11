pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.errno_h is

   --  unsupported macro: errno (*__errno_location ())
   --  skipped func __errno_location

end WiringPI.errno_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
