pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package WiringPI.bits_mathcalls_h is

   function acos (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "acos";

   function acosf (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "acosf";

   function acosl (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "acosl";

   --  skipped func __acos

   --  skipped func __acosf

   --  skipped func __acosl

   function asin (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "asin";

   function asinf (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "asinf";

   function asinl (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "asinl";

   --  skipped func __asin

   --  skipped func __asinf

   --  skipped func __asinl

   function atan (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "atan";

   function atanf (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "atanf";

   function atanl (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "atanl";

   --  skipped func __atan

   --  skipped func __atanf

   --  skipped func __atanl

   function atan2 (uu_y : double; uu_x : double) return double  -- /usr/include/bits/mathcalls.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "atan2";

   function atan2f (uu_y : float; uu_x : float) return float  -- /usr/include/bits/mathcalls.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "atan2f";

   function atan2l (uu_y : long_double; uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "atan2l";

   --  skipped func __atan2

   --  skipped func __atan2f

   --  skipped func __atan2l

   function cos (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "cos";

   function cosf (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "cosf";

   function cosl (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "cosl";

   --  skipped func __cos

   --  skipped func __cosf

   --  skipped func __cosl

   function sin (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "sin";

   function sinf (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "sinf";

   function sinl (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "sinl";

   --  skipped func __sin

   --  skipped func __sinf

   --  skipped func __sinl

   function tan (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "tan";

   function tanf (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "tanf";

   function tanl (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "tanl";

   --  skipped func __tan

   --  skipped func __tanf

   --  skipped func __tanl

   function cosh (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "cosh";

   function coshf (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "coshf";

   function coshl (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "coshl";

   --  skipped func __cosh

   --  skipped func __coshf

   --  skipped func __coshl

   function sinh (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "sinh";

   function sinhf (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "sinhf";

   function sinhl (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "sinhl";

   --  skipped func __sinh

   --  skipped func __sinhf

   --  skipped func __sinhl

   function tanh (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "tanh";

   function tanhf (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "tanhf";

   function tanhl (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "tanhl";

   --  skipped func __tanh

   --  skipped func __tanhf

   --  skipped func __tanhl

   function acosh (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "acosh";

   function acoshf (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "acoshf";

   function acoshl (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "acoshl";

   --  skipped func __acosh

   --  skipped func __acoshf

   --  skipped func __acoshl

   function asinh (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "asinh";

   function asinhf (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "asinhf";

   function asinhl (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "asinhl";

   --  skipped func __asinh

   --  skipped func __asinhf

   --  skipped func __asinhl

   function atanh (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "atanh";

   function atanhf (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "atanhf";

   function atanhl (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "atanhl";

   --  skipped func __atanh

   --  skipped func __atanhf

   --  skipped func __atanhl

   function exp (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "exp";

   function expf (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "expf";

   function expl (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "expl";

   --  skipped func __exp

   --  skipped func __expf

   --  skipped func __expl

   function frexp (uu_x : double; uu_exponent : access int) return double  -- /usr/include/bits/mathcalls.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "frexp";

   function frexpf (uu_x : float; uu_exponent : access int) return float  -- /usr/include/bits/mathcalls.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "frexpf";

   function frexpl (uu_x : long_double; uu_exponent : access int) return long_double  -- /usr/include/bits/mathcalls.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "frexpl";

   --  skipped func __frexp

   --  skipped func __frexpf

   --  skipped func __frexpl

   function ldexp (uu_x : double; uu_exponent : int) return double  -- /usr/include/bits/mathcalls.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "ldexp";

   function ldexpf (uu_x : float; uu_exponent : int) return float  -- /usr/include/bits/mathcalls.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "ldexpf";

   function ldexpl (uu_x : long_double; uu_exponent : int) return long_double  -- /usr/include/bits/mathcalls.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "ldexpl";

   --  skipped func __ldexp

   --  skipped func __ldexpf

   --  skipped func __ldexpl

   function log (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "log";

   function logf (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "logf";

   function logl (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "logl";

   --  skipped func __log

   --  skipped func __logf

   --  skipped func __logl

   function log10 (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "log10";

   function log10f (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "log10f";

   function log10l (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "log10l";

   --  skipped func __log10

   --  skipped func __log10f

   --  skipped func __log10l

   function modf (uu_x : double; uu_iptr : access double) return double  -- /usr/include/bits/mathcalls.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "modf";

   function modff (uu_x : float; uu_iptr : access float) return float  -- /usr/include/bits/mathcalls.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "modff";

   function modfl (uu_x : long_double; uu_iptr : access long_double) return long_double  -- /usr/include/bits/mathcalls.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "modfl";

   --  skipped func __modf

   --  skipped func __modff

   --  skipped func __modfl

   function expm1 (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "expm1";

   function expm1f (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "expm1f";

   function expm1l (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "expm1l";

   --  skipped func __expm1

   --  skipped func __expm1f

   --  skipped func __expm1l

   function log1p (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "log1p";

   function log1pf (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "log1pf";

   function log1pl (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "log1pl";

   --  skipped func __log1p

   --  skipped func __log1pf

   --  skipped func __log1pl

   function logb (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "logb";

   function logbf (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "logbf";

   function logbl (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "logbl";

   --  skipped func __logb

   --  skipped func __logbf

   --  skipped func __logbl

   function exp2 (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "exp2";

   function exp2f (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "exp2f";

   function exp2l (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "exp2l";

   --  skipped func __exp2

   --  skipped func __exp2f

   --  skipped func __exp2l

   function log2 (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "log2";

   function log2f (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "log2f";

   function log2l (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "log2l";

   --  skipped func __log2

   --  skipped func __log2f

   --  skipped func __log2l

   function pow (uu_x : double; uu_y : double) return double  -- /usr/include/bits/mathcalls.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "pow";

   function powf (uu_x : float; uu_y : float) return float  -- /usr/include/bits/mathcalls.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "powf";

   function powl (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/bits/mathcalls.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "powl";

   --  skipped func __pow

   --  skipped func __powf

   --  skipped func __powl

   function sqrt (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "sqrt";

   function sqrtf (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "sqrtf";

   function sqrtl (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "sqrtl";

   --  skipped func __sqrt

   --  skipped func __sqrtf

   --  skipped func __sqrtl

   function hypot (uu_x : double; uu_y : double) return double  -- /usr/include/bits/mathcalls.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "hypot";

   function hypotf (uu_x : float; uu_y : float) return float  -- /usr/include/bits/mathcalls.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "hypotf";

   function hypotl (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/bits/mathcalls.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "hypotl";

   --  skipped func __hypot

   --  skipped func __hypotf

   --  skipped func __hypotl

   function cbrt (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "cbrt";

   function cbrtf (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "cbrtf";

   function cbrtl (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "cbrtl";

   --  skipped func __cbrt

   --  skipped func __cbrtf

   --  skipped func __cbrtl

   function ceil (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "ceil";

   function ceilf (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "ceilf";

   function ceill (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "ceill";

   --  skipped func __ceil

   --  skipped func __ceilf

   --  skipped func __ceill

   function fabs (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "fabs";

   function fabsf (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "fabsf";

   function fabsl (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "fabsl";

   --  skipped func __fabs

   --  skipped func __fabsf

   --  skipped func __fabsl

   function floor (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "floor";

   function floorf (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "floorf";

   function floorl (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "floorl";

   --  skipped func __floor

   --  skipped func __floorf

   --  skipped func __floorl

   function fmod (uu_x : double; uu_y : double) return double  -- /usr/include/bits/mathcalls.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "fmod";

   function fmodf (uu_x : float; uu_y : float) return float  -- /usr/include/bits/mathcalls.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "fmodf";

   function fmodl (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/bits/mathcalls.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "fmodl";

   --  skipped func __fmod

   --  skipped func __fmodf

   --  skipped func __fmodl

   function isinf (uu_value : double) return int  -- /usr/include/bits/mathcalls.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "isinf";

   function isinff (uu_value : float) return int  -- /usr/include/bits/mathcalls.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "isinff";

   function isinfl (uu_value : long_double) return int  -- /usr/include/bits/mathcalls.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "isinfl";

   function finite (uu_value : double) return int  -- /usr/include/bits/mathcalls.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "finite";

   function finitef (uu_value : float) return int  -- /usr/include/bits/mathcalls.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "finitef";

   function finitel (uu_value : long_double) return int  -- /usr/include/bits/mathcalls.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "finitel";

   function drem (uu_x : double; uu_y : double) return double  -- /usr/include/bits/mathcalls.h:187
   with Import => True, 
        Convention => C, 
        External_Name => "drem";

   function dremf (uu_x : float; uu_y : float) return float  -- /usr/include/bits/mathcalls.h:187
   with Import => True, 
        Convention => C, 
        External_Name => "dremf";

   function dreml (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/bits/mathcalls.h:187
   with Import => True, 
        Convention => C, 
        External_Name => "dreml";

   --  skipped func __drem

   --  skipped func __dremf

   --  skipped func __dreml

   function significand (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "significand";

   function significandf (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "significandf";

   function significandl (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "significandl";

   --  skipped func __significand

   --  skipped func __significandf

   --  skipped func __significandl

   function copysign (uu_x : double; uu_y : double) return double  -- /usr/include/bits/mathcalls.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "copysign";

   function copysignf (uu_x : float; uu_y : float) return float  -- /usr/include/bits/mathcalls.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "copysignf";

   function copysignl (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/bits/mathcalls.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "copysignl";

   --  skipped func __copysign

   --  skipped func __copysignf

   --  skipped func __copysignl

   function nan (uu_tagb : Interfaces.C.Strings.chars_ptr) return double  -- /usr/include/bits/mathcalls.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "nan";

   function nanf (uu_tagb : Interfaces.C.Strings.chars_ptr) return float  -- /usr/include/bits/mathcalls.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "nanf";

   function nanl (uu_tagb : Interfaces.C.Strings.chars_ptr) return long_double  -- /usr/include/bits/mathcalls.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "nanl";

   --  skipped func __nan

   --  skipped func __nanf

   --  skipped func __nanl

   function isnan (uu_value : double) return int  -- /usr/include/bits/mathcalls.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "isnan";

   function isnanf (uu_value : float) return int  -- /usr/include/bits/mathcalls.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "isnanf";

   function isnanl (uu_value : long_double) return int  -- /usr/include/bits/mathcalls.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "isnanl";

   function j0 (arg1 : double) return double  -- /usr/include/bits/mathcalls.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "j0";

   function j0f (arg1 : float) return float  -- /usr/include/bits/mathcalls.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "j0f";

   function j0l (arg1 : long_double) return long_double  -- /usr/include/bits/mathcalls.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "j0l";

   --  skipped func __j0

   --  skipped func __j0f

   --  skipped func __j0l

   function j1 (arg1 : double) return double  -- /usr/include/bits/mathcalls.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "j1";

   function j1f (arg1 : float) return float  -- /usr/include/bits/mathcalls.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "j1f";

   function j1l (arg1 : long_double) return long_double  -- /usr/include/bits/mathcalls.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "j1l";

   --  skipped func __j1

   --  skipped func __j1f

   --  skipped func __j1l

   function jn (arg1 : int; arg2 : double) return double  -- /usr/include/bits/mathcalls.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "jn";

   function jnf (arg1 : int; arg2 : float) return float  -- /usr/include/bits/mathcalls.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "jnf";

   function jnl (arg1 : int; arg2 : long_double) return long_double  -- /usr/include/bits/mathcalls.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "jnl";

   --  skipped func __jn

   --  skipped func __jnf

   --  skipped func __jnl

   function y0 (arg1 : double) return double  -- /usr/include/bits/mathcalls.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "y0";

   function y0f (arg1 : float) return float  -- /usr/include/bits/mathcalls.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "y0f";

   function y0l (arg1 : long_double) return long_double  -- /usr/include/bits/mathcalls.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "y0l";

   --  skipped func __y0

   --  skipped func __y0f

   --  skipped func __y0l

   function y1 (arg1 : double) return double  -- /usr/include/bits/mathcalls.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "y1";

   function y1f (arg1 : float) return float  -- /usr/include/bits/mathcalls.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "y1f";

   function y1l (arg1 : long_double) return long_double  -- /usr/include/bits/mathcalls.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "y1l";

   --  skipped func __y1

   --  skipped func __y1f

   --  skipped func __y1l

   function yn (arg1 : int; arg2 : double) return double  -- /usr/include/bits/mathcalls.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "yn";

   function ynf (arg1 : int; arg2 : float) return float  -- /usr/include/bits/mathcalls.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "ynf";

   function ynl (arg1 : int; arg2 : long_double) return long_double  -- /usr/include/bits/mathcalls.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "ynl";

   --  skipped func __yn

   --  skipped func __ynf

   --  skipped func __ynl

   function erf (arg1 : double) return double  -- /usr/include/bits/mathcalls.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "erf";

   function erff (arg1 : float) return float  -- /usr/include/bits/mathcalls.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "erff";

   function erfl (arg1 : long_double) return long_double  -- /usr/include/bits/mathcalls.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "erfl";

   --  skipped func __erf

   --  skipped func __erff

   --  skipped func __erfl

   function erfc (arg1 : double) return double  -- /usr/include/bits/mathcalls.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "erfc";

   function erfcf (arg1 : float) return float  -- /usr/include/bits/mathcalls.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "erfcf";

   function erfcl (arg1 : long_double) return long_double  -- /usr/include/bits/mathcalls.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "erfcl";

   --  skipped func __erfc

   --  skipped func __erfcf

   --  skipped func __erfcl

   function lgamma (arg1 : double) return double  -- /usr/include/bits/mathcalls.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "lgamma";

   function lgammaf (arg1 : float) return float  -- /usr/include/bits/mathcalls.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "lgammaf";

   function lgammal (arg1 : long_double) return long_double  -- /usr/include/bits/mathcalls.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "lgammal";

   --  skipped func __lgamma

   --  skipped func __lgammaf

   --  skipped func __lgammal

   function tgamma (arg1 : double) return double  -- /usr/include/bits/mathcalls.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "tgamma";

   function tgammaf (arg1 : float) return float  -- /usr/include/bits/mathcalls.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "tgammaf";

   function tgammal (arg1 : long_double) return long_double  -- /usr/include/bits/mathcalls.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "tgammal";

   --  skipped func __tgamma

   --  skipped func __tgammaf

   --  skipped func __tgammal

   function gamma (arg1 : double) return double  -- /usr/include/bits/mathcalls.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "gamma";

   function gammaf (arg1 : float) return float  -- /usr/include/bits/mathcalls.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "gammaf";

   function gammal (arg1 : long_double) return long_double  -- /usr/include/bits/mathcalls.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "gammal";

   --  skipped func __gamma

   --  skipped func __gammaf

   --  skipped func __gammal

   function lgamma_r (arg1 : double; uu_signgamp : access int) return double  -- /usr/include/bits/mathcalls.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "lgamma_r";

   function lgammaf_r (arg1 : float; uu_signgamp : access int) return float  -- /usr/include/bits/mathcalls.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "lgammaf_r";

   function lgammal_r (arg1 : long_double; uu_signgamp : access int) return long_double  -- /usr/include/bits/mathcalls.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "lgammal_r";

   --  skipped func __lgamma_r

   --  skipped func __lgammaf_r

   --  skipped func __lgammal_r

   function rint (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "rint";

   function rintf (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "rintf";

   function rintl (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "rintl";

   --  skipped func __rint

   --  skipped func __rintf

   --  skipped func __rintl

   function nextafter (uu_x : double; uu_y : double) return double  -- /usr/include/bits/mathcalls.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "nextafter";

   function nextafterf (uu_x : float; uu_y : float) return float  -- /usr/include/bits/mathcalls.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "nextafterf";

   function nextafterl (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/bits/mathcalls.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "nextafterl";

   --  skipped func __nextafter

   --  skipped func __nextafterf

   --  skipped func __nextafterl

   function nexttoward (uu_x : double; uu_y : long_double) return double  -- /usr/include/bits/mathcalls.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "nexttoward";

   function nexttowardf (uu_x : float; uu_y : long_double) return float  -- /usr/include/bits/mathcalls.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "nexttowardf";

   function nexttowardl (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/bits/mathcalls.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "nexttowardl";

   --  skipped func __nexttoward

   --  skipped func __nexttowardf

   --  skipped func __nexttowardl

   function remainder (uu_x : double; uu_y : double) return double  -- /usr/include/bits/mathcalls.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "remainder";

   function remainderf (uu_x : float; uu_y : float) return float  -- /usr/include/bits/mathcalls.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "remainderf";

   function remainderl (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/bits/mathcalls.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "remainderl";

   --  skipped func __remainder

   --  skipped func __remainderf

   --  skipped func __remainderl

   function scalbn (uu_x : double; uu_n : int) return double  -- /usr/include/bits/mathcalls.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "scalbn";

   function scalbnf (uu_x : float; uu_n : int) return float  -- /usr/include/bits/mathcalls.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "scalbnf";

   function scalbnl (uu_x : long_double; uu_n : int) return long_double  -- /usr/include/bits/mathcalls.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "scalbnl";

   --  skipped func __scalbn

   --  skipped func __scalbnf

   --  skipped func __scalbnl

   function ilogb (uu_x : double) return int  -- /usr/include/bits/mathcalls.h:283
   with Import => True, 
        Convention => C, 
        External_Name => "ilogb";

   function ilogbf (uu_x : float) return int  -- /usr/include/bits/mathcalls.h:283
   with Import => True, 
        Convention => C, 
        External_Name => "ilogbf";

   function ilogbl (uu_x : long_double) return int  -- /usr/include/bits/mathcalls.h:283
   with Import => True, 
        Convention => C, 
        External_Name => "ilogbl";

   --  skipped func __ilogb

   --  skipped func __ilogbf

   --  skipped func __ilogbl

   function scalbln (uu_x : double; uu_n : long) return double  -- /usr/include/bits/mathcalls.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "scalbln";

   function scalblnf (uu_x : float; uu_n : long) return float  -- /usr/include/bits/mathcalls.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "scalblnf";

   function scalblnl (uu_x : long_double; uu_n : long) return long_double  -- /usr/include/bits/mathcalls.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "scalblnl";

   --  skipped func __scalbln

   --  skipped func __scalblnf

   --  skipped func __scalblnl

   function nearbyint (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "nearbyint";

   function nearbyintf (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "nearbyintf";

   function nearbyintl (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "nearbyintl";

   --  skipped func __nearbyint

   --  skipped func __nearbyintf

   --  skipped func __nearbyintl

   function round (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:301
   with Import => True, 
        Convention => C, 
        External_Name => "round";

   function roundf (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:301
   with Import => True, 
        Convention => C, 
        External_Name => "roundf";

   function roundl (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:301
   with Import => True, 
        Convention => C, 
        External_Name => "roundl";

   --  skipped func __round

   --  skipped func __roundf

   --  skipped func __roundl

   function trunc (uu_x : double) return double  -- /usr/include/bits/mathcalls.h:305
   with Import => True, 
        Convention => C, 
        External_Name => "trunc";

   function truncf (uu_x : float) return float  -- /usr/include/bits/mathcalls.h:305
   with Import => True, 
        Convention => C, 
        External_Name => "truncf";

   function truncl (uu_x : long_double) return long_double  -- /usr/include/bits/mathcalls.h:305
   with Import => True, 
        Convention => C, 
        External_Name => "truncl";

   --  skipped func __trunc

   --  skipped func __truncf

   --  skipped func __truncl

   function remquo
     (uu_x : double;
      uu_y : double;
      uu_quo : access int) return double  -- /usr/include/bits/mathcalls.h:310
   with Import => True, 
        Convention => C, 
        External_Name => "remquo";

   function remquof
     (uu_x : float;
      uu_y : float;
      uu_quo : access int) return float  -- /usr/include/bits/mathcalls.h:310
   with Import => True, 
        Convention => C, 
        External_Name => "remquof";

   function remquol
     (uu_x : long_double;
      uu_y : long_double;
      uu_quo : access int) return long_double  -- /usr/include/bits/mathcalls.h:310
   with Import => True, 
        Convention => C, 
        External_Name => "remquol";

   --  skipped func __remquo

   --  skipped func __remquof

   --  skipped func __remquol

   function lrint (uu_x : double) return long  -- /usr/include/bits/mathcalls.h:317
   with Import => True, 
        Convention => C, 
        External_Name => "lrint";

   function lrintf (uu_x : float) return long  -- /usr/include/bits/mathcalls.h:317
   with Import => True, 
        Convention => C, 
        External_Name => "lrintf";

   function lrintl (uu_x : long_double) return long  -- /usr/include/bits/mathcalls.h:317
   with Import => True, 
        Convention => C, 
        External_Name => "lrintl";

   --  skipped func __lrint

   --  skipped func __lrintf

   --  skipped func __lrintl

   function llrint (uu_x : double) return Long_Long_Integer  -- /usr/include/bits/mathcalls.h:319
   with Import => True, 
        Convention => C, 
        External_Name => "llrint";

   function llrintf (uu_x : float) return Long_Long_Integer  -- /usr/include/bits/mathcalls.h:319
   with Import => True, 
        Convention => C, 
        External_Name => "llrintf";

   function llrintl (uu_x : long_double) return Long_Long_Integer  -- /usr/include/bits/mathcalls.h:319
   with Import => True, 
        Convention => C, 
        External_Name => "llrintl";

   --  skipped func __llrint

   --  skipped func __llrintf

   --  skipped func __llrintl

   function lround (uu_x : double) return long  -- /usr/include/bits/mathcalls.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "lround";

   function lroundf (uu_x : float) return long  -- /usr/include/bits/mathcalls.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "lroundf";

   function lroundl (uu_x : long_double) return long  -- /usr/include/bits/mathcalls.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "lroundl";

   --  skipped func __lround

   --  skipped func __lroundf

   --  skipped func __lroundl

   function llround (uu_x : double) return Long_Long_Integer  -- /usr/include/bits/mathcalls.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "llround";

   function llroundf (uu_x : float) return Long_Long_Integer  -- /usr/include/bits/mathcalls.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "llroundf";

   function llroundl (uu_x : long_double) return Long_Long_Integer  -- /usr/include/bits/mathcalls.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "llroundl";

   --  skipped func __llround

   --  skipped func __llroundf

   --  skipped func __llroundl

   function fdim (uu_x : double; uu_y : double) return double  -- /usr/include/bits/mathcalls.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "fdim";

   function fdimf (uu_x : float; uu_y : float) return float  -- /usr/include/bits/mathcalls.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "fdimf";

   function fdiml (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/bits/mathcalls.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "fdiml";

   --  skipped func __fdim

   --  skipped func __fdimf

   --  skipped func __fdiml

   function fmax (uu_x : double; uu_y : double) return double  -- /usr/include/bits/mathcalls.h:333
   with Import => True, 
        Convention => C, 
        External_Name => "fmax";

   function fmaxf (uu_x : float; uu_y : float) return float  -- /usr/include/bits/mathcalls.h:333
   with Import => True, 
        Convention => C, 
        External_Name => "fmaxf";

   function fmaxl (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/bits/mathcalls.h:333
   with Import => True, 
        Convention => C, 
        External_Name => "fmaxl";

   --  skipped func __fmax

   --  skipped func __fmaxf

   --  skipped func __fmaxl

   function fmin (uu_x : double; uu_y : double) return double  -- /usr/include/bits/mathcalls.h:336
   with Import => True, 
        Convention => C, 
        External_Name => "fmin";

   function fminf (uu_x : float; uu_y : float) return float  -- /usr/include/bits/mathcalls.h:336
   with Import => True, 
        Convention => C, 
        External_Name => "fminf";

   function fminl (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/bits/mathcalls.h:336
   with Import => True, 
        Convention => C, 
        External_Name => "fminl";

   --  skipped func __fmin

   --  skipped func __fminf

   --  skipped func __fminl

   function fma
     (uu_x : double;
      uu_y : double;
      uu_z : double) return double  -- /usr/include/bits/mathcalls.h:340
   with Import => True, 
        Convention => C, 
        External_Name => "fma";

   function fmaf
     (uu_x : float;
      uu_y : float;
      uu_z : float) return float  -- /usr/include/bits/mathcalls.h:340
   with Import => True, 
        Convention => C, 
        External_Name => "fmaf";

   function fmal
     (uu_x : long_double;
      uu_y : long_double;
      uu_z : long_double) return long_double  -- /usr/include/bits/mathcalls.h:340
   with Import => True, 
        Convention => C, 
        External_Name => "fmal";

   --  skipped func __fma

   --  skipped func __fmaf

   --  skipped func __fmal

   function scalb (uu_x : double; uu_n : double) return double  -- /usr/include/bits/mathcalls.h:435
   with Import => True, 
        Convention => C, 
        External_Name => "scalb";

   function scalbf (uu_x : float; uu_n : float) return float  -- /usr/include/bits/mathcalls.h:435
   with Import => True, 
        Convention => C, 
        External_Name => "scalbf";

   function scalbl (uu_x : long_double; uu_n : long_double) return long_double  -- /usr/include/bits/mathcalls.h:435
   with Import => True, 
        Convention => C, 
        External_Name => "scalbl";

   --  skipped func __scalb

   --  skipped func __scalbf

   --  skipped func __scalbl

end WiringPI.bits_mathcalls_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
