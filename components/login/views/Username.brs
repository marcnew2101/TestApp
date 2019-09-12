sub init()
	m.usernameKeyboard = m.top.findNode("usernameKeyboard")
    m.usernameKeyboard.title = "Enter Email Address"
    m.usernameKeyboard.buttons = ["Next", "Back"]
	' m.label = m.top.findNode("usernameLabel")
	' m.buttongroup = m.top.findNode("buttongroup")

	' keyboardArea = m.keyboard.boundingRect()

    ' centerx = (1280 - keyboardArea.width) / 2
    ' centery = (720 - keyboardArea.height) / 2

    ' m.label.translation = [ centerx + 20, centery - 40 ]
    ' m.keyboard.translation = [ centerx, centery ]
    ' m.buttongroup.translation = [ centerx + 10, centery + 310 ]

    ' m.label.SetFields({        
    '     text: "Enter Username/E-mail"        
    '     width: "0"
  		' font: "font:LargeBoldSystemFont"    
    ' })

    ' m.buttongroup.SetFields({        
    '     buttons: ["Next"]
    '     iconUri: ""
    '     focusedIconUri: ""
    ' })

    m.usernameKeyboard.keyboard.ObserveField("text", "OnChangeText")
    m.usernameKeyboard.buttongroup.ObserveField("buttonSelected", "OnButtonSelected")

end sub

sub OnChangeText()
	print m.usernameKeyboard.keyboard.text
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
        if key = "down" and not m.usernameKeyboard.buttongroup.isInFocusChain() then
            m.usernameKeyboard.buttongroup.setFocus(true)
            handled = true
        else
            m.usernameKeyboard.keyboard.setFocus(true)
            handled = true
        end if

        if key = "up" and not m.usernameKeyboard.keyboard.hasFocus() then
            m.usernameKeyboard.keyboard.setFocus(true)
            handled = true
        else
            m.usernameKeyboard.buttongroup.setFocus(true)
            handled = true
        end if
    end if
    return handled
end function