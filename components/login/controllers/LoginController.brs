function LoginView()
    m.loginView = CreateObject("roSGNode", "Login")
    m.top.ComponentController.callFunc("show", {
            view: m.loginView
        })
end function