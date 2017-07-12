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
   t = 'iTerm',
   w = 'WeChat'
}

for key, app in pairs(key2app) do
   hs.hotkey.bind(hyper, key, nil, function() hs.application.launchOrFocus(app) end)
end
