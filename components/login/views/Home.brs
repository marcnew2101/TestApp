sub init()
  m.ButtonGroup = m.top.findNode("ButtonGroup")
  m.ButtonGroup.setFocus(true)
  'm.ButtonGroup.observeField("buttonSelected","onButtonSelected")
end sub

sub onButtonSelected()
  if m.ButtonGroup.buttonSelected = 0
    print m.ButtonGroup.focusedChild.id
  end if
  if m.ButtonGroup.buttonSelected = 1
    print m.ButtonGroup.focusedChild.id
  end if
end sub