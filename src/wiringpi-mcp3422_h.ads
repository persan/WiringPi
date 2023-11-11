pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.mcp3422_h is

   MCP3422_SR_240 : constant := 0;  --  mcp3422.h:24
   MCP3422_SR_60 : constant := 1;  --  mcp3422.h:25
   MCP3422_SR_15 : constant := 2;  --  mcp3422.h:26
   MCP3422_SR_3_75 : constant := 3;  --  mcp3422.h:27

   MCP3422_GAIN_1 : constant := 0;  --  mcp3422.h:29
   MCP3422_GAIN_2 : constant := 1;  --  mcp3422.h:30
   MCP3422_GAIN_4 : constant := 2;  --  mcp3422.h:31
   MCP3422_GAIN_8 : constant := 3;  --  mcp3422.h:32

   function mcp3422Setup
     (pinBase : int;
      i2cAddress : int;
      sampleRate : int;
      gain : int) return int  -- mcp3422.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "mcp3422Setup";

end WiringPI.mcp3422_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
