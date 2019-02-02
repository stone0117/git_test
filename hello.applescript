--display dialog "text" default answer "hello"

--say "hello world"


-- display dialog "hell" giving up after 3

-- display dialog "hello" giving up after 3;


--display dialog "hello" buttons {"first","second"} default button "second" with icon note



--tell application "Finder"
----  get the name of front Finder window 1
--  get the name of Finder window 1
--
--end tell
--
--
--tell application "Finder"
--  close Finder window 1
--
--end tell

--tell application "Finder" to get the index of the first window

--tell application "Finder" to get the current view of the front Finder window
--tell application "Finder" to set the current view of the front Finder window to icon view

-- 关闭所有窗口
--tell application "Finder" to close every window

-- 关闭侧边栏
--tell application "Finder" to set toolbar visible of the front Finder window to true

-- tell application "Finder" to open home


-- 打开指定目录
--tell application "Finder"
----  close every window
----  open home
----  open ("/Users/stone/Documents/test_directory" as POSIX file)
--  open "Macintosh HD:Users:stone:Documents:test_directory:20190201113558__git_t"
--
--  tell the front Finder window
----    set current view to icon view
--    set current view to list view
--  end tell
--end tell

tell application "Safari" to open location "www.baidu.com"

-------------------------------------------

--on alfred_script(q)
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
--end alfred_script
