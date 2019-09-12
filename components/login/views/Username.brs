function init()
    m.usernameKeyboard = m.top.findNode("usernameKeyboard")
    m.usernameKeyboard.title = "Enter Email Address"
    m.usernameKeyboard.buttons = ["Next", "Back"]

    m.usernameKeyboard.keyboard.ObserveField("text", "OnChangeText")
    m.usernameKeyboard.buttongroup.ObserveField("buttonSelected", "OnButtonSelected")
    m.top.ObserveField("focusedChild", "OnChildFocused")
end function

sub OnChildFocused()
    if m.top.isInFocusChain() and not m.usernameKeyboard.isInFocusChain() then
        m.usernameKeyboard.setFocus(true)
    end if
end sub

sub OnChangeText()
	print m.usernameKeyboard.keyboard.text
    m.usernameKeyboard.close = true
    'm.usernameKeyboard.visible = false
    print m.usernameKeyboard
end sub

' Back key and Options key handler
' function onKeyEvent(key as String, press as Boolean) as Boolean
'     handled = false

'     if press then
'         if key = "back"
'             print "back key pressed"
'             m.usernameKeyboard.close = true
'             handled = true
'         end if
'     end if
'     return handled
' end function

' function onKeyEvent(key as String, press as Boolean) as Boolean
'     handled = false
'     if press then
'         if key = "back" then
'             m.top.close = true
'         end if
'         if key = "down" and not m.usernameKeyboard.buttongroup.isInFocusChain() then
'             m.usernameKeyboard.buttongroup.setFocus(true)
'             handled = true
'         else
'             m.usernameKeyboard.keyboard.setFocus(true)
'             handled = true
'         end if

'         if key = "up" and not m.usernameKeyboard.keyboard.hasFocus() then
'             m.usernameKeyboard.keyboard.setFocus(true)
'             handled = true
'         else
'             m.usernameKeyboard.buttongroup.setFocus(true)
'             handled = true
'         end if
'     end if
'     return handled
' end function