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
    {"alt", "ctrl"},
    "left",
    function()
        hs.window.focusedWindow():moveToUnit({0, 0, 0.5, 0.5})
    end
)
hs.hotkey.bind(
    {"alt", "ctrl"},
    "down",
    function()
        hs.window.focusedWindow():moveToUnit({0, 0.5, 0.5, 0.5})
    end
)
hs.hotkey.bind(
    {"alt", "ctrl"},
    "up",
    function()
        hs.window.focusedWindow():moveToUnit({0.5, 0, 0.5, 0.5})
    end
)
hs.hotkey.bind(
    {"alt", "ctrl"},
    "right",
    function()
        hs.window.focusedWindow():moveToUnit({0.5, 0.5, 0.5, 0.5})
    end
)

-- move between windows


-- tabs




-- App launching

hs.loadSpoon("SpoonInstall")

spoon.SpoonInstall:andUse("AppLauncher", {
    hotkeys = {
        c = "Google Chrome",
        s = "Safari",
        x = "XCode",
        v = "Visual Studio Code",
        n = "Notes",
        m = "Mail",
        h = "Hammerspoon",
        t = "Terminal",
        d = "Discord Canary"
    }
})

-- screen movement

spoon.SpoonInstall:andUse("WindowScreenLeftAndRight")

spoon.WindowScreenLeftAndRight:bindHotkeys(spoon.WindowScreenLeftAndRight.defaultHotkeys)


-- mouse movement

spoon.SpoonInstall:andUse("MouseFollowsFocus")
spoon.MouseFollowsFocus:updateMouse(hs.window.focusedWindow())

