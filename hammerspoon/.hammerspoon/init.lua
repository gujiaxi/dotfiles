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

-------------------------
--/ Auto Wifi Toggle  /--
-------------------------
function wifiToggle(state)
  cmd = "networksetup -setairportpower en0 "..(state)
  result = hs.osascript.applescript(string.format('do shell script "%s"', cmd))
end
function caffeinateCallback(eventType)
  if (eventType == hs.caffeinate.watcher.screensDidLock) then
    print("Screen locked.")
    wifiToggle("off")
  elseif (eventType == hs.caffeinate.watcher.screensDidUnlock) then
    print("Scren unlocked.")
    wifiToggle("on")
  end
end
hs.caffeinate.watcher.new(caffeinateCallback):start()
