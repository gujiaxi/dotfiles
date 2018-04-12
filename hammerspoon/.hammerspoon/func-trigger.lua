------------------------
--/ Function Trigger /--
------------------------

function bookmark()
  hs.applescript([[
    set tags to display dialog "Add some tags?" default answer the clipboard
    --> {button returned:"Continue", text returned:"Jen"}
    set res to do shell script "/usr/local/bin/buku -a " & the clipboard & " --tag " & (text returned of tags)
  ]])
end

hs.hotkey.bind(hyper, "b", function() bookmark() end)