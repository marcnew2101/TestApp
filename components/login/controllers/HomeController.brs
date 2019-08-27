function HomeView()
    m.homeView = CreateObject("roSGNode", "Home")
    m.homeView.observeField("homeInterface", "showField")
    m.top.ComponentController.callFunc("show", {
            view: m.homeView
        })
end function

function showField()
	print m.homeView.homeInterface
end function