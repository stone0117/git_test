tell application "iTerm"


  set session1 to (current session of current window)
  write session1 text "cd ~/soft"

  set session2 to (split vertically session1 with profile "Default")
  write session2 text "cd ~/Desktop"

  set session3 to (split horizontally session1 with profile "Default")
  write session3 text "cd ~/Downloads"

  split horizontally session2 with profile "Default"


end tell

-- 为毛中文是乱码

--  set finderPath to ""
--
--  tell application "Finder"
--    try
--      set finderFolder to (folder of the front window as alias)
--    on error
--      set finderFolder to (path to home folder as alias)
--    end try
--    set finderPath to quoted form of POSIX path of finderFolder
--  end tell
--
--  tell application "iTerm"
--    activate
--    try
--      set _terminal to current window
--      set _session to current session of _terminal
--    on error
--      create window with profile "Default"
--      set _session to current session of current window
--    end try
--    tell _session
--      write text "cd " & finderPath
--    end tell
--  end tell
