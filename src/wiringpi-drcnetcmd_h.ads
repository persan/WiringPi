pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with WiringPI.bits_stdint_uintn_h;

package WiringPI.drcNetCmd_h is

   DEFAULT_SERVER_PORT : constant := 6124;  --  ../wiringPiD/drcNetCmd.h:23

   DRCN_PIN_MODE : constant := 1;  --  ../wiringPiD/drcNetCmd.h:25
   DRCN_PULL_UP_DN : constant := 2;  --  ../wiringPiD/drcNetCmd.h:26

   DRCN_DIGITAL_WRITE : constant := 3;  --  ../wiringPiD/drcNetCmd.h:28
   DRCN_DIGITAL_WRITE8 : constant := 4;  --  ../wiringPiD/drcNetCmd.h:29
   DRCN_ANALOG_WRITE : constant := 5;  --  ../wiringPiD/drcNetCmd.h:30
   DRCN_PWM_WRITE : constant := 6;  --  ../wiringPiD/drcNetCmd.h:31

   DRCN_DIGITAL_READ : constant := 7;  --  ../wiringPiD/drcNetCmd.h:33
   DRCN_DIGITAL_READ8 : constant := 8;  --  ../wiringPiD/drcNetCmd.h:34
   DRCN_ANALOG_READ : constant := 9;  --  ../wiringPiD/drcNetCmd.h:35

   type drcNetComStruct is record
      pin : aliased WiringPI.bits_stdint_uintn_h.uint32_t;  -- ../wiringPiD/drcNetCmd.h:40
      cmd : aliased WiringPI.bits_stdint_uintn_h.uint32_t;  -- ../wiringPiD/drcNetCmd.h:41
      data : aliased WiringPI.bits_stdint_uintn_h.uint32_t;  -- ../wiringPiD/drcNetCmd.h:42
   end record
   with Convention => C_Pass_By_Copy;  -- ../wiringPiD/drcNetCmd.h:38

end WiringPI.drcNetCmd_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
