function init()
    m.passwordKeyboard = m.top.findNode("passwordKeyboard")
    m.passwordLabel = m.top.findNode("passwordLabel")
    m.passwordButtonGroup = m.top.findNode("passwordButtonGroup")
    m.passwordKeyboard.textEditBox.secureMode = true

    keyboardArea = m.passwordKeyboard.boundingRect()

    centerx = (1920 - keyboardArea.width) / 2
    centery = (1080 - keyboardArea.height) / 2

    m.passwordLabel.translation = [ centerx + 25, centery - 50 ]
    m.passwordKeyboard.translation = [ centerx, centery ]
    m.passwordButtonGroup.translation = [ centerx + 15, centery + 440 ]

    m.passwordLabel.SetFields({
        text: "Enter Password"
        width: "0"
        font: "font:LargeBoldSystemFont"
    })

    m.passwordButtonGroup.SetFields({
        buttons: ["Finish", "Back"]
        iconUri: ""
        focusedIconUri: ""
    })

    m.top.ObserveField("focusedChild", "OnChildFocused")
end function

sub OnChildFocused()
    if m.top.isInFocusChain() and not m.passwordKeyboard.isInFocusChain() and not m.passwordButtonGroup.isInFocusChain() then
        m.passwordKeyboard.setFocus(true)
    end if
end sub

function onKeyEvent(key as String, press as Boolean) as Boolean
    handled = false
    if press then
        if key = "back" then
            m.top.close = true
        end if
        if key = "down" and m.passwordKeyboard.isInFocusChain() and not m.passwordButtonGroup.isInFocusChain() then
            m.passwordButtonGroup.setFocus(true)
            handled = true
        else
            m.passwordKeyboard.setFocus(true)
            handled = true
        end if

        if key = "up" and not m.passwordKeyboard.hasFocus() then
            m.passwordKeyboard.setFocus(true)
            handled = true
        else
            m.passwordButtonGroup.setFocus(true)
            handled = true
        end if
    end if
    return handled
end function