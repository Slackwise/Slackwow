local addon = _G.Slackwow

function addon:SetBindings()
    local class = select(2, UnitClass("player"))
    local b = addon.bindings

    LoadBindings(DEFAULT_BINDINGS)
    
    for k, v in pairs(b.global) do SetBinding(k, v) end
    for k, v in pairs(b[class].command) do SetBinding(k, v) end
    for k, v in pairs(b[class].spell) do SetBindingSpell(k, v) end
    for k, v in pairs(b[class].macro) do SetBindingMacro(k, v) end
    for k, v in pairs(b[class].item) do SetBindingItem(k, v) end

    SaveBindings(2)
    print(class .. " binding presets loaded!")
end

addon.bindings = {
    global = {
        ["BUTTON3"]                       = "TOGGLEAUTORUN",
        ["PRINTSCREEN"]                   = "SCREENSHOT",
        ["NUMPAD0"]                       = "RAIDTARGET8",
        ["NUMPAD1"]                       = "RAIDTARGET7",
        ["NUMPAD2"]                       = "RAIDTARGET2",
        ["NUMPAD3"]                       = "RAIDTARGET4",
        ["NUMPAD4"]                       = "RAIDTARGET6",
        ["NUMPAD5"]                       = "RAIDTARGET5",
        ["NUMPAD6"]                       = "RAIDTARGET1",
        ["NUMPAD7"]                       = "RAIDTARGET3",
        ["NUMPADDECIMAL"]                 = "RAIDTARGETNONE",
        ["B"]                             = "TOGGLEBACKPACK",
        ["G"]                             = "TARGETLASTHOSTILE",
        ["SHIFT-B"]                       = "OPENALLBAGS",
        ["SHIFT-MOUSEWHEELUP"]            = "NONE",
        ["SHIFT-MOUSEWHEELDOWN"]          = "NONE",
        ["SHIFT-UP"]                      = "NONE",
        ["SHIFT-DOWN"]                    = "NONE",
        ["CTRL-H"]                        = "TOGGLEUI",
        ["CTRL-M"]                        = "TOGGLEMUSIC",
        ["CTRL-S"]                        = "NONE",
        ["CTRL-SHIFT-R"]                  = "TOGGLEFPS",
        ["ALT-C"]                         = "TOGGLECHARACTER0",
        ["ALT-M"]                         = "TOGGLESOUND",
    },
    HUNTER = {
        command = {
            ["3"]                         = "ACTIONBUTTON4",
            ["4"]                         = "ACTIONBUTTON5",
            ["SHIFT-ENTER"]               = "REPLY",
            ["SHIFT-3"]                   = "ACTIONBUTTON3",
            ["CTRL-ENTER"]                = "REPLY2",
            ["CTRL-F"]                    = "ACTIONBUTTON12",
        },
        spell = {
            ["2"]                         = "Kill Command",
            ["5"]                         = "Kill Shot",
            ["E"]                         = "Wing Clip",
            ["F"]                         = "Concussive Shot",
            ["T"]                         = "Deterrence",
            ["SHIFT-3"]                   = "Multi-Shot",
            ["SHIFT-4"]                   = "Arcane Shot",
            ["SHIFT-5"]                   = "Widow Venom",
            ["SHIFT-C"]                   = "Camouflage",
            ["SHIFT-E"]                   = "Raptor Strike",
            ["SHIFT-F"]                   = "Serpent Sting",
            ["SHIFT-T"]                   = "Frost Trap",
            ["CTRL-SPACE"]                = "Disengage",
            ["CTRL-3"]                    = "Multi-Shot",
            ["CTRL-4"]                    = "Tranquilizing Shot",
            ["CTRL-E"]                    = "Scatter Shot",
            ["CTRL-Q"]                    = "Mend Pet",
            ["CTRL-T"]                    = "Freezing Trap",
            ["CTRL-Z"]                    = "Feign Death",
            ["ALT-F"]                     = "Distracting Shot",
            ["ALT-T"]                     = "Trueshot Aura",
            ["ALT-SHIFT-F"]               = "Eyes of the Beast",
            ["ALT-SHIFT-Q"]               = "Move To",
            ["ALT-CTRL-A"]                = "Readiness",
            ["ALT-CTRL-Q"]                = "Revive Pet",
            ["ALT-CTRL-Z"]                = "Trinket",
        },
        macro = {
            ["BUTTON4"]                   = "Mouse",
            ["`"]                         = "StopAttack",
            ["1"]                         = "Engage",
            ["F5"]                        = "ModeSwitch",
            ["C"]                         = "Call",
            ["Q"]                         = "PetControl",
            ["R"]                         = "R",
            ["SHIFT-SPACE"]               = "Mount",
            ["CTRL-X"]                    = "Bandage",
            ["ALT-E"]                     = "MD",
            ["ALT-Z"]                     = "Peace",
        },
        item = {
        }
    }
}
