On Error Resume Next
strComputer = "."
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
Set colItems = objWMIService.ExecQuery("Select * from Win32_ComputerSystem",,48)
For Each objItem in colItems
    Wscript.Echo "AdminPasswordStatus: " & objItem.AdminPasswordStatus
    Wscript.Echo "AutomaticResetBootOption: " & objItem.AutomaticResetBootOption
    Wscript.Echo "AutomaticResetCapability: " & objItem.AutomaticResetCapability
    Wscript.Echo "BootOptionOnLimit: " & objItem.BootOptionOnLimit
    Wscript.Echo "BootROMSupported: " & objItem.BootROMSupported
    Wscript.Echo "BootupState: " & objItem.BootupState
    Wscript.Echo "Caption: " & objItem.Caption
    Wscript.Echo "ChassisBootupState: " & objItem.ChassisBootupState
    Wscript.Echo "CurrentTimeZone: " & objItem.CurrentTimeZone
    Wscript.Echo "DaylightInEffect: " & objItem.DaylightInEffect
    Wscript.Echo "Description: " & objItem.Description
    Wscript.Echo "Domain: " & objItem.Domain
    Wscript.Echo "DomainRole: " & objItem.DomainRole
    Wscript.Echo "FrontPanelResetStatus: " & objItem.FrontPanelResetStatus
    Wscript.Echo "InstallDate: " & objItem.InstallDate
    Wscript.Echo "KeyboardPasswordStatus: " & objItem.KeyboardPasswordStatus
    Wscript.Echo "LastLoadInfo: " & objItem.LastLoadInfo
    Wscript.Echo "Manufacturer: " & objItem.Manufacturer
    Wscript.Echo "Model: " & objItem.Model
    Wscript.Echo "Name: " & objItem.Name
    Wscript.Echo "NetworkServerModeEnabled: " & objItem.NetworkServerModeEnabled
    Wscript.Echo "NumberOfProcessors: " & objItem.NumberOfProcessors
    Wscript.Echo "OEMStringArray: " & objItem.OEMStringArray
    Wscript.Echo "PauseAfterReset: " & objItem.PauseAfterReset
    Wscript.Echo "PowerManagementCapabilities: " & objItem.PowerManagementCapabilities
    Wscript.Echo "PowerManagementSupported: " & objItem.PowerManagementSupported
    Wscript.Echo "PowerOnPasswordStatus: " & objItem.PowerOnPasswordStatus
    Wscript.Echo "PowerState: " & objItem.PowerState
    Wscript.Echo "PowerSupplyState: " & objItem.PowerSupplyState
    Wscript.Echo "PrimaryOwnerContact: " & objItem.PrimaryOwnerContact
    Wscript.Echo "PrimaryOwnerName: " & objItem.PrimaryOwnerName
    Wscript.Echo "ResetCapability: " & objItem.ResetCapability
    Wscript.Echo "Roles: " & objItem.Roles
    Wscript.Echo "Status: " & objItem.Status
    Wscript.Echo "SystemType: " & objItem.SystemType
    Wscript.Echo "ThermalState: " & objItem.ThermalState
    Wscript.Echo "TotalPhysicalMemory: " & objItem.TotalPhysicalMemory
    Wscript.Echo "UserName: " & objItem.UserName
    Wscript.Echo "WakeUpType: " & objItem.WakeUpType
Next