pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_setjmp_h;
with WiringPI.bits_types_u_sigset_t_h;

package WiringPI.bits_types_struct_u_jmp_buf_tag_h is

   type uu_jmp_buf_tag is record
      uu_jmpbuf : aliased WiringPI.bits_setjmp_h.uu_jmp_buf;  -- /usr/include/bits/types/struct___jmp_buf_tag.h:32
      uu_mask_was_saved : aliased int;  -- /usr/include/bits/types/struct___jmp_buf_tag.h:33
      uu_saved_mask : aliased WiringPI.bits_types_u_sigset_t_h.uu_sigset_t;  -- /usr/include/bits/types/struct___jmp_buf_tag.h:34
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/bits/types/struct___jmp_buf_tag.h:26

end WiringPI.bits_types_struct_u_jmp_buf_tag_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
