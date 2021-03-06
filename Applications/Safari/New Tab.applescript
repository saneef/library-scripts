-- Make Safari Open New Tab Next to the Current Tab
--
-- Use with FastScripts
--
-- Based on John Gruber's Script
-- https://daringfireball.net/2018/12/safari_new_tab_next_to_current_tab

tell application "System Events"
	if exists (window 1 of process "Safari") then
		tell application "Safari"
			tell front window
				set _old_tab to current tab
				set _new_tab to make new tab at after _old_tab
				set current tab to _new_tab
			end tell
		end tell
	else
		tell application "Safari"
			make new document
		end tell
	end if
end tell
