pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;

package WiringPI.WiringPi_H is


   PI_GPIO_MASK : constant := (16#FFFFFFC0#);  --  ./wiringPi.h:43

   WPI_MODE_PINS : constant := 0;  --  ./wiringPi.h:49
   WPI_MODE_GPIO : constant := 1;  --  ./wiringPi.h:50
   WPI_MODE_GPIO_SYS : constant := 2;  --  ./wiringPi.h:51
   WPI_MODE_PHYS : constant := 3;  --  ./wiringPi.h:52
   WPI_MODE_PIFACE : constant := 4;  --  ./wiringPi.h:53
   WPI_MODE_UNINITIALISED : constant := -1;  --  ./wiringPi.h:54

   INPUT : constant := 0;  --  ./wiringPi.h:58
   OUTPUT : constant := 1;  --  ./wiringPi.h:59
   PWM_OUTPUT : constant := 2;  --  ./wiringPi.h:60
   GPIO_CLOCK : constant := 3;  --  ./wiringPi.h:61
   SOFT_PWM_OUTPUT : constant := 4;  --  ./wiringPi.h:62
   SOFT_TONE_OUTPUT : constant := 5;  --  ./wiringPi.h:63
   PWM_TONE_OUTPUT : constant := 6;  --  ./wiringPi.h:64

   LOW : constant := 0;  --  ./wiringPi.h:66
   HIGH : constant := 1;  --  ./wiringPi.h:67

   PUD_OFF : constant := 0;  --  ./wiringPi.h:71
   PUD_DOWN : constant := 1;  --  ./wiringPi.h:72
   PUD_UP : constant := 2;  --  ./wiringPi.h:73

   PWM_MODE_MS : constant := 0;  --  ./wiringPi.h:77
   PWM_MODE_BAL : constant := 1;  --  ./wiringPi.h:78

   INT_EDGE_SETUP : constant := 0;  --  ./wiringPi.h:82
   INT_EDGE_FALLING : constant := 1;  --  ./wiringPi.h:83
   INT_EDGE_RISING : constant := 2;  --  ./wiringPi.h:84
   INT_EDGE_BOTH : constant := 3;  --  ./wiringPi.h:85

   PI_MODEL_A : constant := 0;  --  ./wiringPi.h:91
   PI_MODEL_B : constant := 1;  --  ./wiringPi.h:92
   PI_MODEL_AP : constant := 2;  --  ./wiringPi.h:93
   PI_MODEL_BP : constant := 3;  --  ./wiringPi.h:94
   PI_MODEL_2 : constant := 4;  --  ./wiringPi.h:95
   PI_ALPHA : constant := 5;  --  ./wiringPi.h:96
   PI_MODEL_CM : constant := 6;  --  ./wiringPi.h:97
   PI_MODEL_07 : constant := 7;  --  ./wiringPi.h:98
   PI_MODEL_3B : constant := 8;  --  ./wiringPi.h:99
   PI_MODEL_ZERO : constant := 9;  --  ./wiringPi.h:100
   PI_MODEL_CM3 : constant := 10;  --  ./wiringPi.h:101
   PI_MODEL_ZERO_W : constant := 12;  --  ./wiringPi.h:102
   PI_MODEL_3BP : constant := 13;  --  ./wiringPi.h:103
   PI_MODEL_3AP : constant := 14;  --  ./wiringPi.h:104
   PI_MODEL_CM3P : constant := 16;  --  ./wiringPi.h:105
   PI_MODEL_4B : constant := 17;  --  ./wiringPi.h:106
   PI_MODEL_ZERO_2W : constant := 18;  --  ./wiringPi.h:107
   PI_MODEL_400 : constant := 19;  --  ./wiringPi.h:108
   PI_MODEL_CM4 : constant := 20;  --  ./wiringPi.h:109

   PI_VERSION_1 : constant := 0;  --  ./wiringPi.h:111
   PI_VERSION_1_1 : constant := 1;  --  ./wiringPi.h:112
   PI_VERSION_1_2 : constant := 2;  --  ./wiringPi.h:113
   PI_VERSION_2 : constant := 3;  --  ./wiringPi.h:114

   PI_MAKER_SONY : constant := 0;  --  ./wiringPi.h:116
   PI_MAKER_EGOMAN : constant := 1;  --  ./wiringPi.h:117
   PI_MAKER_EMBEST : constant := 2;  --  ./wiringPi.h:118
   PI_MAKER_UNKNOWN : constant := 3;  --  ./wiringPi.h:119
   --  arg-macro: procedure PI_THREAD (X)
   --    void *X (UNU void *dummy)

   WPI_FATAL : constant Boolean := True;  --  ./wiringPi.h:135
   WPI_ALMOST : constant Boolean  := False;  --  ./wiringPi.h:136

   PiModelNames : array (0 .. 20) of Interfaces.C.Strings.Chars_Ptr  -- ./wiringPi.h:121
     with Import => True, 
     Convention => C, 
     External_Name => "piModelNames";

   PiRevisionNames : array (0 .. 15) of Interfaces.C.Strings.Chars_Ptr  -- ./wiringPi.h:122
     with Import => True, 
     Convention => C, 
     External_Name => "piRevisionNames";

   PiMakerNames : array (0 .. 15) of Interfaces.C.Strings.Chars_Ptr  -- ./wiringPi.h:123
     with Import => True, 
     Convention => C, 
     External_Name => "piMakerNames";

   PiMemorySize : aliased array (0 .. 7) of aliased Int  -- ./wiringPi.h:124
     with Import => True, 
     Convention => C, 
     External_Name => "piMemorySize";

   type WiringPiNodeStruct;
   type WiringPiNodeStruct is record
      PinBase         : aliased Int;  -- ./wiringPi.h:149
      PinMax          : aliased Int;  -- ./wiringPi.h:150
      Fd              : aliased Int;  -- ./wiringPi.h:152
      Data0           : aliased Unsigned;  -- ./wiringPi.h:153
      Data1           : aliased Unsigned;  -- ./wiringPi.h:154
      Data2           : aliased Unsigned;  -- ./wiringPi.h:155
      Data3           : aliased Unsigned;  -- ./wiringPi.h:156
      PinMode         : access procedure
        (Arg1 : access WiringPiNodeStruct;
         Arg2            : Int;
         Arg3            : Int);  -- ./wiringPi.h:158
      PullUpDnControl : access procedure
        (Arg1 : access WiringPiNodeStruct;
         Arg2            : Int;
         Arg3            : Int);  -- ./wiringPi.h:159
      DigitalRead     : access function (Arg1 : access WiringPiNodeStruct; Arg2 : Int) return Int;  -- ./wiringPi.h:160
      DigitalWrite    : access procedure
        (Arg1 : access WiringPiNodeStruct;
         Arg2            : Int;
         Arg3            : Int);  -- ./wiringPi.h:162
      PwmWrite        : access procedure
        (Arg1 : access WiringPiNodeStruct;
         Arg2            : Int;
         Arg3            : Int);  -- ./wiringPi.h:164
      AnalogRead      : access function (Arg1 : access WiringPiNodeStruct; Arg2 : Int) return Int;  -- ./wiringPi.h:165
      AnalogWrite     : access procedure
        (Arg1 : access WiringPiNodeStruct;
         Arg2            : Int;
         Arg3            : Int);  -- ./wiringPi.h:166
      Next            : access WiringPiNodeStruct;  -- ./wiringPi.h:168
   end record
     with Convention => C_Pass_By_Copy;  -- ./wiringPi.h:147

   WiringPiNodes : access WiringPiNodeStruct  -- ./wiringPi.h:171
     with Import => True, 
     Convention => C, 
     External_Name => "wiringPiNodes";

   function WiringPiFailure (Fatal : Int; Message : Interfaces.C.Strings.Chars_Ptr  -- , ...
                            ) return Int  -- ./wiringPi.h:195
     with Import => True, 
     Convention => C, 
     External_Name => "wiringPiFailure";

   function WiringPiFindNode (Pin : Int) return access WiringPiNodeStruct  -- ./wiringPi.h:199
     with Import => True, 
     Convention => C, 
     External_Name => "wiringPiFindNode";

   function WiringPiNewNode (PinBase : Int; NumPins : Int) return access WiringPiNodeStruct  -- ./wiringPi.h:200
     with Import => True, 
     Convention => C, 
     External_Name => "wiringPiNewNode";

   procedure WiringPiVersion (Major : access Int; Minor : access Int)  -- ./wiringPi.h:202
     with Import => True, 
     Convention => C, 
     External_Name => "wiringPiVersion";

   function WiringPiSetup return Int  -- ./wiringPi.h:203
     with Import => True, 
     Convention => C, 
     External_Name => "wiringPiSetup";

   function WiringPiSetupSys return Int  -- ./wiringPi.h:204
     with Import => True, 
     Convention => C, 
     External_Name => "wiringPiSetupSys";

   function WiringPiSetupGpio return Int  -- ./wiringPi.h:205
     with Import => True, 
     Convention => C, 
     External_Name => "wiringPiSetupGpio";

   function WiringPiSetupPhys return Int  -- ./wiringPi.h:206
     with Import => True, 
     Convention => C, 
     External_Name => "wiringPiSetupPhys";

   procedure PinModeAlt (Pin : Int; Mode : Int)  -- ./wiringPi.h:208
     with Import => True, 
     Convention => C, 
     External_Name => "pinModeAlt";

   procedure PinMode (Pin : Int; Mode : Int)  -- ./wiringPi.h:209
     with Import => True, 
     Convention => C, 
     External_Name => "pinMode";

   procedure PullUpDnControl (Pin : Int; Pud : Int)  -- ./wiringPi.h:210
     with Import => True, 
     Convention => C, 
     External_Name => "pullUpDnControl";

   function DigitalRead (Pin : Int) return Int  -- ./wiringPi.h:211
     with Import => True, 
     Convention => C, 
     External_Name => "digitalRead";

   procedure DigitalWrite (Pin : Int; Value : Int)  -- ./wiringPi.h:212
     with Import => True, 
     Convention => C, 
     External_Name => "digitalWrite";

   function DigitalRead8 (Pin : Int) return Unsigned  -- ./wiringPi.h:213
     with Import => True, 
     Convention => C, 
     External_Name => "digitalRead8";

   procedure DigitalWrite8 (Pin : Int; Value : Int)  -- ./wiringPi.h:214
     with Import => True, 
     Convention => C, 
     External_Name => "digitalWrite8";

   procedure PwmWrite (Pin : Int; Value : Int)  -- ./wiringPi.h:215
     with Import => True, 
     Convention => C, 
     External_Name => "pwmWrite";

   function AnalogRead (Pin : Int) return Int  -- ./wiringPi.h:216
     with Import => True, 
     Convention => C, 
     External_Name => "analogRead";

   procedure AnalogWrite (Pin : Int; Value : Int)  -- ./wiringPi.h:217
     with Import => True, 
     Convention => C, 
     External_Name => "analogWrite";

   function WiringPiSetupPiFace return Int  -- ./wiringPi.h:222
     with Import => True, 
     Convention => C, 
     External_Name => "wiringPiSetupPiFace";

   function WiringPiSetupPiFaceForGpioProg return Int  -- ./wiringPi.h:223
     with Import => True, 
     Convention => C, 
     External_Name => "wiringPiSetupPiFaceForGpioProg";

   function PiGpioLayout return Int  -- ./wiringPi.h:227
     with Import => True, 
     Convention => C, 
     External_Name => "piGpioLayout";

   function PiBoardRev return Int  -- ./wiringPi.h:228
     with Import => True, 
     Convention => C, 
     External_Name => "piBoardRev";

   procedure PiBoardId
     (Model      : access Int;
      Rev        : access Int;
      Mem        : access Int;
      Maker      : access Int;
      OverVolted : access Int)  -- ./wiringPi.h:229
     with Import => True, 
     Convention => C, 
     External_Name => "piBoardId";

   function WpiPinToGpio (WpiPin : Int) return Int  -- ./wiringPi.h:230
     with Import => True, 
     Convention => C, 
     External_Name => "wpiPinToGpio";

   function PhysPinToGpio (PhysPin : Int) return Int  -- ./wiringPi.h:231
     with Import => True, 
     Convention => C, 
     External_Name => "physPinToGpio";

   procedure SetPadDrive (Group : Int; Value : Int)  -- ./wiringPi.h:232
     with Import => True, 
     Convention => C, 
     External_Name => "setPadDrive";

   function GetAlt (Pin : Int) return Int  -- ./wiringPi.h:233
     with Import => True, 
     Convention => C, 
     External_Name => "getAlt";

   procedure PwmToneWrite (Pin : Int; Freq : Int)  -- ./wiringPi.h:234
     with Import => True, 
     Convention => C, 
     External_Name => "pwmToneWrite";

   procedure PwmSetMode (Mode : Int)  -- ./wiringPi.h:235
     with Import => True, 
     Convention => C, 
     External_Name => "pwmSetMode";

   procedure PwmSetRange (C_Range : Unsigned)  -- ./wiringPi.h:236
     with Import => True, 
     Convention => C, 
     External_Name => "pwmSetRange";

   procedure PwmSetClock (Divisor : Int)  -- ./wiringPi.h:237
     with Import => True, 
     Convention => C, 
     External_Name => "pwmSetClock";

   procedure GpioClockSet (Pin : Int; Freq : Int)  -- ./wiringPi.h:238
     with Import => True, 
     Convention => C, 
     External_Name => "gpioClockSet";

   function DigitalReadByte return Unsigned  -- ./wiringPi.h:239
     with Import => True, 
     Convention => C, 
     External_Name => "digitalReadByte";

   function DigitalReadByte2 return Unsigned  -- ./wiringPi.h:240
     with Import => True, 
     Convention => C, 
     External_Name => "digitalReadByte2";

   procedure DigitalWriteByte (Value : Int)  -- ./wiringPi.h:241
     with Import => True, 
     Convention => C, 
     External_Name => "digitalWriteByte";

   procedure DigitalWriteByte2 (Value : Int)  -- ./wiringPi.h:242
     with Import => True, 
     Convention => C, 
     External_Name => "digitalWriteByte2";

   function WaitForInterrupt (Pin : Int; MS : Int) return Int  -- ./wiringPi.h:247
     with Import => True, 
     Convention => C, 
     External_Name => "waitForInterrupt";

   function WiringPiISR
     (Pin        : Int;
      Mode       : Int;
      C_Function : access procedure) return Int  -- ./wiringPi.h:248
     with Import => True, 
     Convention => C, 
     External_Name => "wiringPiISR";

   function PiThreadCreate (Fn : access function (Arg1 : System.Address) return System.Address) return Int  -- ./wiringPi.h:252
     with Import => True, 
     Convention => C, 
     External_Name => "piThreadCreate";

   procedure PiLock (Key : Int)  -- ./wiringPi.h:253
     with Import => True, 
     Convention => C, 
     External_Name => "piLock";

   procedure PiUnlock (Key : Int)  -- ./wiringPi.h:254
     with Import => True, 
     Convention => C, 
     External_Name => "piUnlock";

   function PiHiPri (Pri : Int) return Int  -- ./wiringPi.h:258
     with Import => True, 
     Convention => C, 
     External_Name => "piHiPri";

   procedure C_Delay (HowLong : Unsigned)  -- ./wiringPi.h:262
     with Import => True, 
     Convention => C, 
     External_Name => "delay";

   procedure DelayMicroseconds (HowLong : Unsigned)  -- ./wiringPi.h:263
     with Import => True, 
     Convention => C, 
     External_Name => "delayMicroseconds";

   function Millis return Unsigned  -- ./wiringPi.h:264
     with Import => True, 
     Convention => C, 
     External_Name => "millis";

   function Micros return Unsigned  -- ./wiringPi.h:265
     with Import => True, 
     Convention => C, 
     External_Name => "micros";

end WiringPI.WiringPi_H;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
