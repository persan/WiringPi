pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.math_h is

   --  unsupported macro: HUGE_VAL (__builtin_huge_val ())
   --  unsupported macro: HUGE_VALF (__builtin_huge_valf ())
   --  unsupported macro: HUGE_VALL (__builtin_huge_vall ())
   --  unsupported macro: INFINITY (__builtin_inff ())
   --  unsupported macro: NAN (__builtin_nanf (""))
   FP_ILOGB0 : constant := (-2147483647 - 1);  --  /usr/include/math.h:207

   FP_ILOGBNAN : constant := (-2147483647 - 1);  --  /usr/include/math.h:212

   FP_NAN : constant := 0;  --  /usr/include/math.h:937

   FP_INFINITE : constant := 1;  --  /usr/include/math.h:940

   FP_ZERO : constant := 2;  --  /usr/include/math.h:943

   FP_SUBNORMAL : constant := 3;  --  /usr/include/math.h:946

   FP_NORMAL : constant := 4;  --  /usr/include/math.h:949
   --  arg-macro: procedure fpclassify (x)
   --    __builtin_fpclassify (FP_NAN, FP_INFINITE, FP_NORMAL, FP_SUBNORMAL, FP_ZERO, x)
   --  arg-macro: procedure signbit (x)
   --    __builtin_signbit (x)
   --  arg-macro: procedure isfinite (x)
   --    __builtin_isfinite (x)
   --  arg-macro: procedure isnormal (x)
   --    __builtin_isnormal (x)
   --  arg-macro: procedure isnan (x)
   --    __builtin_isnan (x)
   --  arg-macro: procedure isinf (x)
   --    __builtin_isinf_sign (x)

   MATH_ERRNO : constant := 1;  --  /usr/include/math.h:1035
   MATH_ERREXCEPT : constant := 2;  --  /usr/include/math.h:1036
   --  unsupported macro: math_errhandling (MATH_ERRNO | MATH_ERREXCEPT)

   M_E : constant := 2.7182818284590452354;  --  /usr/include/math.h:1146
   M_LOG2E : constant := 1.4426950408889634074;  --  /usr/include/math.h:1147
   M_LOG10E : constant := 0.43429448190325182765;  --  /usr/include/math.h:1148
   M_LN2 : constant := 0.69314718055994530942;  --  /usr/include/math.h:1149
   M_LN10 : constant := 2.30258509299404568402;  --  /usr/include/math.h:1150
   M_PI : constant := 3.14159265358979323846;  --  /usr/include/math.h:1151
   M_PI_2 : constant := 1.57079632679489661923;  --  /usr/include/math.h:1152
   M_PI_4 : constant := 0.78539816339744830962;  --  /usr/include/math.h:1153
   M_1_PI : constant := 0.31830988618379067154;  --  /usr/include/math.h:1154
   M_2_PI : constant := 0.63661977236758134308;  --  /usr/include/math.h:1155
   M_2_SQRTPI : constant := 1.12837916709551257390;  --  /usr/include/math.h:1156
   M_SQRT2 : constant := 1.41421356237309504880;  --  /usr/include/math.h:1157
   M_SQRT1_2 : constant := 0.70710678118654752440;  --  /usr/include/math.h:1158
   --  arg-macro: procedure isgreater (x, y)
   --    __builtin_isgreater(x, y)
   --  arg-macro: procedure isgreaterequal (x, y)
   --    __builtin_isgreaterequal(x, y)
   --  arg-macro: procedure isless (x, y)
   --    __builtin_isless(x, y)
   --  arg-macro: procedure islessequal (x, y)
   --    __builtin_islessequal(x, y)
   --  arg-macro: procedure islessgreater (x, y)
   --    __builtin_islessgreater(x, y)
   --  arg-macro: procedure isunordered (x, y)
   --    __builtin_isunordered(x, y)

   subtype float_t is float;  -- /usr/include/math.h:163

   subtype double_t is double;  -- /usr/include/math.h:164

   signgam : aliased int  -- /usr/include/math.h:854
   with Import => True, 
        Convention => C, 
        External_Name => "signgam";

end WiringPI.math_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
