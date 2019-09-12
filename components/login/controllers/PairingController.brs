function PairingController() as Object
    m.pairing = CreateObject("roSGNode", "Pairing")
    m.pairing.observeField("pairingInterface", "showPairing")
    m.top.ComponentController.CallFunc("show", {
        view: m.pairing
    })

end function

function showPairing()
	selectedIndex = event.getdata(event as Object)

	if m.pairing.pairingInterface = 0
		print m.pairing.pairingInterface
	end if
end function

' function LoginView() as Object
'     m.keyboard = CreateObject("roSGNode", "Keyboard")

'     keyboardArea = m.keyboard.boundingRect()

'     centerx = (1280 - keyboardArea.width) / 2
'     centery = (720 - keyboardArea.height) / 2

'     m.keyboard.translation = [ centerx, centery ]

'     content = CreateObject("roSGNode", "ContentNode")

'     m.keyboard.content = content
'     m.keyboard.ObserveField("text", "OnChangeText")

'     m.top.ComponentController.CallFunc("show", {
'         view: m.keyboard
'     })

' end function

' sub OnChangeText(event as Object)
'  	print m.keyboard.text
' end sub