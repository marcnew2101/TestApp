function UsernameController()
    m.username = CreateObject("roSGNode", "Username")
    m.username.observeField("usernameButtonSelected", "onUsernameButtonSelected")
    m.username.observeField("usernameTextEntered", "onUsernameTextEntered")
    m.top.ComponentController.CallFunc("show", {
        view: m.username
    })
end function

function onUsernameButtonSelected(event as Object)
    selectedIndex = event.getdata()

    if selectedIndex = 0 then
        passwordController(m.username.usernameTextEntered)
    else if selectedIndex = 1 then
        m.username.close = true
    end if
end function

function onUsernameTextEntered(event as Object)
    print m.username.usernameTextEntered
end function