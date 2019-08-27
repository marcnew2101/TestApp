sub init()
  m.ButtonGroup = m.top.findNode("ButtonGroup")
  m.ButtonGroup.setFocus(true)
  m.ButtonGroup.observeField("buttonSelected","onButtonSelected")

  m.top.observeField("buttonIndex", "LoginView")
end sub

sub onButtonSelected()
  if m.ButtonGroup.buttonSelected = 0
    LoginView()
  end if
  if m.ButtonGroup.buttonSelected = 1
    print m.ButtonGroup.focusedChild.id
  end if
end sub