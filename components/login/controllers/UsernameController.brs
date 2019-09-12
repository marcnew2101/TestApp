function UsernameController()
    m.username = CreateObject("roSGNode", "Username")
    m.username.observeField("usernameButtons", "onUsernameButtons")
    m.top.ComponentController.CallFunc("show", {
        view: m.username
    })
end function

function onUsernameButtons(event as Object)
    selectedIndex = event.getdata()

    if selectedIndex = 0 then
        passwordController(m.username.usernameText)
    else if selectedIndex = 1 then
        m.username.close = true
    end if
end function