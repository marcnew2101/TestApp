function PasswordController(username as String)
	m.username = username
    m.password = CreateObject("roSGNode", "Password")
    m.password.observeField("passwordField", "showPassword")
    'print m.username
    m.top.ComponentController.CallFunc("show", {
        view: m.password
    })
end function

function showPassword()
	if m.password.passwordField = 0
		print m.password.passwordField
	end if
end function