function HomeView()
    m.homeView = CreateObject("roSGNode", "Home")
    m.homeView.observeField("homeInterface", "showField")
    m.top.ComponentController.callFunc("show", {
            view: m.homeView
        })
end function

function showField()
	if m.homeView.homeInterface = 0
		LoginView()
	end if
end function