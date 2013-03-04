-- Imports.
import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.FadeInactive

myLogHook :: X ()

myLogHook = fadeInactiveLogHook fadeAmount
	  where fadeAmount = 0.8

-- The main function.
main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig

-- Command to launch the bar.
myBar = "xmobar"

-- Custom terminal 
myTerminal  = "konsole"

myNormalBorderColor  = "black"
myFocusedBorderColor = "red"
myBorderWidth = 1

-- Custom PP, configure it as you like. It determines what's being written to the bar.
myPP = xmobarPP { ppCurrent = xmobarColor "#429942" "" . wrap "<" ">" }

-- Keybinding to toggle the gap for the bar.
toggleStrutsKey XConfig { XMonad.modMask = modMask } = (modMask, xK_b)

-- Main configuration, override the defaults to your liking.
myConfig = defaultConfig {
                           modMask = mod4Mask,
                           terminal = myTerminal,
                           borderWidth = myBorderWidth,
                           normalBorderColor = myNormalBorderColor,
                           focusedBorderColor = myFocusedBorderColor,
			   logHook = myLogHook
                         }