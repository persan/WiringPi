pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_types_h;

package WiringPI.bits_sigcontext_h is

   FP_XSTATE_MAGIC1 : constant := 16#46505853#;  --  /usr/include/bits/sigcontext.h:27
   FP_XSTATE_MAGIC2 : constant := 16#46505845#;  --  /usr/include/bits/sigcontext.h:28
   --  unsupported macro: FP_XSTATE_MAGIC2_SIZE sizeof (FP_XSTATE_MAGIC2)

   type anon_array2187 is array (0 .. 6) of aliased WiringPI.bits_types_h.uu_uint32_t;
   type u_fpx_sw_bytes is record
      magic1 : aliased WiringPI.bits_types_h.uu_uint32_t;  -- /usr/include/bits/sigcontext.h:33
      extended_size : aliased WiringPI.bits_types_h.uu_uint32_t;  -- /usr/include/bits/sigcontext.h:34
      xstate_bv : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:35
      xstate_size : aliased WiringPI.bits_types_h.uu_uint32_t;  -- /usr/include/bits/sigcontext.h:36
      uu_glibc_reserved1 : aliased anon_array2187;  -- /usr/include/bits/sigcontext.h:37
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/sigcontext.h:31

   type anon_array2190 is array (0 .. 3) of aliased unsigned_short;
   type u_fpreg is record
      significand : aliased anon_array2190;  -- /usr/include/bits/sigcontext.h:42
      exponent : aliased unsigned_short;  -- /usr/include/bits/sigcontext.h:43
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/sigcontext.h:40

   type anon_array1283 is array (0 .. 2) of aliased unsigned_short;
   type u_fpxreg is record
      significand : aliased anon_array2190;  -- /usr/include/bits/sigcontext.h:48
      exponent : aliased unsigned_short;  -- /usr/include/bits/sigcontext.h:49
      uu_glibc_reserved1 : aliased anon_array1283;  -- /usr/include/bits/sigcontext.h:50
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/sigcontext.h:46

   type anon_array2193 is array (0 .. 3) of aliased WiringPI.bits_types_h.uu_uint32_t;
   type u_xmmreg is record
      element : aliased anon_array2193;  -- /usr/include/bits/sigcontext.h:55
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/sigcontext.h:53

   type anon_array2196 is array (0 .. 7) of aliased u_fpxreg;
   type anon_array2197 is array (0 .. 15) of aliased u_xmmreg;
   type anon_array2199 is array (0 .. 23) of aliased WiringPI.bits_types_h.uu_uint32_t;
   type u_fpstate is record
      cwd : aliased WiringPI.bits_types_h.uu_uint16_t;  -- /usr/include/bits/sigcontext.h:126
      swd : aliased WiringPI.bits_types_h.uu_uint16_t;  -- /usr/include/bits/sigcontext.h:127
      ftw : aliased WiringPI.bits_types_h.uu_uint16_t;  -- /usr/include/bits/sigcontext.h:128
      fop : aliased WiringPI.bits_types_h.uu_uint16_t;  -- /usr/include/bits/sigcontext.h:129
      rip : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:130
      rdp : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:131
      mxcsr : aliased WiringPI.bits_types_h.uu_uint32_t;  -- /usr/include/bits/sigcontext.h:132
      mxcr_mask : aliased WiringPI.bits_types_h.uu_uint32_t;  -- /usr/include/bits/sigcontext.h:133
      u_st : aliased anon_array2196;  -- /usr/include/bits/sigcontext.h:134
      u_xmm : aliased anon_array2197;  -- /usr/include/bits/sigcontext.h:135
      uu_glibc_reserved1 : aliased anon_array2199;  -- /usr/include/bits/sigcontext.h:136
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/sigcontext.h:123

   type anon_union2202 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            fpstate : access u_fpstate;  -- /usr/include/bits/sigcontext.h:169
         when others =>
            uu_fpstate_word : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:170
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type anon_array2204 is array (0 .. 7) of aliased WiringPI.bits_types_h.uu_uint64_t;
   type sigcontext is record
      r8 : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:141
      r9 : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:142
      r10 : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:143
      r11 : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:144
      r12 : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:145
      r13 : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:146
      r14 : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:147
      r15 : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:148
      rdi : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:149
      rsi : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:150
      rbp : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:151
      rbx : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:152
      rdx : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:153
      rax : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:154
      rcx : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:155
      rsp : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:156
      rip : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:157
      eflags : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:158
      cs : aliased unsigned_short;  -- /usr/include/bits/sigcontext.h:159
      gs : aliased unsigned_short;  -- /usr/include/bits/sigcontext.h:160
      fs : aliased unsigned_short;  -- /usr/include/bits/sigcontext.h:161
      uu_pad0 : aliased unsigned_short;  -- /usr/include/bits/sigcontext.h:162
      err : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:163
      trapno : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:164
      oldmask : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:165
      cr2 : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:166
      anon4799 : aliased anon_union2202;  -- /usr/include/bits/sigcontext.h:171
      uu_reserved1 : aliased anon_array2204;  -- /usr/include/bits/sigcontext.h:172
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/sigcontext.h:139

   type anon_array2207 is array (0 .. 1) of aliased WiringPI.bits_types_h.uu_uint64_t;
   type anon_array2210 is array (0 .. 4) of aliased WiringPI.bits_types_h.uu_uint64_t;
   type u_xsave_hdr is record
      xstate_bv : aliased WiringPI.bits_types_h.uu_uint64_t;  -- /usr/include/bits/sigcontext.h:179
      uu_glibc_reserved1 : aliased anon_array2207;  -- /usr/include/bits/sigcontext.h:180
      uu_glibc_reserved2 : aliased anon_array2210;  -- /usr/include/bits/sigcontext.h:181
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/sigcontext.h:177

   type anon_array2214 is array (0 .. 63) of aliased WiringPI.bits_types_h.uu_uint32_t;
   type u_ymmh_state is record
      ymmh_space : aliased anon_array2214;  -- /usr/include/bits/sigcontext.h:186
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/sigcontext.h:184

   type u_xstate is record
      fpstate : aliased u_fpstate;  -- /usr/include/bits/sigcontext.h:191
      xstate_hdr : aliased u_xsave_hdr;  -- /usr/include/bits/sigcontext.h:192
      ymmh : aliased u_ymmh_state;  -- /usr/include/bits/sigcontext.h:193
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/sigcontext.h:189

end WiringPI.bits_sigcontext_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
