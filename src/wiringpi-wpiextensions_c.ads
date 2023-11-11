pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;

package WiringPI.wpiExtensions_c is

   wiringPiDebug : aliased int  -- wpiExtensions.c:68
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiDebug";

   verbose : aliased int  -- wpiExtensions.c:70
   with Import => True, 
        Convention => C, 
        External_Name => "verbose";

   errorMessage : aliased Interfaces.C.char_array (0 .. 1023)  -- wpiExtensions.c:71
   with Import => True, 
        Convention => C, 
        External_Name => "errorMessage";

   type extensionFunctionStruct is record
      name : Interfaces.C.Strings.chars_ptr;  -- wpiExtensions.c:78
      c_function : access function
           (arg1 : Interfaces.C.Strings.chars_ptr;
            arg2 : int;
            arg3 : Interfaces.C.Strings.chars_ptr) return int;  -- wpiExtensions.c:79
   end record
   with Convention => C_Pass_By_Copy;  -- wpiExtensions.c:76

   procedure verbError (message : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- wpiExtensions.c:89
   with Import => True, 
        Convention => C, 
        External_Name => "verbError";

   function extractInt
     (progName : Interfaces.C.Strings.chars_ptr;
      p : Interfaces.C.Strings.chars_ptr;
      num : access int) return Interfaces.C.Strings.chars_ptr  -- wpiExtensions.c:107
   with Import => True, 
        Convention => C, 
        External_Name => "extractInt";

   function extractStr
     (progName : Interfaces.C.Strings.chars_ptr;
      p : Interfaces.C.Strings.chars_ptr;
      str : System.Address) return Interfaces.C.Strings.chars_ptr  -- wpiExtensions.c:146
   with Import => True, 
        Convention => C, 
        External_Name => "extractStr";

   function doExtensionMcp23008
     (progName : Interfaces.C.Strings.chars_ptr;
      pinBase : int;
      params : Interfaces.C.Strings.chars_ptr) return int  -- wpiExtensions.c:203
   with Import => True, 
        Convention => C, 
        External_Name => "doExtensionMcp23008";

   function doExtensionMcp23016
     (progName : Interfaces.C.Strings.chars_ptr;
      pinBase : int;
      params : Interfaces.C.Strings.chars_ptr) return int  -- wpiExtensions.c:229
   with Import => True, 
        Convention => C, 
        External_Name => "doExtensionMcp23016";

   function doExtensionMcp23017
     (progName : Interfaces.C.Strings.chars_ptr;
      pinBase : int;
      params : Interfaces.C.Strings.chars_ptr) return int  -- wpiExtensions.c:255
   with Import => True, 
        Convention => C, 
        External_Name => "doExtensionMcp23017";

   function doExtensionMcp23s08
     (progName : Interfaces.C.Strings.chars_ptr;
      pinBase : int;
      params : Interfaces.C.Strings.chars_ptr) return int  -- wpiExtensions.c:281
   with Import => True, 
        Convention => C, 
        External_Name => "doExtensionMcp23s08";

   function doExtensionMcp23s17
     (progName : Interfaces.C.Strings.chars_ptr;
      pinBase : int;
      params : Interfaces.C.Strings.chars_ptr) return int  -- wpiExtensions.c:316
   with Import => True, 
        Convention => C, 
        External_Name => "doExtensionMcp23s17";

   function doExtensionSr595
     (progName : Interfaces.C.Strings.chars_ptr;
      pinBase : int;
      params : Interfaces.C.Strings.chars_ptr) return int  -- wpiExtensions.c:351
   with Import => True, 
        Convention => C, 
        External_Name => "doExtensionSr595";

   function doExtensionPcf8574
     (progName : Interfaces.C.Strings.chars_ptr;
      pinBase : int;
      params : Interfaces.C.Strings.chars_ptr) return int  -- wpiExtensions.c:388
   with Import => True, 
        Convention => C, 
        External_Name => "doExtensionPcf8574";

   function doExtensionAds1115
     (progName : Interfaces.C.Strings.chars_ptr;
      pinBase : int;
      params : Interfaces.C.Strings.chars_ptr) return int  -- wpiExtensions.c:414
   with Import => True, 
        Convention => C, 
        External_Name => "doExtensionAds1115";

   function doExtensionPcf8591
     (progName : Interfaces.C.Strings.chars_ptr;
      pinBase : int;
      params : Interfaces.C.Strings.chars_ptr) return int  -- wpiExtensions.c:440
   with Import => True, 
        Convention => C, 
        External_Name => "doExtensionPcf8591";

   function doExtensionPseudoPins
     (progName : Interfaces.C.Strings.chars_ptr;
      pinBase : int;
      params : Interfaces.C.Strings.chars_ptr) return int  -- wpiExtensions.c:466
   with Import => True, 
        Convention => C, 
        External_Name => "doExtensionPseudoPins";

   function doExtensionBmp180
     (progName : Interfaces.C.Strings.chars_ptr;
      pinBase : int;
      params : Interfaces.C.Strings.chars_ptr) return int  -- wpiExtensions.c:481
   with Import => True, 
        Convention => C, 
        External_Name => "doExtensionBmp180";

   function doExtensionHtu21d
     (progName : Interfaces.C.Strings.chars_ptr;
      pinBase : int;
      params : Interfaces.C.Strings.chars_ptr) return int  -- wpiExtensions.c:496
   with Import => True, 
        Convention => C, 
        External_Name => "doExtensionHtu21d";

   function doExtensionDs18b20
     (progName : Interfaces.C.Strings.chars_ptr;
      pinBase : int;
      params : Interfaces.C.Strings.chars_ptr) return int  -- wpiExtensions.c:511
   with Import => True, 
        Convention => C, 
        External_Name => "doExtensionDs18b20";

   function doExtensionRht03
     (progName : Interfaces.C.Strings.chars_ptr;
      pinBase : int;
      params : Interfaces.C.Strings.chars_ptr) return int  -- wpiExtensions.c:529
   with Import => True, 
        Convention => C, 
        External_Name => "doExtensionRht03";

   function doExtensionMax31855
     (progName : Interfaces.C.Strings.chars_ptr;
      pinBase : int;
      params : Interfaces.C.Strings.chars_ptr) return int  -- wpiExtensions.c:547
   with Import => True, 
        Convention => C, 
        External_Name => "doExtensionMax31855";

   function doExtensionMcp3002
     (progName : Interfaces.C.Strings.chars_ptr;
      pinBase : int;
      params : Interfaces.C.Strings.chars_ptr) return int  -- wpiExtensions.c:573
   with Import => True, 
        Convention => C, 
        External_Name => "doExtensionMcp3002";

   function doExtensionMcp3004
     (progName : Interfaces.C.Strings.chars_ptr;
      pinBase : int;
      params : Interfaces.C.Strings.chars_ptr) return int  -- wpiExtensions.c:599
   with Import => True, 
        Convention => C, 
        External_Name => "doExtensionMcp3004";

   function doExtensionMax5322
     (progName : Interfaces.C.Strings.chars_ptr;
      pinBase : int;
      params : Interfaces.C.Strings.chars_ptr) return int  -- wpiExtensions.c:625
   with Import => True, 
        Convention => C, 
        External_Name => "doExtensionMax5322";

   function doExtensionMcp4802
     (progName : Interfaces.C.Strings.chars_ptr;
      pinBase : int;
      params : Interfaces.C.Strings.chars_ptr) return int  -- wpiExtensions.c:651
   with Import => True, 
        Convention => C, 
        External_Name => "doExtensionMcp4802";

   function doExtensionSn3218
     (progName : Interfaces.C.Strings.chars_ptr;
      pinBase : int;
      params : Interfaces.C.Strings.chars_ptr) return int  -- wpiExtensions.c:677
   with Import => True, 
        Convention => C, 
        External_Name => "doExtensionSn3218";

   function doExtensionMcp3422
     (progName : Interfaces.C.Strings.chars_ptr;
      pinBase : int;
      params : Interfaces.C.Strings.chars_ptr) return int  -- wpiExtensions.c:691
   with Import => True, 
        Convention => C, 
        External_Name => "doExtensionMcp3422";

   function doExtensionDrcS
     (progName : Interfaces.C.Strings.chars_ptr;
      pinBase : int;
      params : Interfaces.C.Strings.chars_ptr) return int  -- wpiExtensions.c:735
   with Import => True, 
        Convention => C, 
        External_Name => "doExtensionDrcS";

   function doExtensionDrcNet
     (progName : Interfaces.C.Strings.chars_ptr;
      pinBase : int;
      params : Interfaces.C.Strings.chars_ptr) return int  -- wpiExtensions.c:780
   with Import => True, 
        Convention => C, 
        External_Name => "doExtensionDrcNet";

   extensionFunctions : aliased array (0 .. 23) of aliased extensionFunctionStruct  -- wpiExtensions.c:832
   with Import => True, 
        Convention => C, 
        External_Name => "extensionFunctions";

   function loadWPiExtension
     (progName : Interfaces.C.Strings.chars_ptr;
      extensionData : Interfaces.C.Strings.chars_ptr;
      printErrors : int) return int  -- wpiExtensions.c:869
   with Import => True, 
        Convention => C, 
        External_Name => "loadWPiExtension";

end WiringPI.wpiExtensions_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
