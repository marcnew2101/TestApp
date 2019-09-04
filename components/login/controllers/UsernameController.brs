function UsernameController() as Object
    m.username = CreateObject("roSGNode", "Username")
    m.username.observeField("usernameField", "showUsername")
    m.top.ComponentController.CallFunc("show", {
        view: m.username
    })
end function

function showUsername()
	if m.username.usernameField = 0
		passwordController(m.username.usernameEntered)
	end if
end function