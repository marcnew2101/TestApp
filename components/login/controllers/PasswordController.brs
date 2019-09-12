function PasswordController(username as String)
    m.password = CreateObject("roSGNode", "Password")
    m.password.observeField("passwordButtons", "onPasswordButtons")

    m.top.ComponentController.CallFunc("show", {
        view: m.password
    })
end function

function onPasswordButtons()
	if m.password.passwordButtons = 0
		print m.password.passwordText
	end if
end function