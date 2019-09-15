function init()
    m.usernameKeyboard = m.top.findNode("usernameKeyboard")
    m.usernameLabel = m.top.findNode("usernameLabel")
    m.usernameButtonGroup = m.top.findNode("usernameButtonGroup")

    keyboardArea = m.usernameKeyboard.boundingRect()

    centerx = (1920 - keyboardArea.width) / 2
    centery = (1080 - keyboardArea.height) / 2

    m.usernameLabel.translation = [ centerx + 25, centery - 50 ]
    m.usernameKeyboard.translation = [ centerx, centery ]
    m.usernameButtonGroup.translation = [ centerx + 15, centery + 440 ]

    m.usernameLabel.SetFields({
        text: "Enter Username/E-mail"
        width: "0"
        font: "font:LargeBoldSystemFont"
    })

    m.usernameButtonGroup.SetFields({
        buttons: ["Next", "Back"]
        iconUri: ""
        focusedIconUri: ""
    })

    m.top.ObserveField("focusedChild", "OnChildFocused")
end function

sub OnChildFocused()
    if m.top.isInFocusChain() and not m.usernameKeyboard.isInFocusChain() and not m.usernameButtonGroup.isInFocusChain() then
        m.usernameKeyboard.setFocus(true)
    end if
end sub

function onKeyEvent(key as String, press as Boolean) as Boolean
    handled = false
    if press then
        if key = "back" then
            m.top.close = true
        end if
        if key = "down" and m.usernameKeyboard.isInFocusChain() and not m.usernameButtonGroup.isInFocusChain() then
            m.usernameButtonGroup.setFocus(true)
            handled = true
        else
            m.usernameKeyboard.setFocus(true)
            handled = true
        end if

        if key = "up" and not m.usernameKeyboard.hasFocus() then
            m.usernameKeyboard.setFocus(true)
            handled = true
        else
            m.usernameButtonGroup.setFocus(true)
            handled = true
        end if
    end if
    return handled
end function


' function onKeyEvent(key as String, press as Boolean) as Boolean
'     handled = false
'     if press then
'         if key = "back" and m.usernameKeyboard.isInFocusChain() then
'             ' m.usernameKeyboard.close = true
'             m.top.close = true
'         else if key = "back"
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