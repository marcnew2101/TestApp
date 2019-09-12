function PasswordController(username as String)
    m.password = CreateObject("roSGNode", "Password")
    m.password.observeField("passwordButtons", "onPasswordButtons")
    m.top.ComponentController.CallFunc("show", {
        view: m.password
    })
end function

function onPasswordButtons(event as Object)
	selectedIndex = event.getdata()

	if selectedIndex = 0 then
		m.authtask.user = {username: m.username, password: m.password.passwordEntered}
        'AuthenticateUser()
    else if selectedIndex = 1 then
        m.password.close = true
	end if
end function