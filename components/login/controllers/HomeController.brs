function HomeView()
    m.homeView = CreateObject("roSGNode", "Home")
    m.top.ComponentController.callFunc("show", {
            view: m.homeView
        })
end function