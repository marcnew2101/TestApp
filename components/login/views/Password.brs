sub init()
	m.passwordKeyboard = m.top.findNode("passwordKeyboard")
    m.passwordKeyboard.title = "Enter Password"
    m.passwordKeyboard.buttons = ["Finish", "Back"]
	' m.label = m.top.findNode("label")
	' m.buttongroup = m.top.findNode("buttongroup")

	' keyboardArea = m.keyboard.boundingRect()

    ' centerx = (1280 - keyboardArea.width) / 2
    ' centery = (720 - keyboardArea.height) / 2

    ' m.label.translation = [ centerx + 20, centery - 40 ]
    ' m.keyboard.translation = [ centerx, centery ]
    ' m.buttongroup.translation = [ centerx + 10, centery + 310 ]

    ' m.label.SetFields({        
    '     text: "Enter Password"        
    '     width: "0"
  		' font: "font:LargeBoldSystemFont"    
    ' })

    ' m.buttongroup.SetFields({        
    '     buttons: ["Finish", "Back"]
    '     iconUri: ""
    '     focusedIconUri: ""
    ' })

    m.passwordKeyboard.keyboard.ObserveField("text", "OnChangeText")
    m.passwordKeyboard.buttongroup.ObserveField("buttonSelected", "OnButtonSelected")

end sub

sub OnChangeText()
	print m.passwordKeyboard.keyboard.text
end sub

sub OnButtonSelected()
    print "button selected"
end sub

function onKeyEvent(key as String, press as Boolean) as Boolean
    handled = false
    if press then
        if key = "back" then
            m.top.close = true
        end if
        if key = "down" and not m.passwordKeyboard.buttongroup.isInFocusChain() then
            m.passwordKeyboard.buttongroup.setFocus(true)
            handled = true
        else
            m.passwordKeyboard.keyboard.setFocus(true)
            handled = true
        end if

        if key = "up" and not m.passwordKeyboard.keyboard.hasFocus() then
            m.passwordKeyboard.keyboard.setFocus(true)
            handled = true
        else
            m.passwordKeyboard.buttongroup.setFocus(true)
            handled = true
        end if
    end if
    return handled
end function