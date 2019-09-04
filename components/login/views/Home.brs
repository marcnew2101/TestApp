' sub init()
'   m.ButtonGroup = m.top.findNode("ButtonGroup")
'   m.ButtonGroup.setFocus(true)
'   m.top.ObserveField("focusedChild","onChildFocused")
'   'm.ButtonGroup.observeField("buttonSelected","onButtonSelected")
' end sub

' function onChildFocused()
'   if not m.ButtonGroup.IsInFocusChain() then
'     m.ButtonGroup.setFocus(true)
'   end if
' end function

' sub onButtonSelected()
'   if m.ButtonGroup.buttonSelected = 0
'     print m.ButtonGroup.focusedChild.id
'   end if
'   if m.ButtonGroup.buttonSelected = 1
'     print m.ButtonGroup.focusedChild.id
'   end if
' end sub