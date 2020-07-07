-- anon, awesome3 theme

--{{{ Main
local awful = require("awful")
awful.util = require("awful.util")

theme = {}

home          = os.getenv("HOME")
config        = awful.util.getdir("config")
shared        = "/usr/share/awesome"
if not awful.util.file_readable(shared .. "/icons/awesome16.png") then
    shared    = "/usr/share/local/awesome"
end
sharedicons   = shared .. "/icons"
sharedthemes  = shared .. "/themes"
themes        = config .. "/themes"
themename     = "/anon"
if not awful.util.file_readable(themes .. themename .. "/theme.lua") then
       themes = sharedthemes
end
themedir      = themes .. themename

--}}}

theme.font          = "sans 8"

theme.bg_normal     = "#252525"
theme.bg_focus      = "#252525"
theme.bg_urgent     = "#ff0000"

theme.fg_normal     = "#aaaaaa"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffffff"

theme.border_width  = 0
theme.border_normal = "#252525"
theme.border_focus  = "#252525"
theme.border_marked = "#91231c"

-- Display the taglist squares
theme.taglist_squares = true

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--bg_widget    = #cc0000

-- Display close button inside titlebar
theme.titlebar_close_button = true

return theme

