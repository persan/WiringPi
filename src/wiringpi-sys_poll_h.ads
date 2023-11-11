pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package WiringPI.sys_poll_h is

   subtype nfds_t is unsigned_long;  -- /usr/include/sys/poll.h:33

   type pollfd is record
      fd : aliased int;  -- /usr/include/sys/poll.h:38
      events : aliased short;  -- /usr/include/sys/poll.h:39
      revents : aliased short;  -- /usr/include/sys/poll.h:40
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/sys/poll.h:36

   function poll
     (uu_fds : access pollfd;
      uu_nfds : nfds_t;
      uu_timeout : int) return int  -- /usr/include/sys/poll.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "poll";

end WiringPI.sys_poll_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
