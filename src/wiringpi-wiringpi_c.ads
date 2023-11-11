pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with WiringPI.wiringPi_h;
with Interfaces.C.Strings;
with WiringPI.bits_stdint_uintn_h;
with WiringPI.bits_pthreadtypes_h;
with System;

package WiringPI.wiringPi_c is

   ENV_DEBUG : aliased constant String := "WIRINGPI_DEBUG" & ASCII.NUL;  --  wiringPi.c:82
   ENV_CODES : aliased constant String := "WIRINGPI_CODES" & ASCII.NUL;  --  wiringPi.c:83
   ENV_GPIOMEM : aliased constant String := "WIRINGPI_GPIOMEM" & ASCII.NUL;  --  wiringPi.c:84

   BCM_PASSWORD : constant := 16#5A000000#;  --  wiringPi.c:94

   FSEL_INPT : constant := 2#000#;  --  wiringPi.c:117
   FSEL_OUTP : constant := 2#001#;  --  wiringPi.c:118
   FSEL_ALT0 : constant := 2#100#;  --  wiringPi.c:119
   FSEL_ALT1 : constant := 2#101#;  --  wiringPi.c:120
   FSEL_ALT2 : constant := 2#110#;  --  wiringPi.c:121
   FSEL_ALT3 : constant := 2#111#;  --  wiringPi.c:122
   FSEL_ALT4 : constant := 2#011#;  --  wiringPi.c:123
   FSEL_ALT5 : constant := 2#010#;  --  wiringPi.c:124

   PAGE_SIZE : constant := (4*1024);  --  wiringPi.c:139
   BLOCK_SIZE : constant := (4*1024);  --  wiringPi.c:140

   PWM_CONTROL : constant := 0;  --  wiringPi.c:148
   PWM_STATUS : constant := 1;  --  wiringPi.c:149
   PWM0_RANGE : constant := 4;  --  wiringPi.c:150
   PWM0_DATA : constant := 5;  --  wiringPi.c:151
   PWM1_RANGE : constant := 8;  --  wiringPi.c:152
   PWM1_DATA : constant := 9;  --  wiringPi.c:153

   PWMCLK_CNTL : constant := 40;  --  wiringPi.c:157
   PWMCLK_DIV : constant := 41;  --  wiringPi.c:158

   PWM0_MS_MODE : constant := 16#0080#;  --  wiringPi.c:160
   PWM0_USEFIFO : constant := 16#0020#;  --  wiringPi.c:161
   PWM0_REVPOLAR : constant := 16#0010#;  --  wiringPi.c:162
   PWM0_OFFSTATE : constant := 16#0008#;  --  wiringPi.c:163
   PWM0_REPEATFF : constant := 16#0004#;  --  wiringPi.c:164
   PWM0_SERIAL : constant := 16#0002#;  --  wiringPi.c:165
   PWM0_ENABLE : constant := 16#0001#;  --  wiringPi.c:166

   PWM1_MS_MODE : constant := 16#8000#;  --  wiringPi.c:168
   PWM1_USEFIFO : constant := 16#2000#;  --  wiringPi.c:169
   PWM1_REVPOLAR : constant := 16#1000#;  --  wiringPi.c:170
   PWM1_OFFSTATE : constant := 16#0800#;  --  wiringPi.c:171
   PWM1_REPEATFF : constant := 16#0400#;  --  wiringPi.c:172
   PWM1_SERIAL : constant := 16#0200#;  --  wiringPi.c:173
   PWM1_ENABLE : constant := 16#0100#;  --  wiringPi.c:174
   --  unsupported macro: TIMER_LOAD (0x400 >> 2)
   --  unsupported macro: TIMER_VALUE (0x404 >> 2)
   --  unsupported macro: TIMER_CONTROL (0x408 >> 2)
   --  unsupported macro: TIMER_IRQ_CLR (0x40C >> 2)
   --  unsupported macro: TIMER_IRQ_RAW (0x410 >> 2)
   --  unsupported macro: TIMER_IRQ_MASK (0x414 >> 2)
   --  unsupported macro: TIMER_RELOAD (0x418 >> 2)
   --  unsupported macro: TIMER_PRE_DIV (0x41C >> 2)
   --  unsupported macro: TIMER_COUNTER (0x420 >> 2)

   GPIO_PERI_BASE_OLD : constant := 16#20000000#;  --  wiringPi.c:216
   GPIO_PERI_BASE_2835 : constant := 16#3F000000#;  --  wiringPi.c:217
   GPIO_PERI_BASE_2711 : constant := 16#FE000000#;  --  wiringPi.c:218

   GPPUD : constant := 37;  --  wiringPi.c:545

   GPPUPPDN0 : constant := 57;  --  wiringPi.c:548
   GPPUPPDN1 : constant := 58;  --  wiringPi.c:549
   GPPUPPDN2 : constant := 59;  --  wiringPi.c:550
   GPPUPPDN3 : constant := 60;  --  wiringPi.c:551

   GPIO_CLOCK_SOURCE : constant := 1;  --  wiringPi.c:603

   wiringPiNodes : access WiringPI.wiringPi_h.wiringPiNodeStruct  -- wiringPi.c:90
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiNodes";

   GPIO_PADS : aliased unsigned  -- wiringPi.c:133
   with Import => True, 
        Convention => C, 
        External_Name => "GPIO_PADS";

   GPIO_CLOCK_BASE : aliased unsigned  -- wiringPi.c:134
   with Import => True, 
        Convention => C, 
        External_Name => "GPIO_CLOCK_BASE";

   GPIO_BASE : aliased unsigned  -- wiringPi.c:135
   with Import => True, 
        Convention => C, 
        External_Name => "GPIO_BASE";

   GPIO_TIMER : aliased unsigned  -- wiringPi.c:136
   with Import => True, 
        Convention => C, 
        External_Name => "GPIO_TIMER";

   GPIO_PWM : aliased unsigned  -- wiringPi.c:137
   with Import => True, 
        Convention => C, 
        External_Name => "GPIO_PWM";

   usingGpioMem : aliased unsigned  -- wiringPi.c:142
   with Import => True, 
        Convention => C, 
        External_Name => "usingGpioMem";

   wiringPiSetuped : aliased int  -- wiringPi.c:143
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiSetuped";

   gpio : access unsigned  -- wiringPi.c:191
   with Import => True, 
        Convention => C, 
        External_Name => "gpio";

   pwm : access unsigned  -- wiringPi.c:192
   with Import => True, 
        Convention => C, 
        External_Name => "pwm";

   clk : access unsigned  -- wiringPi.c:193
   with Import => True, 
        Convention => C, 
        External_Name => "clk";

   pads : access unsigned  -- wiringPi.c:194
   with Import => True, 
        Convention => C, 
        External_Name => "pads";

   timer : access unsigned  -- wiringPi.c:195
   with Import => True, 
        Convention => C, 
        External_Name => "timer";

   timerIrqRaw : access unsigned  -- wiringPi.c:196
   with Import => True, 
        Convention => C, 
        External_Name => "timerIrqRaw";

   piGpioBase : aliased unsigned  -- wiringPi.c:220
   with Import => True, 
        Convention => C, 
        External_Name => "piGpioBase";

   piModelNames : array (0 .. 20) of Interfaces.C.Strings.chars_ptr  -- wiringPi.c:222
   with Import => True, 
        Convention => C, 
        External_Name => "piModelNames";

   piRevisionNames : array (0 .. 15) of Interfaces.C.Strings.chars_ptr  -- wiringPi.c:247
   with Import => True, 
        Convention => C, 
        External_Name => "piRevisionNames";

   piMakerNames : array (0 .. 15) of Interfaces.C.Strings.chars_ptr  -- wiringPi.c:267
   with Import => True, 
        Convention => C, 
        External_Name => "piMakerNames";

   piMemorySize : aliased array (0 .. 7) of aliased int  -- wiringPi.c:287
   with Import => True, 
        Convention => C, 
        External_Name => "piMemorySize";

   epochMilli : aliased WiringPI.bits_stdint_uintn_h.uint64_t  -- wiringPi.c:301
   with Import => True, 
        Convention => C, 
        External_Name => "epochMilli";

   epochMicro : aliased WiringPI.bits_stdint_uintn_h.uint64_t  -- wiringPi.c:301
   with Import => True, 
        Convention => C, 
        External_Name => "epochMicro";

   wiringPiMode : aliased int  -- wiringPi.c:305
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiMode";

   pinPass : aliased int  -- wiringPi.c:306
   with Import => True, 
        Convention => C, 
        External_Name => "pinPass";

   pinMutex : aliased WiringPI.bits_pthreadtypes_h.pthread_mutex_t  -- wiringPi.c:307
   with Import => True, 
        Convention => C, 
        External_Name => "pinMutex";

   wiringPiDebug : aliased int  -- wiringPi.c:311
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiDebug";

   wiringPiReturnCodes : aliased int  -- wiringPi.c:312
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiReturnCodes";

   wiringPiTryGpioMem : aliased int  -- wiringPi.c:316
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiTryGpioMem";

   sysFds : aliased array (0 .. 63) of aliased int  -- wiringPi.c:321
   with Import => True, 
        Convention => C, 
        External_Name => "sysFds";

   isrFunctions : array (0 .. 63) of access procedure  -- wiringPi.c:331
   with Import => True, 
        Convention => C, 
        External_Name => "isrFunctions";

   pinToGpio : access int  -- wiringPi.c:342
   with Import => True, 
        Convention => C, 
        External_Name => "pinToGpio";

   pinToGpioR1 : aliased array (0 .. 63) of aliased int  -- wiringPi.c:346
   with Import => True, 
        Convention => C, 
        External_Name => "pinToGpioR1";

   pinToGpioR2 : aliased array (0 .. 63) of aliased int  -- wiringPi.c:363
   with Import => True, 
        Convention => C, 
        External_Name => "pinToGpioR2";

   physToGpio : access int  -- wiringPi.c:387
   with Import => True, 
        Convention => C, 
        External_Name => "physToGpio";

   physToGpioR1 : aliased array (0 .. 63) of aliased int  -- wiringPi.c:389
   with Import => True, 
        Convention => C, 
        External_Name => "physToGpioR1";

   physToGpioR2 : aliased array (0 .. 63) of aliased int  -- wiringPi.c:411
   with Import => True, 
        Convention => C, 
        External_Name => "physToGpioR2";

   gpioToGPFSEL : aliased array (0 .. 59) of aliased WiringPI.bits_stdint_uintn_h.uint8_t  -- wiringPi.c:458
   with Import => True, 
        Convention => C, 
        External_Name => "gpioToGPFSEL";

   gpioToShift : aliased array (0 .. 59) of aliased WiringPI.bits_stdint_uintn_h.uint8_t  -- wiringPi.c:472
   with Import => True, 
        Convention => C, 
        External_Name => "gpioToShift";

   gpioToGPSET : aliased array (0 .. 63) of aliased WiringPI.bits_stdint_uintn_h.uint8_t  -- wiringPi.c:486
   with Import => True, 
        Convention => C, 
        External_Name => "gpioToGPSET";

   gpioToGPCLR : aliased array (0 .. 63) of aliased WiringPI.bits_stdint_uintn_h.uint8_t  -- wiringPi.c:495
   with Import => True, 
        Convention => C, 
        External_Name => "gpioToGPCLR";

   gpioToGPLEV : aliased array (0 .. 63) of aliased WiringPI.bits_stdint_uintn_h.uint8_t  -- wiringPi.c:505
   with Import => True, 
        Convention => C, 
        External_Name => "gpioToGPLEV";

   piGpioPupOffset : aliased unsigned  -- wiringPi.c:553
   with Import => True, 
        Convention => C, 
        External_Name => "piGpioPupOffset";

   gpioToPUDCLK : aliased array (0 .. 63) of aliased WiringPI.bits_stdint_uintn_h.uint8_t  -- wiringPi.c:558
   with Import => True, 
        Convention => C, 
        External_Name => "gpioToPUDCLK";

   gpioToPwmALT : aliased array (0 .. 63) of aliased WiringPI.bits_stdint_uintn_h.uint8_t  -- wiringPi.c:568
   with Import => True, 
        Convention => C, 
        External_Name => "gpioToPwmALT";

   gpioToPwmPort : aliased array (0 .. 63) of aliased WiringPI.bits_stdint_uintn_h.uint8_t  -- wiringPi.c:584
   with Import => True, 
        Convention => C, 
        External_Name => "gpioToPwmPort";

   gpioToGpClkALT0 : aliased array (0 .. 63) of aliased WiringPI.bits_stdint_uintn_h.uint8_t  -- wiringPi.c:607
   with Import => True, 
        Convention => C, 
        External_Name => "gpioToGpClkALT0";

   gpioToClkCon : aliased array (0 .. 63) of aliased WiringPI.bits_stdint_uintn_h.uint8_t  -- wiringPi.c:622
   with Import => True, 
        Convention => C, 
        External_Name => "gpioToClkCon";

   gpioToClkDiv : aliased array (0 .. 63) of aliased WiringPI.bits_stdint_uintn_h.uint8_t  -- wiringPi.c:634
   with Import => True, 
        Convention => C, 
        External_Name => "gpioToClkDiv";

   function wiringPiFailure (fatal : int; message : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- wiringPi.c:659
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiFailure";

   procedure setupCheck (fName : Interfaces.C.Strings.chars_ptr)  -- wiringPi.c:685
   with Import => True, 
        Convention => C, 
        External_Name => "setupCheck";

   procedure usingGpioMemCheck (what : Interfaces.C.Strings.chars_ptr)  -- wiringPi.c:702
   with Import => True, 
        Convention => C, 
        External_Name => "usingGpioMemCheck";

   procedure piGpioLayoutOops (why : Interfaces.C.Strings.chars_ptr)  -- wiringPi.c:738
   with Import => True, 
        Convention => C, 
        External_Name => "piGpioLayoutOops";

   function piGpioLayout return int  -- wiringPi.c:747
   with Import => True, 
        Convention => C, 
        External_Name => "piGpioLayout";

   function piBoardRev return int  -- wiringPi.c:882
   with Import => True, 
        Convention => C, 
        External_Name => "piBoardRev";

   procedure piBoardId
     (model : access int;
      rev : access int;
      mem : access int;
      maker : access int;
      warranty : access int)  -- wiringPi.c:956
   with Import => True, 
        Convention => C, 
        External_Name => "piBoardId";

   function wpiPinToGpio (wpiPin : int) return int  -- wiringPi.c:1101
   with Import => True, 
        Convention => C, 
        External_Name => "wpiPinToGpio";

   function physPinToGpio (physPin : int) return int  -- wiringPi.c:1114
   with Import => True, 
        Convention => C, 
        External_Name => "physPinToGpio";

   procedure setPadDrive (group : int; value : int)  -- wiringPi.c:1126
   with Import => True, 
        Convention => C, 
        External_Name => "setPadDrive";

   function getAlt (pin : int) return int  -- wiringPi.c:1154
   with Import => True, 
        Convention => C, 
        External_Name => "getAlt";

   procedure pwmSetMode (mode : int)  -- wiringPi.c:1182
   with Import => True, 
        Convention => C, 
        External_Name => "pwmSetMode";

   procedure pwmSetRange (c_range : unsigned)  -- wiringPi.c:1201
   with Import => True, 
        Convention => C, 
        External_Name => "pwmSetRange";

   procedure pwmSetClock (divisor : int)  -- wiringPi.c:1219
   with Import => True, 
        Convention => C, 
        External_Name => "pwmSetClock";

   procedure gpioClockSet (pin : int; freq : int)  -- wiringPi.c:1270
   with Import => True, 
        Convention => C, 
        External_Name => "gpioClockSet";

   function wiringPiFindNode (pin : int) return access WiringPI.wiringPi_h.wiringPiNodeStruct  -- wiringPi.c:1305
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiFindNode";

   procedure pinModeDummy
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      mode : int)  -- wiringPi.c:1325
   with Import => True, 
        Convention => C, 
        External_Name => "pinModeDummy";

   procedure pullUpDnControlDummy
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      pud : int)  -- wiringPi.c:1326
   with Import => True, 
        Convention => C, 
        External_Name => "pullUpDnControlDummy";

   function digitalReadDummy (node : access WiringPI.wiringPi_h.wiringPiNodeStruct; pin : int) return int  -- wiringPi.c:1329
   with Import => True, 
        Convention => C, 
        External_Name => "digitalReadDummy";

   procedure digitalWriteDummy
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      value : int)  -- wiringPi.c:1330
   with Import => True, 
        Convention => C, 
        External_Name => "digitalWriteDummy";

   procedure pwmWriteDummy
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      value : int)  -- wiringPi.c:1331
   with Import => True, 
        Convention => C, 
        External_Name => "pwmWriteDummy";

   function analogReadDummy (node : access WiringPI.wiringPi_h.wiringPiNodeStruct; pin : int) return int  -- wiringPi.c:1332
   with Import => True, 
        Convention => C, 
        External_Name => "analogReadDummy";

   procedure analogWriteDummy
     (node : access WiringPI.wiringPi_h.wiringPiNodeStruct;
      pin : int;
      value : int)  -- wiringPi.c:1333
   with Import => True, 
        Convention => C, 
        External_Name => "analogWriteDummy";

   function wiringPiNewNode (pinBase : int; numPins : int) return access WiringPI.wiringPi_h.wiringPiNodeStruct  -- wiringPi.c:1335
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiNewNode";

   procedure pinModeAlt (pin : int; mode : int)  -- wiringPi.c:1401
   with Import => True, 
        Convention => C, 
        External_Name => "pinModeAlt";

   procedure pinMode (pin : int; mode : int)  -- wiringPi.c:1430
   with Import => True, 
        Convention => C, 
        External_Name => "pinMode";

   procedure pullUpDnControl (pin : int; pud : int)  -- wiringPi.c:1511
   with Import => True, 
        Convention => C, 
        External_Name => "pullUpDnControl";

   function digitalRead (pin : int) return int  -- wiringPi.c:1572
   with Import => True, 
        Convention => C, 
        External_Name => "digitalRead";

   procedure digitalWrite (pin : int; value : int)  -- wiringPi.c:1635
   with Import => True, 
        Convention => C, 
        External_Name => "digitalWrite";

   procedure pwmWrite (pin : int; value : int)  -- wiringPi.c:1698
   with Import => True, 
        Convention => C, 
        External_Name => "pwmWrite";

   function analogRead (pin : int) return int  -- wiringPi.c:1732
   with Import => True, 
        Convention => C, 
        External_Name => "analogRead";

   procedure analogWrite (pin : int; value : int)  -- wiringPi.c:1751
   with Import => True, 
        Convention => C, 
        External_Name => "analogWrite";

   procedure pwmToneWrite (pin : int; freq : int)  -- wiringPi.c:1769
   with Import => True, 
        Convention => C, 
        External_Name => "pwmToneWrite";

   procedure digitalWriteByte (value : int)  -- wiringPi.c:1803
   with Import => True, 
        Convention => C, 
        External_Name => "digitalWriteByte";

   function digitalReadByte return unsigned  -- wiringPi.c:1836
   with Import => True, 
        Convention => C, 
        External_Name => "digitalReadByte";

   procedure digitalWriteByte2 (value : int)  -- wiringPi.c:1873
   with Import => True, 
        Convention => C, 
        External_Name => "digitalWriteByte2";

   function digitalReadByte2 return unsigned  -- wiringPi.c:1894
   with Import => True, 
        Convention => C, 
        External_Name => "digitalReadByte2";

   function waitForInterrupt (pin : int; mS : int) return int  -- wiringPi.c:1924
   with Import => True, 
        Convention => C, 
        External_Name => "waitForInterrupt";

   function interruptHandler (arg : System.Address) return System.Address  -- wiringPi.c:1968
   with Import => True, 
        Convention => C, 
        External_Name => "interruptHandler";

   function wiringPiISR
     (pin : int;
      mode : int;
      c_function : access procedure) return int  -- wiringPi.c:1993
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiISR";

   procedure initialiseEpoch  -- wiringPi.c:2091
   with Import => True, 
        Convention => C, 
        External_Name => "initialiseEpoch";

   procedure c_delay (howLong : unsigned)  -- wiringPi.c:2115
   with Import => True, 
        Convention => C, 
        External_Name => "delay";

   procedure delayMicrosecondsHard (howLong : unsigned)  -- wiringPi.c:2144
   with Import => True, 
        Convention => C, 
        External_Name => "delayMicrosecondsHard";

   procedure delayMicroseconds (howLong : unsigned)  -- wiringPi.c:2157
   with Import => True, 
        Convention => C, 
        External_Name => "delayMicroseconds";

   function millis return unsigned  -- wiringPi.c:2183
   with Import => True, 
        Convention => C, 
        External_Name => "millis";

   function micros return unsigned  -- wiringPi.c:2211
   with Import => True, 
        Convention => C, 
        External_Name => "micros";

   procedure wiringPiVersion (major : access int; minor : access int)  -- wiringPi.c:2236
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiVersion";

   function wiringPiSetup return int  -- wiringPi.c:2254
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiSetup";

   function wiringPiSetupGpio return int  -- wiringPi.c:2414
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiSetupGpio";

   function wiringPiSetupPhys return int  -- wiringPi.c:2436
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiSetupPhys";

   function wiringPiSetupSys return int  -- wiringPi.c:2458
   with Import => True, 
        Convention => C, 
        External_Name => "wiringPiSetupSys";

end WiringPI.wiringPi_c;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
