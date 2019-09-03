sub init()
	m.top.setFocus(true)
	m.keyboard = m.top.findNode("keyboard")
	m.label = m.top.findNode("label")
	m.buttongroup = m.top.findNode("buttongroup")

	keyboardArea = m.keyboard.boundingRect()

    centerx = (1280 - keyboardArea.width) / 2
    centery = (720 - keyboardArea.height) / 2

    m.label.translation = [ centerx + 15, centery - 40 ]
    m.keyboard.translation = [ centerx, centery ]
    m.buttongroup.translation = [ centerx + 5, centery + 300 ]

    m.label.SetFields({        
        text: "Enter Username/E-mail"        
        width: "0"
  		font: "font:LargeBoldSystemFont"    
    })

    m.buttongroup.SetFields({        
        buttons: ["Next"]
        iconUri: ""
        focusedIconUri: ""
    })

    m.keyboard.ObserveField("text", "OnChangeText")

    m.top.observeField("focusedChild","OnFocusChildChange")
end sub

sub OnChangeText()
	print m.keyboard.text
end sub

sub OnFocusChildChange()
    if m.keyboard.isInFocusChain() and not m.keyboard.hasFocus() then
       m.keyboard.setFocus(true)
    end if
end sub

function onKeyEvent(key as String, press as Boolean) as Boolean
    if press then
        if key = "down" and not m.keyboard.hasFocus()
            m.keyboard.setFocus(true)
        else if key = "up" and not m.keyboard.hasFocus()
            m.keyboard.setFocus(true)
        end if
    end if
end function