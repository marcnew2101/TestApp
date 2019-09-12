function init()
    m.passwordKeyboard = m.top.findNode("passwordKeyboard")
    m.passwordKeyboard.title = "Enter Password"
    m.passwordKeyboard.buttons = ["Finish", "Back"]
    m.passwordKeyboard.keyboard.textEditBox.secureMode = true

    m.passwordKeyboard.keyboard.ObserveField("text", "OnChangeText")
    m.passwordKeyboard.buttongroup.ObserveField("buttonSelected", "OnButtonSelected")
    m.top.ObserveField("focusedChild", "OnChildFocused")
end function

sub OnChildFocused()
    if m.top.isInFocusChain() and not m.passwordKeyboard.isInFocusChain() then
        m.passwordKeyboard.setFocus(true)
    end if
end sub

sub OnChangeText()
    print m.passwordKeyboard.keyboard.text
end sub


' function onKeyEvent(key as String, press as Boolean) as Boolean
'     handled = false
'     if press then
'         if key = "back" then
'             m.top.close = true
'         end if
'         if key = "down" and not m.passwordKeyboard.buttongroup.isInFocusChain() then
'             m.passwordKeyboard.buttongroup.setFocus(true)
'             handled = true
'         else
'             m.passwordKeyboard.keyboard.setFocus(true)
'             handled = true
'         end if

'         if key = "up" and not m.passwordKeyboard.keyboard.hasFocus() then
'             m.passwordKeyboard.keyboard.setFocus(true)
'             handled = true
'         else
'             m.passwordKeyboard.buttongroup.setFocus(true)
'             handled = true
'         end if
'     end if
'     return handled
' end function

' function onKeyEvent(key as String, press as Boolean) as Boolean
'     handled = false
'     if press then
'         if key = "down" and not m.keyboard.IsInFocusChain() then
'             m.keyboard.setFocus(true)
'             m.keyboard.getChild(0).getChild(0).jumpToItem = 0
'             handled = true
'         else if key = "down" and not m.buttongroup.IsInFocusChain() then
'             m.buttongroup.setFocus(true)
'             handled = true
'         else if key = "up" and not m.buttongroup.IsInFocusChain() then
'             m.buttongroup.setFocus(true)
'             handled = true
'         else if key = "up" and not m.keyboard.IsInFocusChain() then
'             m.keyboard.setFocus(true)
'             m.keyboard.getChild(0).getChild(0).jumpToItem = 36
'             handled = true
'         end if
'     end if
'     return handled
' end function