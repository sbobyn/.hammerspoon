local hyper = {"alt", "ctrl"}
  
  -- full screen
hs.hotkey.bind(
    hyper,
    "f",
    function()
        hs.window.focusedWindow():moveToUnit({0, 0, 1, 1})
    end
)

-- center on screen
hs.hotkey.bind(
    hyper,
    "c",
    function()
        hs.window.focusedWindow():centerOnScreen()
    end
)

-- half of screen
hs.hotkey.bind(
    hyper,
    "left",
    function()
        hs.window.focusedWindow():moveToUnit({0, 0, 0.5, 1})
    end
)
hs.hotkey.bind(
    hyper,
    "right",
    function()
        hs.window.focusedWindow():moveToUnit({0.5, 0, 0.5, 1})
    end
)
hs.hotkey.bind(
    hyper,
    "up",
    function()
        hs.window.focusedWindow():moveToUnit({0, 0, 1, 0.5})
    end
)
hs.hotkey.bind(
    hyper,
    "down",
    function()
        hs.window.focusedWindow():moveToUnit({0, 0.5, 1, 0.5})
    end
)

-- quarter of screen
hs.hotkey.bind(
    {"alt", "ctrl","cmd"},
    "left",
    function()
        hs.window.focusedWindow():moveToUnit({0, 0, 0.5, 0.5})
    end
)
hs.hotkey.bind(
    {"alt", "ctrl","cmd"},
    "down",
    function()
        hs.window.focusedWindow():moveToUnit({0, 0.5, 0.5, 0.5})
    end
)
hs.hotkey.bind(
    {"alt", "ctrl","cmd"},
    "up",
    function()
        hs.window.focusedWindow():moveToUnit({0.5, 0, 0.5, 0.5})
    end
)
hs.hotkey.bind(
    {"alt", "ctrl","cmd"},
    "right",
    function()
        hs.window.focusedWindow():moveToUnit({0.5, 0.5, 0.5, 0.5})
    end
)

-- move between windows


-- tabs


-- minimize window

hs.hotkey.bind(
    hyper,
    ",",
    function()
        hs.window.focusedWindow():minimize()
    end
)

-- unminimize window

hs.hotkey.bind(
    hyper,
    ".",
    function()
        hs.window:unminimize()
    end
)


-- App launching

hs.loadSpoon("SpoonInstall")

spoon.SpoonInstall:andUse("AppLauncher", {
    hotkeys = {
        c = "Google Chrome",
        s = "Simulator",
        x = "XCode",
        v = "Visual Studio Code",
        n = "Notes",
        m = "Mail",
        h = "Hammerspoon",
        t = "Terminal",
        d = "Discord Canary",
        o = "Microsoft Outlook",
        l = "Slack",
        z = "zoom.us"
    }
})

-- Focus windows by direction

local function focus(direction)
    local fn = "focusWindow" .. (direction:gsub("^%l", string.upper))

    return function()
        local win = hs.window.focusedWindow()
        if not win then return end

        win[fn]()
    end
end

  ----------
-- Window navigation (tmux-like)
----------

hs.hotkey.bind(hyper, "i", focus("north"))
hs.hotkey.bind(hyper, "l", focus("east"))
hs.hotkey.bind(hyper, "k", focus("south"))
hs.hotkey.bind(hyper, "j", focus("west"))