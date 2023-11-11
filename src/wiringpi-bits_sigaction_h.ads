pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.signal_h;
limited with WiringPI.bits_types_siginfo_t_h;
with System;
with WiringPI.bits_types_u_sigset_t_h;

package WiringPI.bits_sigaction_h is

   --  unsupported macro: sa_handler __sigaction_handler.sa_handler
   --  unsupported macro: sa_sigaction __sigaction_handler.sa_sigaction
   SA_NOCLDSTOP : constant := 1;  --  /usr/include/bits/sigaction.h:56
   SA_NOCLDWAIT : constant := 2;  --  /usr/include/bits/sigaction.h:57
   SA_SIGINFO : constant := 4;  --  /usr/include/bits/sigaction.h:58

   SA_ONSTACK : constant := 16#08000000#;  --  /usr/include/bits/sigaction.h:61

   SA_RESTART : constant := 16#10000000#;  --  /usr/include/bits/sigaction.h:64
   SA_NODEFER : constant := 16#40000000#;  --  /usr/include/bits/sigaction.h:65

   SA_RESETHAND : constant := 16#80000000#;  --  /usr/include/bits/sigaction.h:67

   SA_INTERRUPT : constant := 16#20000000#;  --  /usr/include/bits/sigaction.h:70
   --  unsupported macro: SA_NOMASK SA_NODEFER
   --  unsupported macro: SA_ONESHOT SA_RESETHAND
   --  unsupported macro: SA_STACK SA_ONSTACK

   SIG_BLOCK : constant := 0;  --  /usr/include/bits/sigaction.h:79
   SIG_UNBLOCK : constant := 1;  --  /usr/include/bits/sigaction.h:80
   SIG_SETMASK : constant := 2;  --  /usr/include/bits/sigaction.h:81

   type anon_union2151 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            sa_handler : WiringPI.signal_h.uu_sighandler_t;  -- /usr/include/bits/sigaction.h:34
         when others =>
            sa_sigaction : access procedure
                 (arg1 : int;
                  arg2 : access WiringPI.bits_types_siginfo_t_h.siginfo_t;
                  arg3 : System.Address);  -- /usr/include/bits/sigaction.h:36
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type sigaction is record
      uu_sigaction_handler : aliased anon_union2151;  -- /usr/include/bits/sigaction.h:38
      sa_mask : aliased WiringPI.bits_types_u_sigset_t_h.uu_sigset_t;  -- /usr/include/bits/sigaction.h:46
      sa_flags : aliased int;  -- /usr/include/bits/sigaction.h:49
      sa_restorer : access procedure;  -- /usr/include/bits/sigaction.h:52
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/sigaction.h:27

end WiringPI.bits_sigaction_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
