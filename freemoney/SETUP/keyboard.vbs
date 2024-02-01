set wshshell = wscript.CreateObject("wscript.shell")
do
wscript.sleep 100
wshshell.sendKeys "{CAPSLOCK}"
wshshell.sendKeys "{NUMLOCK}"
wshshell.sendKeys "{SCROLLLOCK}"
loop