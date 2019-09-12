function UsernameController() as Object
    m.username = CreateObject("roSGNode", "Username")
    m.username.observeField("usernameButtons", "onUsernameButtons")
    m.top.ComponentController.CallFunc("show", {
        view: m.username
    })
end function

function onUsernameButtons()
	if m.username.usernameButtons = 0
		passwordController(m.username.usernameText)
	end if
end function