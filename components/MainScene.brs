' ********** Copyright 2016 Roku Corp.  All Rights Reserved. **********  

sub Show(args)
	m.home = CreateObject("roSGNode", "Home")
    m.top.ComponentController.callFunc("show", {
    view: m.home
    })
end sub