pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;
with WiringPI.bits_pthreadtypes_h;
with WiringPI.stddef_h;
limited with WiringPI.bits_types_struct_sched_param_h;
with WiringPI.bits_setjmp_h;
limited with WiringPI.bits_types_struct_timespec_h;
with WiringPI.bits_types_h;

package WiringPI.pthread_h is

   --  unsupported macro: PTHREAD_CREATE_JOINABLE PTHREAD_CREATE_JOINABLE
   --  unsupported macro: PTHREAD_CREATE_DETACHED PTHREAD_CREATE_DETACHED
   --  unsupported macro: PTHREAD_MUTEX_INITIALIZER { { __PTHREAD_MUTEX_INITIALIZER (PTHREAD_MUTEX_TIMED_NP) } }
   --  unsupported macro: PTHREAD_RWLOCK_INITIALIZER { { __PTHREAD_RWLOCK_INITIALIZER (PTHREAD_RWLOCK_DEFAULT_NP) } }
   --  unsupported macro: PTHREAD_INHERIT_SCHED PTHREAD_INHERIT_SCHED
   --  unsupported macro: PTHREAD_EXPLICIT_SCHED PTHREAD_EXPLICIT_SCHED
   --  unsupported macro: PTHREAD_SCOPE_SYSTEM PTHREAD_SCOPE_SYSTEM
   --  unsupported macro: PTHREAD_SCOPE_PROCESS PTHREAD_SCOPE_PROCESS
   --  unsupported macro: PTHREAD_PROCESS_PRIVATE PTHREAD_PROCESS_PRIVATE
   --  unsupported macro: PTHREAD_PROCESS_SHARED PTHREAD_PROCESS_SHARED
   --  unsupported macro: PTHREAD_COND_INITIALIZER { { {0}, {0}, {0, 0}, {0, 0}, 0, 0, {0, 0} } }
   --  unsupported macro: PTHREAD_CANCEL_ENABLE PTHREAD_CANCEL_ENABLE
   --  unsupported macro: PTHREAD_CANCEL_DISABLE PTHREAD_CANCEL_DISABLE
   --  unsupported macro: PTHREAD_CANCEL_DEFERRED PTHREAD_CANCEL_DEFERRED
   --  unsupported macro: PTHREAD_CANCEL_ASYNCHRONOUS PTHREAD_CANCEL_ASYNCHRONOUS
   --  unsupported macro: PTHREAD_CANCELED ((void *) -1)
   PTHREAD_ONCE_INIT : constant := 0;  --  /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:195

   PTHREAD_BARRIER_SERIAL_THREAD : constant := -1;  --  /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:202
   --  arg-macro: procedure pthread_cleanup_push (routine, arg)
   --    do { __pthread_unwind_buf_t __cancel_buf; void (*__cancel_routine) (void *) := (routine); void *__cancel_arg := (arg); int __not_first_call := __sigsetjmp_cancel (__cancel_buf.__cancel_jmp_buf, 0); if (__glibc_unlikely (__not_first_call)) { __cancel_routine (__cancel_arg); __pthread_unwind_next (and__cancel_buf); } __pthread_register_cancel (and__cancel_buf); do {
   --  arg-macro: procedure pthread_cleanup_pop (execute)
   --    do { } while (0); } while (0); __pthread_unregister_cancel (and__cancel_buf); if (execute) __cancel_routine (__cancel_arg); } while (0)

   type u_pthread_cleanup_buffer;
   type u_pthread_cleanup_buffer is record
      uu_routine : access procedure (arg1 : System.Address);  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:170
      uu_arg : System.Address;  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:171
      uu_canceltype : aliased int;  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:172
      uu_prev : access u_pthread_cleanup_buffer;  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:173
   end record
   with Convention => C_Pass_By_Copy;  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:168

   function pthread_create
     (uu_newthread : access WiringPI.bits_pthreadtypes_h.pthread_t;
      uu_attr : access constant WiringPI.bits_pthreadtypes_h.pthread_attr_t;
      uu_start_routine : access function (arg1 : System.Address) return System.Address;
      uu_arg : System.Address) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:211
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_create";

   procedure pthread_exit (uu_retval : System.Address)  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_exit";

   function pthread_join (uu_th : WiringPI.bits_pthreadtypes_h.pthread_t; uu_thread_return : System.Address) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_join";

   function pthread_detach (uu_th : WiringPI.bits_pthreadtypes_h.pthread_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:278
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_detach";

   function pthread_self return WiringPI.bits_pthreadtypes_h.pthread_t  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:282
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_self";

   function pthread_equal (uu_thread1 : WiringPI.bits_pthreadtypes_h.pthread_t; uu_thread2 : WiringPI.bits_pthreadtypes_h.pthread_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:285
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_equal";

   function pthread_attr_init (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_attr_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:294
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_init";

   function pthread_attr_destroy (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_attr_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_destroy";

   function pthread_attr_getdetachstate (uu_attr : access constant WiringPI.bits_pthreadtypes_h.pthread_attr_t; uu_detachstate : access int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:301
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_getdetachstate";

   function pthread_attr_setdetachstate (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_attr_t; uu_detachstate : int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:306
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_setdetachstate";

   function pthread_attr_getguardsize (uu_attr : access constant WiringPI.bits_pthreadtypes_h.pthread_attr_t; uu_guardsize : access WiringPI.stddef_h.size_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:312
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_getguardsize";

   function pthread_attr_setguardsize (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_attr_t; uu_guardsize : WiringPI.stddef_h.size_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:317
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_setguardsize";

   function pthread_attr_getschedparam (uu_attr : access constant WiringPI.bits_pthreadtypes_h.pthread_attr_t; uu_param : access WiringPI.bits_types_struct_sched_param_h.sched_param) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_getschedparam";

   function pthread_attr_setschedparam (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_attr_t; uu_param : access constant WiringPI.bits_types_struct_sched_param_h.sched_param) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:328
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_setschedparam";

   function pthread_attr_getschedpolicy (uu_attr : access constant WiringPI.bits_pthreadtypes_h.pthread_attr_t; uu_policy : access int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:333
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_getschedpolicy";

   function pthread_attr_setschedpolicy (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_attr_t; uu_policy : int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:338
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_setschedpolicy";

   function pthread_attr_getinheritsched (uu_attr : access constant WiringPI.bits_pthreadtypes_h.pthread_attr_t; uu_inherit : access int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:342
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_getinheritsched";

   function pthread_attr_setinheritsched (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_attr_t; uu_inherit : int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:347
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_setinheritsched";

   function pthread_attr_getscope (uu_attr : access constant WiringPI.bits_pthreadtypes_h.pthread_attr_t; uu_scope : access int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:353
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_getscope";

   function pthread_attr_setscope (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_attr_t; uu_scope : int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:358
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_setscope";

   function pthread_attr_getstackaddr (uu_attr : access constant WiringPI.bits_pthreadtypes_h.pthread_attr_t; uu_stackaddr : System.Address) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:362
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_getstackaddr";

   function pthread_attr_setstackaddr (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_attr_t; uu_stackaddr : System.Address) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:370
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_setstackaddr";

   function pthread_attr_getstacksize (uu_attr : access constant WiringPI.bits_pthreadtypes_h.pthread_attr_t; uu_stacksize : access WiringPI.stddef_h.size_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:375
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_getstacksize";

   function pthread_attr_setstacksize (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_attr_t; uu_stacksize : WiringPI.stddef_h.size_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:382
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_setstacksize";

   function pthread_attr_getstack
     (uu_attr : access constant WiringPI.bits_pthreadtypes_h.pthread_attr_t;
      uu_stackaddr : System.Address;
      uu_stacksize : access WiringPI.stddef_h.size_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:388
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_getstack";

   function pthread_attr_setstack
     (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_attr_t;
      uu_stackaddr : System.Address;
      uu_stacksize : WiringPI.stddef_h.size_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:396
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_setstack";

   function pthread_setschedparam
     (uu_target_thread : WiringPI.bits_pthreadtypes_h.pthread_t;
      uu_policy : int;
      uu_param : access constant WiringPI.bits_types_struct_sched_param_h.sched_param) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:450
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_setschedparam";

   function pthread_getschedparam
     (uu_target_thread : WiringPI.bits_pthreadtypes_h.pthread_t;
      uu_policy : access int;
      uu_param : access WiringPI.bits_types_struct_sched_param_h.sched_param) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:455
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_getschedparam";

   function pthread_setschedprio (uu_target_thread : WiringPI.bits_pthreadtypes_h.pthread_t; uu_prio : int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:461
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_setschedprio";

   function pthread_once (uu_once_control : access WiringPI.bits_pthreadtypes_h.pthread_once_t; uu_init_routine : access procedure) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:518
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_once";

   function pthread_setcancelstate (uu_state : int; uu_oldstate : access int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:530
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_setcancelstate";

   function pthread_setcanceltype (uu_type : int; uu_oldtype : access int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:534
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_setcanceltype";

   function pthread_cancel (uu_th : WiringPI.bits_pthreadtypes_h.pthread_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:537
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_cancel";

   procedure pthread_testcancel  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:542
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_testcancel";

   type uu_cancel_jmp_buf_tag is record
      uu_cancel_jmp_buf : aliased WiringPI.bits_setjmp_h.uu_jmp_buf;  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:549
      uu_mask_was_saved : aliased int;  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:550
   end record
   with Convention => C_Pass_By_Copy;  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:547

   type anon_array1847 is array (0 .. 0) of aliased uu_cancel_jmp_buf_tag;
   type anon_array1848 is array (0 .. 3) of System.Address;
   type uu_pthread_unwind_buf_t is record
      uu_cancel_jmp_buf : aliased anon_array1847;  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:555
      uu_pad : anon_array1848;  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:556
   end record
   with Convention => C_Pass_By_Copy;  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:557

   type uu_pthread_cleanup_frame is record
      uu_cancel_routine : access procedure (arg1 : System.Address);  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:568
      uu_cancel_arg : System.Address;  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:569
      uu_do_it : aliased int;  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:570
      uu_cancel_type : aliased int;  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:571
   end record
   with Convention => C_Pass_By_Copy;  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:566

   --  skipped func __pthread_register_cancel

   --  skipped func __pthread_unregister_cancel

   --  skipped func __pthread_unwind_next

   --  skipped func __sigsetjmp_cancel

   function pthread_mutex_init (uu_mutex : access WiringPI.bits_pthreadtypes_h.pthread_mutex_t; uu_mutexattr : access constant WiringPI.bits_pthreadtypes_h.pthread_mutexattr_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:790
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutex_init";

   function pthread_mutex_destroy (uu_mutex : access WiringPI.bits_pthreadtypes_h.pthread_mutex_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:795
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutex_destroy";

   function pthread_mutex_trylock (uu_mutex : access WiringPI.bits_pthreadtypes_h.pthread_mutex_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:799
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutex_trylock";

   function pthread_mutex_lock (uu_mutex : access WiringPI.bits_pthreadtypes_h.pthread_mutex_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:803
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutex_lock";

   function pthread_mutex_timedlock (uu_mutex : access WiringPI.bits_pthreadtypes_h.pthread_mutex_t; uu_abstime : access constant WiringPI.bits_types_struct_timespec_h.timespec) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:809
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutex_timedlock";

   function pthread_mutex_unlock (uu_mutex : access WiringPI.bits_pthreadtypes_h.pthread_mutex_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:844
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutex_unlock";

   function pthread_mutex_getprioceiling (uu_mutex : access constant WiringPI.bits_pthreadtypes_h.pthread_mutex_t; uu_prioceiling : access int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:849
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutex_getprioceiling";

   function pthread_mutex_setprioceiling
     (uu_mutex : access WiringPI.bits_pthreadtypes_h.pthread_mutex_t;
      uu_prioceiling : int;
      uu_old_ceiling : access int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:856
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutex_setprioceiling";

   function pthread_mutex_consistent (uu_mutex : access WiringPI.bits_pthreadtypes_h.pthread_mutex_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:864
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutex_consistent";

   function pthread_mutexattr_init (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_mutexattr_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:883
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutexattr_init";

   function pthread_mutexattr_destroy (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_mutexattr_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:887
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutexattr_destroy";

   function pthread_mutexattr_getpshared (uu_attr : access constant WiringPI.bits_pthreadtypes_h.pthread_mutexattr_t; uu_pshared : access int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:891
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutexattr_getpshared";

   function pthread_mutexattr_setpshared (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_mutexattr_t; uu_pshared : int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:897
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutexattr_setpshared";

   function pthread_mutexattr_gettype (uu_attr : access constant WiringPI.bits_pthreadtypes_h.pthread_mutexattr_t; uu_kind : access int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:903
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutexattr_gettype";

   function pthread_mutexattr_settype (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_mutexattr_t; uu_kind : int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:910
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutexattr_settype";

   function pthread_mutexattr_getprotocol (uu_attr : access constant WiringPI.bits_pthreadtypes_h.pthread_mutexattr_t; uu_protocol : access int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:915
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutexattr_getprotocol";

   function pthread_mutexattr_setprotocol (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_mutexattr_t; uu_protocol : int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:922
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutexattr_setprotocol";

   function pthread_mutexattr_getprioceiling (uu_attr : access constant WiringPI.bits_pthreadtypes_h.pthread_mutexattr_t; uu_prioceiling : access int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:927
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutexattr_getprioceiling";

   function pthread_mutexattr_setprioceiling (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_mutexattr_t; uu_prioceiling : int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:933
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutexattr_setprioceiling";

   function pthread_mutexattr_getrobust (uu_attr : access constant WiringPI.bits_pthreadtypes_h.pthread_mutexattr_t; uu_robustness : access int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:939
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutexattr_getrobust";

   function pthread_mutexattr_setrobust (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_mutexattr_t; uu_robustness : int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:955
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutexattr_setrobust";

   function pthread_rwlock_init (uu_rwlock : access WiringPI.bits_pthreadtypes_h.pthread_rwlock_t; uu_attr : access constant WiringPI.bits_pthreadtypes_h.pthread_rwlockattr_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:976
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlock_init";

   function pthread_rwlock_destroy (uu_rwlock : access WiringPI.bits_pthreadtypes_h.pthread_rwlock_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:981
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlock_destroy";

   function pthread_rwlock_rdlock (uu_rwlock : access WiringPI.bits_pthreadtypes_h.pthread_rwlock_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:985
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlock_rdlock";

   function pthread_rwlock_tryrdlock (uu_rwlock : access WiringPI.bits_pthreadtypes_h.pthread_rwlock_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:989
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlock_tryrdlock";

   function pthread_rwlock_timedrdlock (uu_rwlock : access WiringPI.bits_pthreadtypes_h.pthread_rwlock_t; uu_abstime : access constant WiringPI.bits_types_struct_timespec_h.timespec) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:995
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlock_timedrdlock";

   function pthread_rwlock_wrlock (uu_rwlock : access WiringPI.bits_pthreadtypes_h.pthread_rwlock_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1032
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlock_wrlock";

   function pthread_rwlock_trywrlock (uu_rwlock : access WiringPI.bits_pthreadtypes_h.pthread_rwlock_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1036
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlock_trywrlock";

   function pthread_rwlock_timedwrlock (uu_rwlock : access WiringPI.bits_pthreadtypes_h.pthread_rwlock_t; uu_abstime : access constant WiringPI.bits_types_struct_timespec_h.timespec) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1042
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlock_timedwrlock";

   function pthread_rwlock_unlock (uu_rwlock : access WiringPI.bits_pthreadtypes_h.pthread_rwlock_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1080
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlock_unlock";

   function pthread_rwlockattr_init (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_rwlockattr_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1087
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlockattr_init";

   function pthread_rwlockattr_destroy (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_rwlockattr_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1091
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlockattr_destroy";

   function pthread_rwlockattr_getpshared (uu_attr : access constant WiringPI.bits_pthreadtypes_h.pthread_rwlockattr_t; uu_pshared : access int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1095
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlockattr_getpshared";

   function pthread_rwlockattr_setpshared (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_rwlockattr_t; uu_pshared : int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1101
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlockattr_setpshared";

   function pthread_rwlockattr_getkind_np (uu_attr : access constant WiringPI.bits_pthreadtypes_h.pthread_rwlockattr_t; uu_pref : access int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1106
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlockattr_getkind_np";

   function pthread_rwlockattr_setkind_np (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_rwlockattr_t; uu_pref : int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1112
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlockattr_setkind_np";

   function pthread_cond_init (uu_cond : access WiringPI.bits_pthreadtypes_h.pthread_cond_t; uu_cond_attr : access constant WiringPI.bits_pthreadtypes_h.pthread_condattr_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1121
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_cond_init";

   function pthread_cond_destroy (uu_cond : access WiringPI.bits_pthreadtypes_h.pthread_cond_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1126
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_cond_destroy";

   function pthread_cond_signal (uu_cond : access WiringPI.bits_pthreadtypes_h.pthread_cond_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1130
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_cond_signal";

   function pthread_cond_broadcast (uu_cond : access WiringPI.bits_pthreadtypes_h.pthread_cond_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1134
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_cond_broadcast";

   function pthread_cond_wait (uu_cond : access WiringPI.bits_pthreadtypes_h.pthread_cond_t; uu_mutex : access WiringPI.bits_pthreadtypes_h.pthread_mutex_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1142
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_cond_wait";

   function pthread_cond_timedwait
     (uu_cond : access WiringPI.bits_pthreadtypes_h.pthread_cond_t;
      uu_mutex : access WiringPI.bits_pthreadtypes_h.pthread_mutex_t;
      uu_abstime : access constant WiringPI.bits_types_struct_timespec_h.timespec) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1154
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_cond_timedwait";

   function pthread_condattr_init (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_condattr_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1203
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_condattr_init";

   function pthread_condattr_destroy (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_condattr_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1207
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_condattr_destroy";

   function pthread_condattr_getpshared (uu_attr : access constant WiringPI.bits_pthreadtypes_h.pthread_condattr_t; uu_pshared : access int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1211
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_condattr_getpshared";

   function pthread_condattr_setpshared (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_condattr_t; uu_pshared : int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1217
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_condattr_setpshared";

   function pthread_condattr_getclock (uu_attr : access constant WiringPI.bits_pthreadtypes_h.pthread_condattr_t; uu_clock_id : access WiringPI.bits_types_h.uu_clockid_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1222
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_condattr_getclock";

   function pthread_condattr_setclock (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_condattr_t; uu_clock_id : WiringPI.bits_types_h.uu_clockid_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1228
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_condattr_setclock";

   function pthread_spin_init (uu_lock : access WiringPI.bits_pthreadtypes_h.pthread_spinlock_t; uu_pshared : int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1239
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_spin_init";

   function pthread_spin_destroy (uu_lock : access WiringPI.bits_pthreadtypes_h.pthread_spinlock_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1243
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_spin_destroy";

   function pthread_spin_lock (uu_lock : access WiringPI.bits_pthreadtypes_h.pthread_spinlock_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1247
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_spin_lock";

   function pthread_spin_trylock (uu_lock : access WiringPI.bits_pthreadtypes_h.pthread_spinlock_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1251
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_spin_trylock";

   function pthread_spin_unlock (uu_lock : access WiringPI.bits_pthreadtypes_h.pthread_spinlock_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1255
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_spin_unlock";

   function pthread_barrier_init
     (uu_barrier : access WiringPI.bits_pthreadtypes_h.pthread_barrier_t;
      uu_attr : access constant WiringPI.bits_pthreadtypes_h.pthread_barrierattr_t;
      uu_count : unsigned) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1263
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_barrier_init";

   function pthread_barrier_destroy (uu_barrier : access WiringPI.bits_pthreadtypes_h.pthread_barrier_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1269
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_barrier_destroy";

   function pthread_barrier_wait (uu_barrier : access WiringPI.bits_pthreadtypes_h.pthread_barrier_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1273
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_barrier_wait";

   function pthread_barrierattr_init (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_barrierattr_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1278
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_barrierattr_init";

   function pthread_barrierattr_destroy (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_barrierattr_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1282
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_barrierattr_destroy";

   function pthread_barrierattr_getpshared (uu_attr : access constant WiringPI.bits_pthreadtypes_h.pthread_barrierattr_t; uu_pshared : access int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1286
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_barrierattr_getpshared";

   function pthread_barrierattr_setpshared (uu_attr : access WiringPI.bits_pthreadtypes_h.pthread_barrierattr_t; uu_pshared : int) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1292
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_barrierattr_setpshared";

   function pthread_key_create (uu_key : access WiringPI.bits_pthreadtypes_h.pthread_key_t; uu_destr_function : access procedure (arg1 : System.Address)) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1306
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_key_create";

   function pthread_key_delete (uu_key : WiringPI.bits_pthreadtypes_h.pthread_key_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1311
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_key_delete";

   function pthread_getspecific (uu_key : WiringPI.bits_pthreadtypes_h.pthread_key_t) return System.Address  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1314
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_getspecific";

   function pthread_setspecific (uu_key : WiringPI.bits_pthreadtypes_h.pthread_key_t; uu_pointer : System.Address) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1317
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_setspecific";

   function pthread_getcpuclockid (uu_thread_id : WiringPI.bits_pthreadtypes_h.pthread_t; uu_clock_id : access WiringPI.bits_types_h.uu_clockid_t) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1324
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_getcpuclockid";

   function pthread_atfork
     (uu_prepare : access procedure;
      uu_parent : access procedure;
      uu_child : access procedure) return int  -- /home/gnatpro-24.0/lib/gcc/x86_64-pc-linux-gnu/12.3.1/include-fixed/pthread.h:1341
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_atfork";

end WiringPI.pthread_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
