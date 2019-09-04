sub init()
	m.keyboard = m.top.findNode("keyboard")
	m.label = m.top.findNode("label")
	m.buttongroup = m.top.findNode("buttongroup")

	keyboardArea = m.keyboard.boundingRect()

    centerx = (1280 - keyboardArea.width) / 2
    centery = (720 - keyboardArea.height) / 2

    m.label.translation = [ centerx + 20, centery - 40 ]
    m.keyboard.translation = [ centerx, centery ]
    m.buttongroup.translation = [ centerx + 10, centery + 310 ]

    m.label.SetFields({        
        text: "Enter Password"        
        width: "0"
  		font: "font:LargeBoldSystemFont"    
    })

    m.buttongroup.SetFields({        
        buttons: ["Next"]
        iconUri: ""
        focusedIconUri: ""
    })

    m.keyboard.ObserveField("text", "OnChangeText")
    m.buttongroup.ObserveField("buttonSelected", "OnButtonSelected")

end sub

sub OnChangeText()
	print m.keyboard.text
end sub

sub OnButtonSelected()
    print "button selected"
end sub

function onKeyEvent(key as String, press as Boolean) as Boolean
    handled = false
    if press then
        if key = "down" and not m.keyboard.IsInFocusChain() then
            m.keyboard.setFocus(true)
            m.keyboard.getChild(0).getChild(0).jumpToItem = 0
            handled = true
        else if key = "down" and not m.buttongroup.IsInFocusChain() then
            m.buttongroup.setFocus(true)
            handled = true
        else if key = "up" and not m.buttongroup.IsInFocusChain() then
            m.buttongroup.setFocus(true)
            handled = true
        else if key = "up" and not m.keyboard.IsInFocusChain() then
            m.keyboard.setFocus(true)
            m.keyboard.getChild(0).getChild(0).jumpToItem = 36
            handled = true
        end if
    end if
    return handled
end function