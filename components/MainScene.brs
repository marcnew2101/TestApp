' ********** Copyright 2016 Roku Corp.  All Rights Reserved. **********  

sub Show(args as Object)
    m.buttongroup = CreateObject("roSGNode", "ButtonGroup")
    m.buttongroup.SetFields({
        buttons: ["Login", "Exit"]
        iconUri: ""
        focusedIconUri: ""
        translation: "[60, 250]"
        itemSpacings: "[20, 0]"
        minWidth: "328"
        textFont: "font:LargeSystemFont"
        focusedTextFont: "font:LargeBoldSystemFont"
    })

    content = CreateObject("roSGNode", "ContentNode")

    m.buttongroup.content = content
    m.buttongroup.ObserveField("buttonSelected", "OnButtonSelected")

    m.top.ComponentController.CallFunc("show", {
        view: m.buttongroup
    })
end sub

sub OnButtonSelected(event as Object)
    selectedIndex = event.GetData()
    print selectedIndex
    if m.buttongroup.buttonSelected = 0 then
    	LoginView()
    else if m.buttongroup.buttonSelected = 1 then
    	m.top.GetScene().exitChannel = true
    end if
end sub