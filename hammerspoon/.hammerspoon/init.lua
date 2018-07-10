-- Key definition
hyper = {'ctrl', 'alt', 'cmd'}
hyperShift = {'ctrl', 'alt', 'cmd', 'shift'}

-- App launcher
require('app-launcher')

-- Window resizer
require('window-resizer')

-- Function trigger
require('func-trigger')

-- Reload hs config
hs.hotkey.bind(hyper, 'escape', nil , function() hs.reload() end)
