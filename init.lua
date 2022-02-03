-- full screen
hs.hotkey.bind(
    {"alt", "cmd"},
    "f",
    function()
        hs.window.focusedWindow():moveToUnit({0, 0, 1, 1})
    end
)

-- center on screen
hs.hotkey.bind(
    {"alt", "cmd"},
    "c",
    function()
        hs.window.focusedWindow():centerOnScreen()
    end
)

-- half of screen
hs.hotkey.bind(
    {"alt", "cmd"},
    "left",
    function()
        hs.window.focusedWindow():moveToUnit({0, 0, 0.5, 1})
    end
)
hs.hotkey.bind(
    {"alt", "cmd"},
    "right",
    function()
        hs.window.focusedWindow():moveToUnit({0.5, 0, 0.5, 1})
    end
)
hs.hotkey.bind(
    {"alt", "cmd"},
    "up",
    function()
        hs.window.focusedWindow():moveToUnit({0, 0, 1, 0.5})
    end
)
hs.hotkey.bind(
    {"alt", "cmd"},
    "down",
    function()
        hs.window.focusedWindow():moveToUnit({0, 0.5, 1, 0.5})
    end
)

-- quarter of screen
hs.hotkey.bind(
    {"alt", "cmd", "ctrl"},
    "left",
    function()
        hs.window.focusedWindow():moveToUnit({0, 0, 0.5, 0.5})
    end
)
hs.hotkey.bind(
    {"alt", "cmd", "ctrl"},
    "down",
    function()
        hs.window.focusedWindow():moveToUnit({0, 0.5, 0.5, 0.5})
    end
)
hs.hotkey.bind(
    {"alt", "cmd", "ctrl"},
    "up",
    function()
        hs.window.focusedWindow():moveToUnit({0.5, 0, 0.5, 0.5})
    end
)
hs.hotkey.bind(
    {"alt", "cmd", "ctrl"},
    "right",
    function()
        hs.window.focusedWindow():moveToUnit({0.5, 0.5, 0.5, 0.5})
    end
)

-- move between windows

switcher = hs.window.switcher.new()
hs.hotkey.bind('alt','tab','Next window',function()switcher:next()end)
hs.hotkey.bind('alt-shift','tab','Prev window',function()switcher:previous()end)