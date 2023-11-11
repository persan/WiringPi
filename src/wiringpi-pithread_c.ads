pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_pthreadtypes_h;
with System;

package WiringPI.piThread_c is

   piMutexes : aliased array (0 .. 3) of aliased WiringPI.bits_pthreadtypes_h.pthread_mutex_t  -- piThread.c:29
   with Import => True, 
        Convention => C, 
        External_Name => "piMutexes";

   function piThreadCreate (fn : access function (arg1 : System.Address) return System.Address) return int  -- piThread.c:39
   with Import => True, 
        Convention => C, 
        External_Name => "piThreadCreate";

   procedure piLock (key : int)  -- piThread.c:54
   with Import => True, 
        Convention => C, 
        External_Name => "piLock";

   procedure piUnlock (key : int)  -- piThread.c:59
   with Import => True, 
        Convention => C, 
        External_Name => "piUnlock";

end WiringPI.piThread_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
