pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;

package WiringPI.softServo_c is

   MAX_SERVOS : constant := 8;  --  softServo.c:67

   pinMap : aliased array (0 .. 7) of aliased int  -- softServo.c:69
   with Import => True, 
        Convention => C, 
        External_Name => "pinMap";

   pulseWidth : aliased array (0 .. 7) of aliased int  -- softServo.c:70
   with Import => True, 
        Convention => C, 
        External_Name => "pulseWidth";

   function softServoThread (dummy : System.Address) return System.Address  -- softServo.c:79
   with Import => True, 
        Convention => C, 
        External_Name => "softServoThread";

   procedure softServoWrite (servoPin : int; value : int)  -- softServo.c:162
   with Import => True, 
        Convention => C, 
        External_Name => "softServoWrite";

   function softServoSetup
     (p0 : int;
      p1 : int;
      p2 : int;
      p3 : int;
      p4 : int;
      p5 : int;
      p6 : int;
      p7 : int) return int  -- softServo.c:185
   with Import => True, 
        Convention => C, 
        External_Name => "softServoSetup";

end WiringPI.softServo_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
