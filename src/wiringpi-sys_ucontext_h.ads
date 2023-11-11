pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_types_h;
with Interfaces.C.Extensions;
with WiringPI.bits_types_stack_t_h;
with WiringPI.bits_types_sigset_t_h;

package WiringPI.sys_ucontext_h is

   --  unsupported macro: NGREG __NGREG
   subtype greg_t is Long_Long_Integer;  -- /usr/include/sys/ucontext.h:37

   type gregset_t is array (0 .. 22) of aliased greg_t;  -- /usr/include/sys/ucontext.h:46

   type anon_array2190 is array (0 .. 3) of aliased unsigned_short;
   type anon_array1283 is array (0 .. 2) of aliased unsigned_short;
   type u_libc_fpxreg is record
      significand : aliased anon_array2190;  -- /usr/include/sys/ucontext.h:103
      exponent : aliased unsigned_short;  -- /usr/include/sys/ucontext.h:104
      uu_glibc_reserved1 : aliased anon_array1283;  -- /usr/include/sys/ucontext.h:105
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/sys/ucontext.h:101

   type anon_array2193 is array (0 .. 3) of aliased WiringPI.bits_types_h.uu_uint32_t;
   type u_libc_xmmreg is record
      element : aliased anon_array2193;  -- /usr/include/sys/ucontext.h:110
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/sys/ucontext.h:108

   type anon_array2229 is array (0 .. 7) of aliased u_libc_fpxreg;
   type anon_array2230 is array (0 .. 15) of aliased u_libc_xmmreg;
   type anon_array2199 is array (0 .. 23) of aliased WiringPI.bits_types_h.uu_uint32_t;
   type u_libc_fpstate is record
      cwd : aliased WiringPI.bits_types_h.uu_uint16_t;  -- /usr/include/sys/ucontext.h:116
      swd : aliased WiringPI.bits_types_h.uu_uint16_t;  -- /usr/include/sys/ucontext.h:117
      ftw : aliased WiringPI.bits_types_h.uu_uint16_t;  -- /usr/include/sys/ucontext.h:118
      fop : aliased WiringPI.bits_types_h.uu_uint16_t;  -- /usr/include/sys/ucontext.h:119
      rip : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/sys/ucontext.h:120
      rdp : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/sys/ucontext.h:121
      mxcsr : aliased WiringPI.bits_types_h.uu_uint32_t;  -- /usr/include/sys/ucontext.h:122
      mxcr_mask : aliased WiringPI.bits_types_h.uu_uint32_t;  -- /usr/include/sys/ucontext.h:123
      u_st : aliased anon_array2229;  -- /usr/include/sys/ucontext.h:124
      u_xmm : aliased anon_array2230;  -- /usr/include/sys/ucontext.h:125
      uu_glibc_reserved1 : aliased anon_array2199;  -- /usr/include/sys/ucontext.h:126
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/sys/ucontext.h:113

   type fpregset_t is access all u_libc_fpstate;  -- /usr/include/sys/ucontext.h:130

   type anon_array2234 is array (0 .. 7) of aliased Extensions.unsigned_long_long;
   type mcontext_t is record
      gregs : aliased gregset_t;  -- /usr/include/sys/ucontext.h:135
      fpregs : fpregset_t;  -- /usr/include/sys/ucontext.h:137
      uu_reserved1 : aliased anon_array2234;  -- /usr/include/sys/ucontext.h:138
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/sys/ucontext.h:139

   type ucontext_t;
   type anon_array2238 is array (0 .. 3) of aliased Extensions.unsigned_long_long;
   type ucontext_t is record
      uc_flags : aliased unsigned_long;  -- /usr/include/sys/ucontext.h:144
      uc_link : access ucontext_t;  -- /usr/include/sys/ucontext.h:145
      uc_stack : aliased WiringPI.bits_types_stack_t_h.stack_t;  -- /usr/include/sys/ucontext.h:146
      uc_mcontext : aliased mcontext_t;  -- /usr/include/sys/ucontext.h:147
      uc_sigmask : aliased WiringPI.bits_types_sigset_t_h.sigset_t;  -- /usr/include/sys/ucontext.h:148
      uu_fpregs_mem : aliased u_libc_fpstate;  -- /usr/include/sys/ucontext.h:149
      uu_ssp : aliased anon_array2238;  -- /usr/include/sys/ucontext.h:150
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/sys/ucontext.h:142

end WiringPI.sys_ucontext_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
