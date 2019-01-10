import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.SetWMName
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

main = do
    xmproc <- spawnPipe "xmobar"
    xmonad $ docks def
        { manageHook = manageDocks <+> manageHook defaultConfig
        , layoutHook = avoidStruts  $  layoutHook defaultConfig
        , logHook = dynamicLogWithPP xmobarPP
                        { ppOutput = hPutStrLn xmproc
                        , ppTitle = xmobarColor "green" "" . shorten 50
                        }
        , modMask = mod4Mask     -- Rebind Mod to the Windows key
        , startupHook = setWMName "LG3D"
        } `additionalKeys`
        [ ((mod4Mask .|. shiftMask, xK_z), spawn "i3lock")
        , ((0, 0x1008ff12), spawn "amixer -q set Master toggle")
        , ((0, 0x1008ffb2), spawn "amixer -q set Capture toggle")
        , ((0, 0x1008ff11), spawn "amixer -q set Master 1- unmute")
        , ((0, 0x1008ff13), spawn "amixer -q set Master 1+ unmute")
        , ((mod4Mask .|. shiftMask .|. controlMask, xK_Return), spawn "/home/alex/.local/bin/alacritty")
        , ((mod4Mask .|. shiftMask, xK_q), kill)
        , ((controlMask, xK_Print), spawn "sleep 0.2; scrot -s")
        , ((0, xK_Print), spawn "scrot")
        ]

myManageHook = composeAll
    [ className =? "xfce4-notifyd" --> doIgnore
    ]
