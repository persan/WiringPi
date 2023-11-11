pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.piHiPri_c is

   function piHiPri (pri : int) return int  -- piHiPri.c:39
   with Import => True, 
        Convention => C, 
        External_Name => "piHiPri";

end WiringPI.piHiPri_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
