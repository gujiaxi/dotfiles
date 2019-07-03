----------------------
--/ Key Definition /--
----------------------
hyper = {'ctrl', 'alt'}

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
local winPos = {
  left  = function() push(0.0, 0.0, 0.5, 1.0) end,
  right = function() push(0.5, 0.0, 0.5, 1.0) end,
  up    = function() push(0.0, 0.0, 1.0, 1.0) end,
  down  = function() push(0.1, 0.1, 0.5, 0.6) end
}
hs.window.animationDuration = 0
for key, pos in pairs(winPos) do hs.hotkey.bind(hyper, key, pos) end

--------------------
--/ App Luancher /--
--------------------
local keyApp = {
  e = "Emacs",
  f = "Finder",
  m = "Mail",
  s = "Safari",
  t = "Terminal"
}
for key, app in pairs(keyApp) do
  hs.hotkey.bind(hyper, key, nil, function() hs.application.launchOrFocus(app) end)
end

-------------------------
--/ Auto Wifi Toggle  /--
-------------------------
function wifiToggle(state)
  cmd = "networksetup -setairportpower en0 "..(state)
  return hs.osascript.applescript(string.format('do shell script "%s"', cmd))
end
function caffeinateCallback(eventType)
  if (eventType == hs.caffeinate.watcher.screensDidLock) then
    result = wifiToggle("off")
    print(string.format("Screen locked and Wifi toggle: %s.", result))
  elseif (eventType == hs.caffeinate.watcher.screensDidUnlock) then
    result = wifiToggle("on")
    print(string.format("Scren unlocked and Wifi toggle: %s.", result))
  end
end
caffeinateWatcher = hs.caffeinate.watcher.new(caffeinateCallback)
caffeinateWatcher:start()
