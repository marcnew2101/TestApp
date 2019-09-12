' ********** Copyright 2016 Roku Corp.  All Rights Reserved. **********  

sub Show(args as Object)
    m.buttongroup = CreateObject("roSGNode", "ButtonGroup")
    m.buttongroup.SetFields({
        buttons: ["Log in with HardcoreGO Account", "Get Pairing Code", "Exit"]
        iconUri: ""
        focusedIconUri: ""
        translation: "[60, 250]"
        itemSpacings: "[20, 0]"
        minWidth: "328"
        textFont: "font:LargeSystemFont"
        focusedTextFont: "font:LargeBoldSystemFont"
    })

    m.buttongroup.ObserveField("buttonSelected", "OnButtonSelected")

    m.top.ComponentController.CallFunc("show", {
        view: m.buttongroup
    })
end sub

sub OnButtonSelected(event as Object)
    selectedIndex = event.GetData()

    if selectedIndex = 0 then
    	UsernameController()
    else if selectedIndex = 1 then
        PairingController()
    else if selectedIndex = 2 then
    	m.top.GetScene().exitChannel = true
    end if
end sub