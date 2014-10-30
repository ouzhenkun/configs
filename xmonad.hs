import XMonad
import XMonad.Config.Gnome
import XMonad.Layout.NoBorders
import XMonad.Hooks.ManageHelpers
import XMonad.Util.Run (spawnPipe)
import XMonad.Hooks.EwmhDesktops
import XMonad.Util.EZConfig

myModMask = mod4Mask

main = do
    xmonad $ gnomeConfig {
        modMask            = myModMask
      -- fix chrome f11 fullscreen
      , handleEventHook    = fullscreenEventHook
      , focusFollowsMouse  = False
      , borderWidth        = 1
      , normalBorderColor  = "#444444"
      , focusedBorderColor = "#0033ff"
      -- remove borders when there is only one window in the workspace
      , layoutHook         = smartBorders (layoutHook gnomeConfig)
      , manageHook         = myManageHook <+> manageHook gnomeConfig
    } `additionalKeys` myKeyBindings

myManageHook = composeAll . concat $
    [ [ isFullscreen                  --> doFullFloat
      , isDialog                      --> doCenterFloat
      , (className =? "VirtualBox")   --> doShift "5"
      ]
    , [ className =? c --> doFloat | c <- myFloatsC ]
    , [ appName   =? a --> doFloat | a <- myFloatsA ]
    ]
    where
        myFloatsC =
         [ "Xmessage", "Empathy", "VirtualBox", "Rhythmbox"
         , "Gnone-panel", "Gnome-contacts", "Gnome-power-statistics"
         , "Nm-connection-editor", "Win.py"
         ]
        myFloatsA =
        -- Google Hangouts extension Windows
         [ "crx_nckgahadagoaajjgafhacjanaoiihapd"
        -- Google Keep extension Windows
         , "crx_anllmpockiaoeomoiciinmbomonmmbke"
         ]

myKeyBindings =
    [ ((myModMask, xK_c), kill)
    , ((myModMask, xK_p), spawn "synapse")
    , ((myModMask, xK_o), spawn "gnome-terminal")
    , ((myModMask, xK_i), spawn (chrome ++ myChromeProfile))
    , ((myModMask, xK_u), spawn (chrome ++ otherChromeProfile))
    , ((myModMask .|. shiftMask, xK_i), spawn gmail)
    ]

-- chrome multiple users
myChromeProfile    = " --profile-directory='Profile 1'"
otherChromeProfile = " --profile-directory='Default'"
chrome             = "google-chrome"
gmail              = chrome ++ " 'http://mail.google.com'" ++ myChromeProfile

