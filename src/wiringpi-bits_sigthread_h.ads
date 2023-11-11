pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with WiringPI.bits_types_u_sigset_t_h;
with WiringPI.bits_pthreadtypes_h;

package WiringPI.bits_sigthread_h is

   function pthread_sigmask
     (uu_how : int;
      uu_newmask : access constant WiringPI.bits_types_u_sigset_t_h.uu_sigset_t;
      uu_oldmask : access WiringPI.bits_types_u_sigset_t_h.uu_sigset_t) return int  -- /usr/include/bits/sigthread.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_sigmask";

   function pthread_kill (uu_threadid : WiringPI.bits_pthreadtypes_h.pthread_t; uu_signo : int) return int  -- /usr/include/bits/sigthread.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_kill";

end WiringPI.bits_sigthread_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
