pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_types_h;
with Interfaces.C.Strings;
limited with WiringPI.bits_types_siginfo_t_h;
limited with WiringPI.bits_types_u_sigset_t_h;
limited with WiringPI.bits_sigaction_h;
limited with WiringPI.bits_types_struct_timespec_h;
with WiringPI.bits_types_u_sigval_t_h;
limited with WiringPI.bits_sigcontext_h;
limited with WiringPI.bits_types_stack_t_h;
limited with WiringPI.bits_types_struct_sigstack_h;

package WiringPI.signal_h is

   --  arg-macro: procedure sigmask (sig)
   --    __glibc_macro_warning ("sigmask is deprecated") ((int)(2 ** ((sig) - 1)))
   --  unsupported macro: NSIG _NSIG
   --  unsupported macro: SIGRTMIN (__libc_current_sigrtmin ())
   --  unsupported macro: SIGRTMAX (__libc_current_sigrtmax ())
   type uu_sighandler_t is access procedure (arg1 : int)
   with Convention => C;  -- /usr/include/signal.h:72

   --  skipped func __sysv_signal

   function signal (uu_sig : int; uu_handler : uu_sighandler_t) return uu_sighandler_t  -- /usr/include/signal.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "signal";

   function kill (uu_pid : WiringPI.bits_types_h.uu_pid_t; uu_sig : int) return int  -- /usr/include/signal.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "kill";

   function killpg (uu_pgrp : WiringPI.bits_types_h.uu_pid_t; uu_sig : int) return int  -- /usr/include/signal.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "killpg";

   function c_raise (uu_sig : int) return int  -- /usr/include/signal.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "raise";

   function ssignal (uu_sig : int; uu_handler : uu_sighandler_t) return uu_sighandler_t  -- /usr/include/signal.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "ssignal";

   function gsignal (uu_sig : int) return int  -- /usr/include/signal.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsignal";

   procedure psignal (uu_sig : int; uu_s : Interfaces.C.Strings.chars_ptr)  -- /usr/include/signal.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "psignal";

   procedure psiginfo (uu_pinfo : access constant WiringPI.bits_types_siginfo_t_h.siginfo_t; uu_s : Interfaces.C.Strings.chars_ptr)  -- /usr/include/signal.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "psiginfo";

   function sigblock (uu_mask : int) return int  -- /usr/include/signal.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "sigblock";

   function sigsetmask (uu_mask : int) return int  -- /usr/include/signal.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "sigsetmask";

   function siggetmask return int  -- /usr/include/signal.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "siggetmask";

   subtype sig_t is uu_sighandler_t;  -- /usr/include/signal.h:193

   function sigemptyset (uu_set : access WiringPI.bits_types_u_sigset_t_h.uu_sigset_t) return int  -- /usr/include/signal.h:199
   with Import => True, 
        Convention => C, 
        External_Name => "sigemptyset";

   function sigfillset (uu_set : access WiringPI.bits_types_u_sigset_t_h.uu_sigset_t) return int  -- /usr/include/signal.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "sigfillset";

   function sigaddset (uu_set : access WiringPI.bits_types_u_sigset_t_h.uu_sigset_t; uu_signo : int) return int  -- /usr/include/signal.h:205
   with Import => True, 
        Convention => C, 
        External_Name => "sigaddset";

   function sigdelset (uu_set : access WiringPI.bits_types_u_sigset_t_h.uu_sigset_t; uu_signo : int) return int  -- /usr/include/signal.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "sigdelset";

   function sigismember (uu_set : access constant WiringPI.bits_types_u_sigset_t_h.uu_sigset_t; uu_signo : int) return int  -- /usr/include/signal.h:211
   with Import => True, 
        Convention => C, 
        External_Name => "sigismember";

   function sigprocmask
     (uu_how : int;
      uu_set : access constant WiringPI.bits_types_u_sigset_t_h.uu_sigset_t;
      uu_oset : access WiringPI.bits_types_u_sigset_t_h.uu_sigset_t) return int  -- /usr/include/signal.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "sigprocmask";

   function sigsuspend (uu_set : access constant WiringPI.bits_types_u_sigset_t_h.uu_sigset_t) return int  -- /usr/include/signal.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "sigsuspend";

   function sigaction2
     (uu_sig : int;
      uu_act : access constant WiringPI.bits_sigaction_h.sigaction;
      uu_oact : access WiringPI.bits_sigaction_h.sigaction) return int  -- /usr/include/signal.h:243
   with Import => True, 
        Convention => C, 
        External_Name => "sigaction";

   function sigpending (uu_set : access WiringPI.bits_types_u_sigset_t_h.uu_sigset_t) return int  -- /usr/include/signal.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "sigpending";

   function sigwait (uu_set : access constant WiringPI.bits_types_u_sigset_t_h.uu_sigset_t; uu_sig : access int) return int  -- /usr/include/signal.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "sigwait";

   function sigwaitinfo (uu_set : access constant WiringPI.bits_types_u_sigset_t_h.uu_sigset_t; uu_info : access WiringPI.bits_types_siginfo_t_h.siginfo_t) return int  -- /usr/include/signal.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "sigwaitinfo";

   function sigtimedwait
     (uu_set : access constant WiringPI.bits_types_u_sigset_t_h.uu_sigset_t;
      uu_info : access WiringPI.bits_types_siginfo_t_h.siginfo_t;
      uu_timeout : access constant WiringPI.bits_types_struct_timespec_h.timespec) return int  -- /usr/include/signal.h:273
   with Import => True, 
        Convention => C, 
        External_Name => "sigtimedwait";

   function sigqueue
     (uu_pid : WiringPI.bits_types_h.uu_pid_t;
      uu_sig : int;
      uu_val : WiringPI.bits_types_u_sigval_t_h.sigval) return int  -- /usr/include/signal.h:292
   with Import => True, 
        Convention => C, 
        External_Name => "sigqueue";

   function sigreturn (uu_scp : access WiringPI.bits_sigcontext_h.sigcontext) return int  -- /usr/include/signal.h:304
   with Import => True, 
        Convention => C, 
        External_Name => "sigreturn";

   function siginterrupt (uu_sig : int; uu_interrupt : int) return int  -- /usr/include/signal.h:324
   with Import => True, 
        Convention => C, 
        External_Name => "siginterrupt";

   function sigaltstack (uu_ss : access constant WiringPI.bits_types_stack_t_h.stack_t; uu_oss : access WiringPI.bits_types_stack_t_h.stack_t) return int  -- /usr/include/signal.h:333
   with Import => True, 
        Convention => C, 
        External_Name => "sigaltstack";

   function sigstack (uu_ss : access WiringPI.bits_types_struct_sigstack_h.sigstack; uu_oss : access WiringPI.bits_types_struct_sigstack_h.sigstack) return int  -- /usr/include/signal.h:347
   with Import => True, 
        Convention => C, 
        External_Name => "sigstack";

   --  skipped func __libc_current_sigrtmin

   --  skipped func __libc_current_sigrtmax

end WiringPI.signal_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
