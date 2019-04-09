----------------------
--/ Key Definition /--
----------------------
hyper = {'ctrl', 'alt', 'cmd'}
hyperShift = {'ctrl', 'alt', 'cmd', 'shift'}

--------------------
--/ App Launcher /--
--------------------
local key2app = {
   c = 'Calendar',
   e = 'Emacs',
   f = 'Finder',
   i = 'iTunes',
   m = 'Mail',
   n = 'Notes',
   r = 'Reminders',
   s = 'Safari',
   t = 'Terminal',
   w = 'WeChat'
}
for key, app in pairs(key2app) do
   hs.hotkey.bind(hyper, key, nil, function() hs.application.launchOrFocus(app) end)
end

----------------------
--/ Window Resizer /--
----------------------
function push(x, y, w, h)
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  f.x = max.x + (max.w*x)
  f.y = max.y + (max.h*y)
  f.w = max.w*w
  f.h = max.h*h
  win:setFrame(f)
end
hs.window.animationDuration = 0
hs.hotkey.bind(hyper, "left", function() push(0, 0, 0.5, 1) end)
hs.hotkey.bind(hyper, "right", function() push(0.5, 0, 0.5, 1) end)
hs.hotkey.bind(hyper, "up", function() push(0, 0, 1, 1) end)
hs.hotkey.bind(hyper, "down", function() push(0.1, 0.1, 0.52, 0.6) end)
