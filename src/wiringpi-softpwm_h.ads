pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.softPwm_h is

   function softPwmCreate
     (pin : int;
      value : int;
      c_range : int) return int  -- softPwm.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "softPwmCreate";

   procedure softPwmWrite (pin : int; value : int)  -- softPwm.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "softPwmWrite";

   procedure softPwmStop (pin : int)  -- softPwm.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "softPwmStop";

end WiringPI.softPwm_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
