<# 
.NAME
    Tweaking Adapter
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = New-Object System.Drawing.Point(980,934)
$Form.text                       = "Network  Adapter - Tweaker"
$Form.TopMost                    = $false
$Form.BackColor                  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$cb_AdapterNamesCombo            = New-Object system.Windows.Forms.ComboBox
$cb_AdapterNamesCombo.width      = 262
$cb_AdapterNamesCombo.height     = 20
$cb_AdapterNamesCombo.location   = New-Object System.Drawing.Point(64,16)
$cb_AdapterNamesCombo.Font       = New-Object System.Drawing.Font('Calibri',9)
$cb_AdapterNamesCombo.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_AdapterNamesCombo.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "Adapter:"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(10,20)
$Label1.Font                     = New-Object System.Drawing.Font('Calibri',10)
$Label1.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Label2                          = New-Object system.Windows.Forms.Label
$Label2.text                     = "Registry:"
$Label2.AutoSize                 = $true
$Label2.width                    = 25
$Label2.height                   = 10
$Label2.location                 = New-Object System.Drawing.Point(10,43)
$Label2.Font                     = New-Object System.Drawing.Font('Calibri',10)
$Label2.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$lbl_Path                        = New-Object system.Windows.Forms.Label
$lbl_Path.AutoSize               = $true
$lbl_Path.width                  = 25
$lbl_Path.height                 = 10
$lbl_Path.location               = New-Object System.Drawing.Point(63,45)
$lbl_Path.Font                   = New-Object System.Drawing.Font('Calibri',9)
$lbl_Path.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Label3                          = New-Object system.Windows.Forms.Label
$Label3.text                     = "NDIS:"
$Label3.AutoSize                 = $true
$Label3.width                    = 25
$Label3.height                   = 10
$Label3.location                 = New-Object System.Drawing.Point(10,66)
$Label3.Font                     = New-Object System.Drawing.Font('Calibri',10)
$Label3.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$lbl_ndisver                     = New-Object system.Windows.Forms.Label
$lbl_ndisver.AutoSize            = $true
$lbl_ndisver.width               = 25
$lbl_ndisver.height              = 10
$lbl_ndisver.location            = New-Object System.Drawing.Point(63,65)
$lbl_ndisver.Font                = New-Object System.Drawing.Font('Calibri',10)
$lbl_ndisver.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Groupbox1                       = New-Object system.Windows.Forms.Groupbox
$Groupbox1.height                = 213
$Groupbox1.width                 = 233
$Groupbox1.text                  = "RSS Settings"
$Groupbox1.location              = New-Object System.Drawing.Point(10,93)

$Label4                          = New-Object system.Windows.Forms.Label
$Label4.text                     = "Profile:"
$Label4.AutoSize                 = $true
$Label4.width                    = 25
$Label4.height                   = 10
$Label4.location                 = New-Object System.Drawing.Point(8,66)
$Label4.Font                     = New-Object System.Drawing.Font('Calibri',10)
$Label4.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Label5                          = New-Object system.Windows.Forms.Label
$Label5.text                     = "NumberOfReceiveQueues:"
$Label5.AutoSize                 = $true
$Label5.width                    = 25
$Label5.height                   = 10
$Label5.location                 = New-Object System.Drawing.Point(8,43)
$Label5.Font                     = New-Object System.Drawing.Font('Calibri',10)
$Label5.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Label6                          = New-Object system.Windows.Forms.Label
$Label6.text                     = "Status:"
$Label6.AutoSize                 = $true
$Label6.width                    = 25
$Label6.height                   = 10
$Label6.location                 = New-Object System.Drawing.Point(8,20)
$Label6.Font                     = New-Object System.Drawing.Font('Calibri',10)
$Label6.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$lbl_rssstatus                   = New-Object system.Windows.Forms.Label
$lbl_rssstatus.AutoSize          = $true
$lbl_rssstatus.width             = 25
$lbl_rssstatus.height            = 10
$lbl_rssstatus.location          = New-Object System.Drawing.Point(61,20)
$lbl_rssstatus.Font              = New-Object System.Drawing.Font('Calibri',10)
$lbl_rssstatus.ForeColor         = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_rss_onoff                    = New-Object system.Windows.Forms.ComboBox
$cb_rss_onoff.width              = 108
$cb_rss_onoff.height             = 20
@('Enable','Disable') | ForEach-Object {[void] $cb_rss_onoff.Items.Add($_)}
$cb_rss_onoff.location           = New-Object System.Drawing.Point(117,17)
$cb_rss_onoff.Font               = New-Object System.Drawing.Font('Calibri',9)
$cb_rss_onoff.ForeColor          = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_rss_onoff.BackColor          = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$btn_apply                       = New-Object system.Windows.Forms.Button
$btn_apply.text                  = "Apply"
$btn_apply.width                 = 60
$btn_apply.height                = 21
$btn_apply.location              = New-Object System.Drawing.Point(10,312)
$btn_apply.Font                  = New-Object System.Drawing.Font('Calibri',10)
$btn_apply.ForeColor             = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_rssqueues                    = New-Object system.Windows.Forms.ComboBox
$cb_rssqueues.width              = 60
$cb_rssqueues.height             = 20
$cb_rssqueues.location           = New-Object System.Drawing.Point(165,41)
$cb_rssqueues.Font               = New-Object System.Drawing.Font('Calibri',9)
$cb_rssqueues.ForeColor          = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_rssqueues.BackColor          = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$btn_unqueues                    = New-Object system.Windows.Forms.Button
$btn_unqueues.text               = "Unlock RSSQueues"
$btn_unqueues.width              = 112
$btn_unqueues.height             = 21
$btn_unqueues.location           = New-Object System.Drawing.Point(76,312)
$btn_unqueues.Font               = New-Object System.Drawing.Font('Calibri',9)
$btn_unqueues.ForeColor          = [System.Drawing.ColorTranslator]::FromHtml("#f8e71c")

$cb_rssprofile                   = New-Object system.Windows.Forms.ComboBox
$cb_rssprofile.width             = 108
$cb_rssprofile.height            = 20
$cb_rssprofile.location          = New-Object System.Drawing.Point(117,66)
$cb_rssprofile.Font              = New-Object System.Drawing.Font('Calibri',9)
$cb_rssprofile.ForeColor         = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_rssprofile.BackColor         = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label7                          = New-Object system.Windows.Forms.Label
$Label7.text                     = "BaseProcessor:"
$Label7.AutoSize                 = $true
$Label7.width                    = 25
$Label7.height                   = 10
$Label7.location                 = New-Object System.Drawing.Point(8,92)
$Label7.Font                     = New-Object System.Drawing.Font('Calibri',10)
$Label7.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_rssbaseproc                  = New-Object system.Windows.Forms.ComboBox
$cb_rssbaseproc.width            = 108
$cb_rssbaseproc.height           = 20
@('0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15') | ForEach-Object {[void] $cb_rssbaseproc.Items.Add($_)}
$cb_rssbaseproc.location         = New-Object System.Drawing.Point(117,89)
$cb_rssbaseproc.Font             = New-Object System.Drawing.Font('Calibri',9)
$cb_rssbaseproc.ForeColor        = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_rssbaseproc.BackColor        = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label8                          = New-Object system.Windows.Forms.Label
$Label8.text                     = "MaxProcessor:"
$Label8.AutoSize                 = $true
$Label8.width                    = 25
$Label8.height                   = 10
$Label8.location                 = New-Object System.Drawing.Point(7,115)
$Label8.Font                     = New-Object System.Drawing.Font('Calibri',10)
$Label8.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_rssmaxproc                   = New-Object system.Windows.Forms.ComboBox
$cb_rssmaxproc.width             = 108
$cb_rssmaxproc.height            = 20
@('0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15') | ForEach-Object {[void] $cb_rssmaxproc.Items.Add($_)}
$cb_rssmaxproc.location          = New-Object System.Drawing.Point(117,112)
$cb_rssmaxproc.Font              = New-Object System.Drawing.Font('Calibri',9)
$cb_rssmaxproc.ForeColor         = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_rssmaxproc.BackColor         = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label9                          = New-Object system.Windows.Forms.Label
$Label9.text                     = "MaxProcessors:"
$Label9.AutoSize                 = $true
$Label9.width                    = 25
$Label9.height                   = 10
$Label9.location                 = New-Object System.Drawing.Point(7,139)
$Label9.Font                     = New-Object System.Drawing.Font('Calibri',10)
$Label9.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_rssmaxprocs                  = New-Object system.Windows.Forms.ComboBox
$cb_rssmaxprocs.width            = 108
$cb_rssmaxprocs.height           = 20
@('0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15') | ForEach-Object {[void] $cb_rssmaxprocs.Items.Add($_)}
$cb_rssmaxprocs.location         = New-Object System.Drawing.Point(117,136)
$cb_rssmaxprocs.Font             = New-Object System.Drawing.Font('Calibri',9)
$cb_rssmaxprocs.ForeColor        = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_rssmaxprocs.BackColor        = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$btn_openreg                     = New-Object system.Windows.Forms.Button
$btn_openreg.text                = "Open"
$btn_openreg.width               = 86
$btn_openreg.height              = 20
$btn_openreg.location            = New-Object System.Drawing.Point(334,16)
$btn_openreg.Font                = New-Object System.Drawing.Font('Calibri',10)
$btn_openreg.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Groupbox2                       = New-Object system.Windows.Forms.Groupbox
$Groupbox2.height                = 190
$Groupbox2.width                 = 311
$Groupbox2.text                  = "Global Settings"
$Groupbox2.location              = New-Object System.Drawing.Point(250,93)

$Label10                         = New-Object system.Windows.Forms.Label
$Label10.text                    = "ReceiveSideScaling:"
$Label10.AutoSize                = $true
$Label10.width                   = 25
$Label10.height                  = 10
$Label10.location                = New-Object System.Drawing.Point(10,20)
$Label10.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label10.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_osrss                        = New-Object system.Windows.Forms.ComboBox
$cb_osrss.width                  = 108
$cb_osrss.height                 = 20
@('Enabled','Disabled') | ForEach-Object {[void] $cb_osrss.Items.Add($_)}
$cb_osrss.location               = New-Object System.Drawing.Point(194,17)
$cb_osrss.Font                   = New-Object System.Drawing.Font('Calibri',9)
$cb_osrss.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_osrss.BackColor              = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label11                         = New-Object system.Windows.Forms.Label
$Label11.text                    = "ReceiveSegmentCoalescing:"
$Label11.AutoSize                = $true
$Label11.width                   = 148
$Label11.height                  = 10
$Label11.location                = New-Object System.Drawing.Point(10,44)
$Label11.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label11.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_osrsc                        = New-Object system.Windows.Forms.ComboBox
$cb_osrsc.width                  = 108
$cb_osrsc.height                 = 20
@('Enabled','Disabled') | ForEach-Object {[void] $cb_osrsc.Items.Add($_)}
$cb_osrsc.location               = New-Object System.Drawing.Point(194,40)
$cb_osrsc.Font                   = New-Object System.Drawing.Font('Calibri',9)
$cb_osrsc.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_osrsc.BackColor              = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label12                         = New-Object system.Windows.Forms.Label
$Label12.text                    = "Chimney:"
$Label12.AutoSize                = $true
$Label12.width                   = 25
$Label12.height                  = 10
$Label12.location                = New-Object System.Drawing.Point(11,68)
$Label12.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label12.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_oschimney                    = New-Object system.Windows.Forms.ComboBox
$cb_oschimney.width              = 108
$cb_oschimney.height             = 20
@('Enabled','Disabled') | ForEach-Object {[void] $cb_oschimney.Items.Add($_)}
$cb_oschimney.location           = New-Object System.Drawing.Point(194,63)
$cb_oschimney.Font               = New-Object System.Drawing.Font('Calibri',9)
$cb_oschimney.ForeColor          = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_oschimney.BackColor          = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label13                         = New-Object system.Windows.Forms.Label
$Label13.text                    = "TaskOffload:"
$Label13.AutoSize                = $true
$Label13.width                   = 25
$Label13.height                  = 10
$Label13.location                = New-Object System.Drawing.Point(10,91)
$Label13.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label13.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_ostaskoff                    = New-Object system.Windows.Forms.ComboBox
$cb_ostaskoff.width              = 108
$cb_ostaskoff.height             = 20
@('Enabled','Disabled') | ForEach-Object {[void] $cb_ostaskoff.Items.Add($_)}
$cb_ostaskoff.location           = New-Object System.Drawing.Point(194,86)
$cb_ostaskoff.Font               = New-Object System.Drawing.Font('Calibri',9)
$cb_ostaskoff.ForeColor          = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_ostaskoff.BackColor          = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$cb_osntd                        = New-Object system.Windows.Forms.ComboBox
$cb_osntd.width                  = 108
$cb_osntd.height                 = 20
@('Enabled','Disabled') | ForEach-Object {[void] $cb_osntd.Items.Add($_)}
$cb_osntd.location               = New-Object System.Drawing.Point(194,109)
$cb_osntd.Font                   = New-Object System.Drawing.Font('Calibri',9)
$cb_osntd.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_osntd.BackColor              = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label14                         = New-Object system.Windows.Forms.Label
$Label14.text                    = "NetworkDirect:"
$Label14.AutoSize                = $true
$Label14.width                   = 25
$Label14.height                  = 10
$Label14.location                = New-Object System.Drawing.Point(10,114)
$Label14.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label14.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_osntdais                     = New-Object system.Windows.Forms.ComboBox
$cb_osntdais.width               = 108
$cb_osntdais.height              = 20
@('Blocked','Allowed') | ForEach-Object {[void] $cb_osntdais.Items.Add($_)}
$cb_osntdais.location            = New-Object System.Drawing.Point(194,132)
$cb_osntdais.Font                = New-Object System.Drawing.Font('Calibri',9)
$cb_osntdais.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_osntdais.BackColor           = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label15                         = New-Object system.Windows.Forms.Label
$Label15.text                    = "NetworkDirectAcrossIPSubnets:"
$Label15.AutoSize                = $true
$Label15.width                   = 25
$Label15.height                  = 10
$Label15.location                = New-Object System.Drawing.Point(10,137)
$Label15.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label15.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_ospcf                        = New-Object system.Windows.Forms.ComboBox
$cb_ospcf.width                  = 108
$cb_ospcf.height                 = 20
@('Enabled','Disabled') | ForEach-Object {[void] $cb_ospcf.Items.Add($_)}
$cb_ospcf.location               = New-Object System.Drawing.Point(194,156)
$cb_ospcf.Font                   = New-Object System.Drawing.Font('Calibri',9)
$cb_ospcf.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_ospcf.BackColor              = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label16                         = New-Object system.Windows.Forms.Label
$Label16.text                    = "PacketCoalescingFilter:"
$Label16.AutoSize                = $true
$Label16.width                   = 25
$Label16.height                  = 10
$Label16.location                = New-Object System.Drawing.Point(10,161)
$Label16.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label16.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$btn_applyglobal                 = New-Object system.Windows.Forms.Button
$btn_applyglobal.text            = "Apply"
$btn_applyglobal.width           = 60
$btn_applyglobal.height          = 21
$btn_applyglobal.location        = New-Object System.Drawing.Point(251,286)
$btn_applyglobal.Font            = New-Object System.Drawing.Font('Calibri',10)
$btn_applyglobal.ForeColor       = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Groupbox3                       = New-Object system.Windows.Forms.Groupbox
$Groupbox3.height                = 584
$Groupbox3.width                 = 399
$Groupbox3.text                  = "Adv. Adapter"
$Groupbox3.location              = New-Object System.Drawing.Point(570,93)

$Label17                         = New-Object system.Windows.Forms.Label
$Label17.text                    = "FlowControl:"
$Label17.AutoSize                = $true
$Label17.width                   = 25
$Label17.height                  = 10
$Label17.location                = New-Object System.Drawing.Point(9,20)
$Label17.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label17.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_flowcontrol                  = New-Object system.Windows.Forms.ComboBox
$cb_flowcontrol.width            = 190
$cb_flowcontrol.height           = 20
@('0 - Disabled','1 - Tx Enabled','2 - Rx Enabled','3 - Rx and Tx Enabled') | ForEach-Object {[void] $cb_flowcontrol.Items.Add($_)}
$cb_flowcontrol.location         = New-Object System.Drawing.Point(193,17)
$cb_flowcontrol.Font             = New-Object System.Drawing.Font('Calibri',9)
$cb_flowcontrol.ForeColor        = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_flowcontrol.BackColor        = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label18                         = New-Object system.Windows.Forms.Label
$Label18.text                    = "IPChecksumOffloadIPv4:"
$Label18.AutoSize                = $true
$Label18.width                   = 25
$Label18.height                  = 10
$Label18.location                = New-Object System.Drawing.Point(9,42)
$Label18.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label18.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Label19                         = New-Object system.Windows.Forms.Label
$Label19.text                    = "TCPChecksumOffloadIPv4:"
$Label19.AutoSize                = $true
$Label19.width                   = 25
$Label19.height                  = 10
$Label19.location                = New-Object System.Drawing.Point(9,64)
$Label19.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label19.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Label20                         = New-Object system.Windows.Forms.Label
$Label20.text                    = "TCPChecksumOffloadIPv6:"
$Label20.AutoSize                = $true
$Label20.width                   = 25
$Label20.height                  = 10
$Label20.location                = New-Object System.Drawing.Point(9,86)
$Label20.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label20.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Label21                         = New-Object system.Windows.Forms.Label
$Label21.text                    = "UDPChecksumOffloadIPv4:"
$Label21.AutoSize                = $true
$Label21.width                   = 25
$Label21.height                  = 10
$Label21.location                = New-Object System.Drawing.Point(9,108)
$Label21.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label21.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Label22                         = New-Object system.Windows.Forms.Label
$Label22.text                    = "UDPChecksumOffloadIPv6:"
$Label22.AutoSize                = $true
$Label22.width                   = 25
$Label22.height                  = 10
$Label22.location                = New-Object System.Drawing.Point(9,130)
$Label22.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label22.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Label23                         = New-Object system.Windows.Forms.Label
$Label23.text                    = "InterruptModeration:"
$Label23.AutoSize                = $true
$Label23.width                   = 25
$Label23.height                  = 10
$Label23.location                = New-Object System.Drawing.Point(9,324)
$Label23.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label23.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_InterruptModeration          = New-Object system.Windows.Forms.ComboBox
$cb_InterruptModeration.width    = 190
$cb_InterruptModeration.height   = 20
@('0 - Disabled','1 - Enabled') | ForEach-Object {[void] $cb_InterruptModeration.Items.Add($_)}
$cb_InterruptModeration.location  = New-Object System.Drawing.Point(193,321)
$cb_InterruptModeration.Font     = New-Object System.Drawing.Font('Calibri',9)
$cb_InterruptModeration.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_InterruptModeration.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$btn_applyadv                    = New-Object system.Windows.Forms.Button
$btn_applyadv.text               = "Apply"
$btn_applyadv.width              = 60
$btn_applyadv.height             = 21
$btn_applyadv.location           = New-Object System.Drawing.Point(570,682)
$btn_applyadv.Font               = New-Object System.Drawing.Font('Calibri',10)
$btn_applyadv.ForeColor          = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$btn_adaptrest                   = New-Object system.Windows.Forms.Button
$btn_adaptrest.text              = "Restart Adapter"
$btn_adaptrest.width             = 112
$btn_adaptrest.height            = 20
$btn_adaptrest.location          = New-Object System.Drawing.Point(511,16)
$btn_adaptrest.Font              = New-Object System.Drawing.Font('Calibri',10)
$btn_adaptrest.ForeColor         = [System.Drawing.ColorTranslator]::FromHtml("#d0021b")

$cb_IPChecksumOffloadIPv4        = New-Object system.Windows.Forms.ComboBox
$cb_IPChecksumOffloadIPv4.width  = 190
$cb_IPChecksumOffloadIPv4.height  = 20
@('0 - Disabled','1 - Tx Enabled','2 - Rx Enabled','3 - Rx and Tx Enabled') | ForEach-Object {[void] $cb_IPChecksumOffloadIPv4.Items.Add($_)}
$cb_IPChecksumOffloadIPv4.location  = New-Object System.Drawing.Point(193,39)
$cb_IPChecksumOffloadIPv4.Font   = New-Object System.Drawing.Font('Calibri',9)
$cb_IPChecksumOffloadIPv4.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_IPChecksumOffloadIPv4.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$cb_TCPChecksumOffloadIPv4       = New-Object system.Windows.Forms.ComboBox
$cb_TCPChecksumOffloadIPv4.width  = 190
$cb_TCPChecksumOffloadIPv4.height  = 20
@('0 - Disabled','1 - Tx Enabled','2 - Rx Enabled','3 - Rx and Tx Enabled') | ForEach-Object {[void] $cb_TCPChecksumOffloadIPv4.Items.Add($_)}
$cb_TCPChecksumOffloadIPv4.location  = New-Object System.Drawing.Point(193,61)
$cb_TCPChecksumOffloadIPv4.Font  = New-Object System.Drawing.Font('Calibri',9)
$cb_TCPChecksumOffloadIPv4.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_TCPChecksumOffloadIPv4.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$cb_TCPChecksumOffloadIPv6       = New-Object system.Windows.Forms.ComboBox
$cb_TCPChecksumOffloadIPv6.width  = 190
$cb_TCPChecksumOffloadIPv6.height  = 20
@('0 - Disabled','1 - Tx Enabled','2 - Rx Enabled','3 - Rx and Tx Enabled') | ForEach-Object {[void] $cb_TCPChecksumOffloadIPv6.Items.Add($_)}
$cb_TCPChecksumOffloadIPv6.location  = New-Object System.Drawing.Point(193,83)
$cb_TCPChecksumOffloadIPv6.Font  = New-Object System.Drawing.Font('Calibri',9)
$cb_TCPChecksumOffloadIPv6.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_TCPChecksumOffloadIPv6.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$cb_UDPChecksumOffloadIPv4       = New-Object system.Windows.Forms.ComboBox
$cb_UDPChecksumOffloadIPv4.width  = 190
$cb_UDPChecksumOffloadIPv4.height  = 20
@('0 - Disabled','1 - Tx Enabled','2 - Rx Enabled','3 - Rx and Tx Enabled') | ForEach-Object {[void] $cb_UDPChecksumOffloadIPv4.Items.Add($_)}
$cb_UDPChecksumOffloadIPv4.location  = New-Object System.Drawing.Point(193,105)
$cb_UDPChecksumOffloadIPv4.Font  = New-Object System.Drawing.Font('Calibri',9)
$cb_UDPChecksumOffloadIPv4.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_UDPChecksumOffloadIPv4.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$cb_UDPChecksumOffloadIPv6       = New-Object system.Windows.Forms.ComboBox
$cb_UDPChecksumOffloadIPv6.width  = 190
$cb_UDPChecksumOffloadIPv6.height  = 20
@('0 - Disabled','1 - Tx Enabled','2 - Rx Enabled','3 - Rx and Tx Enabled') | ForEach-Object {[void] $cb_UDPChecksumOffloadIPv6.Items.Add($_)}
$cb_UDPChecksumOffloadIPv6.location  = New-Object System.Drawing.Point(193,127)
$cb_UDPChecksumOffloadIPv6.Font  = New-Object System.Drawing.Font('Calibri',9)
$cb_UDPChecksumOffloadIPv6.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_UDPChecksumOffloadIPv6.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label24                         = New-Object system.Windows.Forms.Label
$Label24.text                    = "InterruptModerationRate:"
$Label24.AutoSize                = $true
$Label24.width                   = 25
$Label24.height                  = 10
$Label24.location                = New-Object System.Drawing.Point(9,346)
$Label24.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label24.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_InterruptModerationRate      = New-Object system.Windows.Forms.ComboBox
$cb_InterruptModerationRate.width  = 190
$cb_InterruptModerationRate.height  = 20
@('0 - Disabled','200 - Minimal','400 - Low','950 - Medium','2000 - High','3600 - Extreme','65535 - Adaptive') | ForEach-Object {[void] $cb_InterruptModerationRate.Items.Add($_)}
$cb_InterruptModerationRate.location  = New-Object System.Drawing.Point(193,343)
$cb_InterruptModerationRate.Font  = New-Object System.Drawing.Font('Calibri',9)
$cb_InterruptModerationRate.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_InterruptModerationRate.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label25                         = New-Object system.Windows.Forms.Label
$Label25.text                    = "LsoV2IPv4"
$Label25.AutoSize                = $true
$Label25.width                   = 25
$Label25.height                  = 10
$Label25.location                = New-Object System.Drawing.Point(9,174)
$Label25.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label25.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Label26                         = New-Object system.Windows.Forms.Label
$Label26.text                    = "LsoV2IPv6"
$Label26.AutoSize                = $true
$Label26.width                   = 25
$Label26.height                  = 10
$Label26.location                = New-Object System.Drawing.Point(9,196)
$Label26.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label26.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_LsoV2IPv4                    = New-Object system.Windows.Forms.ComboBox
$cb_LsoV2IPv4.width              = 190
$cb_LsoV2IPv4.height             = 20
@('0 - Disabled','1 - Enabled') | ForEach-Object {[void] $cb_LsoV2IPv4.Items.Add($_)}
$cb_LsoV2IPv4.location           = New-Object System.Drawing.Point(193,171)
$cb_LsoV2IPv4.Font               = New-Object System.Drawing.Font('Calibri',9)
$cb_LsoV2IPv4.ForeColor          = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_LsoV2IPv4.BackColor          = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$cb_LsoV2IPv6                    = New-Object system.Windows.Forms.ComboBox
$cb_LsoV2IPv6.width              = 190
$cb_LsoV2IPv6.height             = 20
@('0 - Disabled','1 - Enabled') | ForEach-Object {[void] $cb_LsoV2IPv6.Items.Add($_)}
$cb_LsoV2IPv6.location           = New-Object System.Drawing.Point(193,193)
$cb_LsoV2IPv6.Font               = New-Object System.Drawing.Font('Calibri',9)
$cb_LsoV2IPv6.ForeColor          = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_LsoV2IPv6.BackColor          = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label27                         = New-Object system.Windows.Forms.Label
$Label27.text                    = "LsoV1IPv4"
$Label27.AutoSize                = $true
$Label27.width                   = 25
$Label27.height                  = 10
$Label27.location                = New-Object System.Drawing.Point(9,152)
$Label27.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label27.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_LsoV1IPv4                    = New-Object system.Windows.Forms.ComboBox
$cb_LsoV1IPv4.width              = 190
$cb_LsoV1IPv4.height             = 20
@('0 - Disabled','1 - Enabled') | ForEach-Object {[void] $cb_LsoV1IPv4.Items.Add($_)}
$cb_LsoV1IPv4.location           = New-Object System.Drawing.Point(193,149)
$cb_LsoV1IPv4.Font               = New-Object System.Drawing.Font('Calibri',9)
$cb_LsoV1IPv4.ForeColor          = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_LsoV1IPv4.BackColor          = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label28                         = New-Object system.Windows.Forms.Label
$Label28.text                    = "PMNSOffload"
$Label28.AutoSize                = $true
$Label28.width                   = 25
$Label28.height                  = 10
$Label28.location                = New-Object System.Drawing.Point(9,238)
$Label28.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label28.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_PMNSOffload                  = New-Object system.Windows.Forms.ComboBox
$cb_PMNSOffload.width            = 190
$cb_PMNSOffload.height           = 20
@('0 - Disabled','1 - Enabled') | ForEach-Object {[void] $cb_PMNSOffload.Items.Add($_)}
$cb_PMNSOffload.location         = New-Object System.Drawing.Point(193,235)
$cb_PMNSOffload.Font             = New-Object System.Drawing.Font('Calibri',9)
$cb_PMNSOffload.ForeColor        = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_PMNSOffload.BackColor        = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label29                         = New-Object system.Windows.Forms.Label
$Label29.text                    = "PMARPOffload"
$Label29.AutoSize                = $true
$Label29.width                   = 25
$Label29.height                  = 10
$Label29.location                = New-Object System.Drawing.Point(9,216)
$Label29.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label29.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_PMARPOffload                 = New-Object system.Windows.Forms.ComboBox
$cb_PMARPOffload.width           = 190
$cb_PMARPOffload.height          = 20
@('0 - Disabled','1 - Enabled') | ForEach-Object {[void] $cb_PMARPOffload.Items.Add($_)}
$cb_PMARPOffload.location        = New-Object System.Drawing.Point(193,213)
$cb_PMARPOffload.Font            = New-Object System.Drawing.Font('Calibri',9)
$cb_PMARPOffload.ForeColor       = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_PMARPOffload.BackColor       = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$cb_PriorityVLANTag              = New-Object system.Windows.Forms.ComboBox
$cb_PriorityVLANTag.width        = 190
$cb_PriorityVLANTag.height       = 20
@('0 - Paketpriorität and VLAN disabled','1 - Paketpriorität enabled','2 - VLAN enabled','3 - Paketpriorität and VLAN enabled') | ForEach-Object {[void] $cb_PriorityVLANTag.Items.Add($_)}
$cb_PriorityVLANTag.location     = New-Object System.Drawing.Point(193,256)
$cb_PriorityVLANTag.Font         = New-Object System.Drawing.Font('Calibri',9)
$cb_PriorityVLANTag.ForeColor    = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_PriorityVLANTag.BackColor    = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label00                         = New-Object system.Windows.Forms.Label
$Label00.text                    = "PriorityVLANTag"
$Label00.AutoSize                = $true
$Label00.width                   = 25
$Label00.height                  = 10
$Label00.location                = New-Object System.Drawing.Point(9,259)
$Label00.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label00.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Label30                         = New-Object system.Windows.Forms.Label
$Label30.text                    = "ReceiveBuffers"
$Label30.AutoSize                = $true
$Label30.width                   = 25
$Label30.height                  = 10
$Label30.location                = New-Object System.Drawing.Point(9,281)
$Label30.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label30.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_ReceiveBuffers               = New-Object system.Windows.Forms.ComboBox
$cb_ReceiveBuffers.width         = 190
$cb_ReceiveBuffers.height        = 20
$cb_ReceiveBuffers.location      = New-Object System.Drawing.Point(193,278)
$cb_ReceiveBuffers.Font          = New-Object System.Drawing.Font('Calibri',9)
$cb_ReceiveBuffers.ForeColor     = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_ReceiveBuffers.BackColor     = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label31                         = New-Object system.Windows.Forms.Label
$Label31.text                    = "TransmitBuffers"
$Label31.AutoSize                = $true
$Label31.width                   = 25
$Label31.height                  = 10
$Label31.location                = New-Object System.Drawing.Point(9,303)
$Label31.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label31.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_TransmitBuffers              = New-Object system.Windows.Forms.ComboBox
$cb_TransmitBuffers.width        = 190
$cb_TransmitBuffers.height       = 20
$cb_TransmitBuffers.location     = New-Object System.Drawing.Point(193,300)
$cb_TransmitBuffers.Font         = New-Object System.Drawing.Font('Calibri',9)
$cb_TransmitBuffers.ForeColor    = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_TransmitBuffers.BackColor    = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Groupbox5                       = New-Object system.Windows.Forms.Groupbox
$Groupbox5.height                = 66
$Groupbox5.width                 = 230
$Groupbox5.text                  = "RSS Global"
$Groupbox5.location              = New-Object System.Drawing.Point(10,342)

$Label32                         = New-Object system.Windows.Forms.Label
$Label32.text                    = "TCP/IP_RssBaseCpu:"
$Label32.AutoSize                = $true
$Label32.width                   = 25
$Label32.height                  = 10
$Label32.location                = New-Object System.Drawing.Point(7,16)
$Label32.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label32.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Label33                         = New-Object system.Windows.Forms.Label
$Label33.text                    = "NDIS_RssBaseCpu:"
$Label33.AutoSize                = $true
$Label33.width                   = 25
$Label33.height                  = 10
$Label33.location                = New-Object System.Drawing.Point(7,40)
$Label33.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label33.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_tcpiprssbasecpu              = New-Object system.Windows.Forms.TextBox
$cb_tcpiprssbasecpu.multiline    = $false
$cb_tcpiprssbasecpu.width        = 89
$cb_tcpiprssbasecpu.height       = 20
$cb_tcpiprssbasecpu.location     = New-Object System.Drawing.Point(133,14)
$cb_tcpiprssbasecpu.Font         = New-Object System.Drawing.Font('Calibri',10)
$cb_tcpiprssbasecpu.ForeColor    = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_tcpiprssbasecpu.BackColor    = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$cb_ndisrssbasecpu               = New-Object system.Windows.Forms.TextBox
$cb_ndisrssbasecpu.multiline     = $false
$cb_ndisrssbasecpu.width         = 89
$cb_ndisrssbasecpu.height        = 20
$cb_ndisrssbasecpu.location      = New-Object System.Drawing.Point(133,38)
$cb_ndisrssbasecpu.Font          = New-Object System.Drawing.Font('Calibri',10)
$cb_ndisrssbasecpu.ForeColor     = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_ndisrssbasecpu.BackColor     = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Groupbox4                       = New-Object system.Windows.Forms.Groupbox
$Groupbox4.height                = 173
$Groupbox4.width                 = 321
$Groupbox4.text                  = "PowerSaving Settings"
$Groupbox4.location              = New-Object System.Drawing.Point(570,715)

$Label34                         = New-Object system.Windows.Forms.Label
$Label34.text                    = "(APM) sleep states:"
$Label34.AutoSize                = $true
$Label34.width                   = 25
$Label34.height                  = 10
$Label34.location                = New-Object System.Drawing.Point(8,18)
$Label34.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label34.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_EnablePME                    = New-Object system.Windows.Forms.ComboBox
$cb_EnablePME.width              = 108
$cb_EnablePME.height             = 20
@('Disabled','Enabled') | ForEach-Object {[void] $cb_EnablePME.Items.Add($_)}
$cb_EnablePME.location           = New-Object System.Drawing.Point(204,15)
$cb_EnablePME.Font               = New-Object System.Drawing.Font('Calibri',9)
$cb_EnablePME.ForeColor          = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_EnablePME.BackColor          = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$btn_applypowersettings          = New-Object system.Windows.Forms.Button
$btn_applypowersettings.text     = "Apply"
$btn_applypowersettings.width    = 60
$btn_applypowersettings.height   = 21
$btn_applypowersettings.location  = New-Object System.Drawing.Point(570,893)
$btn_applypowersettings.Font     = New-Object System.Drawing.Font('Calibri',10)
$btn_applypowersettings.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Label36                         = New-Object system.Windows.Forms.Label
$Label36.text                    = "DynamicPowerGating:"
$Label36.AutoSize                = $true
$Label36.width                   = 25
$Label36.height                  = 10
$Label36.location                = New-Object System.Drawing.Point(8,40)
$Label36.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label36.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_EnableDynamicPowerGating     = New-Object system.Windows.Forms.ComboBox
$cb_EnableDynamicPowerGating.width  = 108
$cb_EnableDynamicPowerGating.height  = 20
@('Disabled','Enabled') | ForEach-Object {[void] $cb_EnableDynamicPowerGating.Items.Add($_)}
$cb_EnableDynamicPowerGating.location  = New-Object System.Drawing.Point(204,37)
$cb_EnableDynamicPowerGating.Font  = New-Object System.Drawing.Font('Calibri',9)
$cb_EnableDynamicPowerGating.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_EnableDynamicPowerGating.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label37                         = New-Object system.Windows.Forms.Label
$Label37.text                    = "ConnectedPowerGating:"
$Label37.AutoSize                = $true
$Label37.width                   = 25
$Label37.height                  = 10
$Label37.location                = New-Object System.Drawing.Point(8,62)
$Label37.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label37.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_EnableConnectedPowerGating   = New-Object system.Windows.Forms.ComboBox
$cb_EnableConnectedPowerGating.width  = 108
$cb_EnableConnectedPowerGating.height  = 20
@('Disabled','Enabled') | ForEach-Object {[void] $cb_EnableConnectedPowerGating.Items.Add($_)}
$cb_EnableConnectedPowerGating.location  = New-Object System.Drawing.Point(204,59)
$cb_EnableConnectedPowerGating.Font  = New-Object System.Drawing.Font('Calibri',9)
$cb_EnableConnectedPowerGating.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_EnableConnectedPowerGating.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label38                         = New-Object system.Windows.Forms.Label
$Label38.text                    = "AutoPowerSaveMode:"
$Label38.AutoSize                = $true
$Label38.width                   = 25
$Label38.height                  = 10
$Label38.location                = New-Object System.Drawing.Point(8,84)
$Label38.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label38.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_AutoPowerSaveModeEnabled     = New-Object system.Windows.Forms.ComboBox
$cb_AutoPowerSaveModeEnabled.width  = 108
$cb_AutoPowerSaveModeEnabled.height  = 20
@('Disabled','Enabled') | ForEach-Object {[void] $cb_AutoPowerSaveModeEnabled.Items.Add($_)}
$cb_AutoPowerSaveModeEnabled.location  = New-Object System.Drawing.Point(204,81)
$cb_AutoPowerSaveModeEnabled.Font  = New-Object System.Drawing.Font('Calibri',9)
$cb_AutoPowerSaveModeEnabled.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_AutoPowerSaveModeEnabled.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$cb_NicAutoPowerSaver            = New-Object system.Windows.Forms.ComboBox
$cb_NicAutoPowerSaver.width      = 108
$cb_NicAutoPowerSaver.height     = 20
@('Disabled','Enabled') | ForEach-Object {[void] $cb_NicAutoPowerSaver.Items.Add($_)}
$cb_NicAutoPowerSaver.location   = New-Object System.Drawing.Point(204,103)
$cb_NicAutoPowerSaver.Font       = New-Object System.Drawing.Font('Calibri',9)
$cb_NicAutoPowerSaver.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_NicAutoPowerSaver.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label39                         = New-Object system.Windows.Forms.Label
$Label39.text                    = "NicAutoPowerSaver:"
$Label39.AutoSize                = $true
$Label39.width                   = 25
$Label39.height                  = 10
$Label39.location                = New-Object System.Drawing.Point(9,106)
$Label39.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label39.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Label40                         = New-Object system.Windows.Forms.Label
$Label40.text                    = "DelayedPowerUp:"
$Label40.AutoSize                = $true
$Label40.width                   = 25
$Label40.height                  = 10
$Label40.location                = New-Object System.Drawing.Point(9,128)
$Label40.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label40.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_DisableDelayedPowerUp        = New-Object system.Windows.Forms.ComboBox
$cb_DisableDelayedPowerUp.width  = 108
$cb_DisableDelayedPowerUp.height  = 20
@('Enabled','Disabled') | ForEach-Object {[void] $cb_DisableDelayedPowerUp.Items.Add($_)}
$cb_DisableDelayedPowerUp.location  = New-Object System.Drawing.Point(204,125)
$cb_DisableDelayedPowerUp.Font   = New-Object System.Drawing.Font('Calibri',9)
$cb_DisableDelayedPowerUp.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_DisableDelayedPowerUp.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label41                         = New-Object system.Windows.Forms.Label
$Label41.text                    = "ReduceSpeedOnPowerDown:"
$Label41.AutoSize                = $true
$Label41.width                   = 25
$Label41.height                  = 10
$Label41.location                = New-Object System.Drawing.Point(9,150)
$Label41.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label41.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_ReduceSpeedOnPowerDown       = New-Object system.Windows.Forms.ComboBox
$cb_ReduceSpeedOnPowerDown.width  = 108
$cb_ReduceSpeedOnPowerDown.height  = 20
@('Disabled','Enabled') | ForEach-Object {[void] $cb_ReduceSpeedOnPowerDown.Items.Add($_)}
$cb_ReduceSpeedOnPowerDown.location  = New-Object System.Drawing.Point(204,147)
$cb_ReduceSpeedOnPowerDown.Font  = New-Object System.Drawing.Font('Calibri',9)
$cb_ReduceSpeedOnPowerDown.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_ReduceSpeedOnPowerDown.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label35                         = New-Object system.Windows.Forms.Label
$Label35.text                    = "DisablePortScaling:"
$Label35.AutoSize                = $true
$Label35.width                   = 25
$Label35.height                  = 10
$Label35.location                = New-Object System.Drawing.Point(5,162)
$Label35.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label35.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_DisablePortScaling           = New-Object system.Windows.Forms.ComboBox
$cb_DisablePortScaling.width     = 108
$cb_DisablePortScaling.height    = 20
@('Disabled','Enabled') | ForEach-Object {[void] $cb_DisablePortScaling.Items.Add($_)}
$cb_DisablePortScaling.location  = New-Object System.Drawing.Point(117,160)
$cb_DisablePortScaling.Font      = New-Object System.Drawing.Font('Calibri',9)
$cb_DisablePortScaling.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_DisablePortScaling.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label42                         = New-Object system.Windows.Forms.Label
$Label42.text                    = "ManyCoreScaling:"
$Label42.AutoSize                = $true
$Label42.width                   = 25
$Label42.height                  = 10
$Label42.location                = New-Object System.Drawing.Point(5,186)
$Label42.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label42.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_ManyCoreScaling              = New-Object system.Windows.Forms.ComboBox
$cb_ManyCoreScaling.width        = 108
$cb_ManyCoreScaling.height       = 20
@('Disabled','Enabled') | ForEach-Object {[void] $cb_ManyCoreScaling.Items.Add($_)}
$cb_ManyCoreScaling.location     = New-Object System.Drawing.Point(117,184)
$cb_ManyCoreScaling.Font         = New-Object System.Drawing.Font('Calibri',9)
$cb_ManyCoreScaling.ForeColor    = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_ManyCoreScaling.BackColor    = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Groupbox7                       = New-Object system.Windows.Forms.Groupbox
$Groupbox7.height                = 576
$Groupbox7.width                 = 312
$Groupbox7.text                  = "Interface Settings"
$Groupbox7.location              = New-Object System.Drawing.Point(252,314)

$Label44                         = New-Object system.Windows.Forms.Label
$Label44.text                    = "AdvertiseDefaultRoute:"
$Label44.AutoSize                = $true
$Label44.width                   = 25
$Label44.height                  = 10
$Label44.location                = New-Object System.Drawing.Point(10,40)
$Label44.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label44.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_AdvertiseDefaultRoute        = New-Object system.Windows.Forms.ComboBox
$cb_AdvertiseDefaultRoute.width  = 108
$cb_AdvertiseDefaultRoute.height  = 20
$cb_AdvertiseDefaultRoute.location  = New-Object System.Drawing.Point(194,37)
$cb_AdvertiseDefaultRoute.Font   = New-Object System.Drawing.Font('Calibri',9)
$cb_AdvertiseDefaultRoute.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_AdvertiseDefaultRoute.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label45                         = New-Object system.Windows.Forms.Label
$Label45.text                    = "Advertising:"
$Label45.AutoSize                = $true
$Label45.width                   = 25
$Label45.height                  = 10
$Label45.location                = New-Object System.Drawing.Point(10,62)
$Label45.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label45.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_Advertising                  = New-Object system.Windows.Forms.ComboBox
$cb_Advertising.width            = 108
$cb_Advertising.height           = 20
$cb_Advertising.location         = New-Object System.Drawing.Point(194,59)
$cb_Advertising.Font             = New-Object System.Drawing.Font('Calibri',9)
$cb_Advertising.ForeColor        = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_Advertising.BackColor        = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label46                         = New-Object system.Windows.Forms.Label
$Label46.text                    = "AutomaticMetric:"
$Label46.AutoSize                = $true
$Label46.width                   = 25
$Label46.height                  = 10
$Label46.location                = New-Object System.Drawing.Point(10,84)
$Label46.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label46.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_AutomaticMetric              = New-Object system.Windows.Forms.ComboBox
$cb_AutomaticMetric.width        = 108
$cb_AutomaticMetric.height       = 20
$cb_AutomaticMetric.location     = New-Object System.Drawing.Point(194,81)
$cb_AutomaticMetric.Font         = New-Object System.Drawing.Font('Calibri',9)
$cb_AutomaticMetric.ForeColor    = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_AutomaticMetric.BackColor    = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$cb_ClampMss                     = New-Object system.Windows.Forms.ComboBox
$cb_ClampMss.width               = 108
$cb_ClampMss.height              = 20
$cb_ClampMss.location            = New-Object System.Drawing.Point(194,103)
$cb_ClampMss.Font                = New-Object System.Drawing.Font('Calibri',9)
$cb_ClampMss.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_ClampMss.BackColor           = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label47                         = New-Object system.Windows.Forms.Label
$Label47.text                    = "ClampMss:"
$Label47.AutoSize                = $true
$Label47.width                   = 25
$Label47.height                  = 10
$Label47.location                = New-Object System.Drawing.Point(10,106)
$Label47.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label47.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_DirectedMacWolPattern        = New-Object system.Windows.Forms.ComboBox
$cb_DirectedMacWolPattern.width  = 108
$cb_DirectedMacWolPattern.height  = 20
$cb_DirectedMacWolPattern.location  = New-Object System.Drawing.Point(194,125)
$cb_DirectedMacWolPattern.Font   = New-Object System.Drawing.Font('Calibri',9)
$cb_DirectedMacWolPattern.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_DirectedMacWolPattern.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label48                         = New-Object system.Windows.Forms.Label
$Label48.text                    = "DirectedMacWolPattern:"
$Label48.AutoSize                = $true
$Label48.width                   = 25
$Label48.height                  = 10
$Label48.location                = New-Object System.Drawing.Point(10,128)
$Label48.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label48.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Label49                         = New-Object system.Windows.Forms.Label
$Label49.text                    = "EcnMarking:"
$Label49.AutoSize                = $true
$Label49.width                   = 25
$Label49.height                  = 10
$Label49.location                = New-Object System.Drawing.Point(10,150)
$Label49.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label49.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_EcnMarking                   = New-Object system.Windows.Forms.ComboBox
$cb_EcnMarking.width             = 108
$cb_EcnMarking.height            = 20
$cb_EcnMarking.location          = New-Object System.Drawing.Point(194,147)
$cb_EcnMarking.Font              = New-Object System.Drawing.Font('Calibri',9)
$cb_EcnMarking.ForeColor         = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_EcnMarking.BackColor         = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label50                         = New-Object system.Windows.Forms.Label
$Label50.text                    = "ForceArpNdWolPattern:"
$Label50.AutoSize                = $true
$Label50.width                   = 25
$Label50.height                  = 10
$Label50.location                = New-Object System.Drawing.Point(10,172)
$Label50.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label50.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_ForceArpNdWolPattern         = New-Object system.Windows.Forms.ComboBox
$cb_ForceArpNdWolPattern.width   = 108
$cb_ForceArpNdWolPattern.height  = 20
$cb_ForceArpNdWolPattern.location  = New-Object System.Drawing.Point(194,169)
$cb_ForceArpNdWolPattern.Font    = New-Object System.Drawing.Font('Calibri',9)
$cb_ForceArpNdWolPattern.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_ForceArpNdWolPattern.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label51                         = New-Object system.Windows.Forms.Label
$Label51.text                    = "Forwarding:"
$Label51.AutoSize                = $true
$Label51.width                   = 25
$Label51.height                  = 10
$Label51.location                = New-Object System.Drawing.Point(10,194)
$Label51.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label51.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_Forwarding                   = New-Object system.Windows.Forms.ComboBox
$cb_Forwarding.width             = 108
$cb_Forwarding.height            = 20
$cb_Forwarding.location          = New-Object System.Drawing.Point(194,191)
$cb_Forwarding.Font              = New-Object System.Drawing.Font('Calibri',9)
$cb_Forwarding.ForeColor         = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_Forwarding.BackColor         = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$cb_IgnoreDefaultRoutes          = New-Object system.Windows.Forms.ComboBox
$cb_IgnoreDefaultRoutes.width    = 108
$cb_IgnoreDefaultRoutes.height   = 20
$cb_IgnoreDefaultRoutes.location  = New-Object System.Drawing.Point(194,213)
$cb_IgnoreDefaultRoutes.Font     = New-Object System.Drawing.Font('Calibri',9)
$cb_IgnoreDefaultRoutes.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_IgnoreDefaultRoutes.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label52                         = New-Object system.Windows.Forms.Label
$Label52.text                    = "IgnoreDefaultRoutes:"
$Label52.AutoSize                = $true
$Label52.width                   = 25
$Label52.height                  = 10
$Label52.location                = New-Object System.Drawing.Point(10,216)
$Label52.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label52.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Label53                         = New-Object system.Windows.Forms.Label
$Label53.text                    = "ManagedAddressConfiguration:"
$Label53.AutoSize                = $true
$Label53.width                   = 25
$Label53.height                  = 10
$Label53.location                = New-Object System.Drawing.Point(10,238)
$Label53.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label53.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_ManagedAddressConfiguration   = New-Object system.Windows.Forms.ComboBox
$cb_ManagedAddressConfiguration.width  = 108
$cb_ManagedAddressConfiguration.height  = 20
$cb_ManagedAddressConfiguration.location  = New-Object System.Drawing.Point(194,235)
$cb_ManagedAddressConfiguration.Font  = New-Object System.Drawing.Font('Calibri',9)
$cb_ManagedAddressConfiguration.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_ManagedAddressConfiguration.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label54                         = New-Object system.Windows.Forms.Label
$Label54.text                    = "NeighborDiscoverySupported:"
$Label54.AutoSize                = $true
$Label54.width                   = 25
$Label54.height                  = 10
$Label54.location                = New-Object System.Drawing.Point(10,260)
$Label54.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label54.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_NeighborDiscoverySupported   = New-Object system.Windows.Forms.ComboBox
$cb_NeighborDiscoverySupported.width  = 108
$cb_NeighborDiscoverySupported.height  = 20
$cb_NeighborDiscoverySupported.location  = New-Object System.Drawing.Point(194,257)
$cb_NeighborDiscoverySupported.Font  = New-Object System.Drawing.Font('Calibri',9)
$cb_NeighborDiscoverySupported.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_NeighborDiscoverySupported.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label55                         = New-Object system.Windows.Forms.Label
$Label55.text                    = "NeighborUnreachDetection:"
$Label55.AutoSize                = $true
$Label55.width                   = 25
$Label55.height                  = 10
$Label55.location                = New-Object System.Drawing.Point(11,282)
$Label55.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label55.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_NeighborUnreachabilityDetection   = New-Object system.Windows.Forms.ComboBox
$cb_NeighborUnreachabilityDetection.width  = 108
$cb_NeighborUnreachabilityDetection.height  = 20
$cb_NeighborUnreachabilityDetection.location  = New-Object System.Drawing.Point(194,279)
$cb_NeighborUnreachabilityDetection.Font  = New-Object System.Drawing.Font('Calibri',9)
$cb_NeighborUnreachabilityDetection.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_NeighborUnreachabilityDetection.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label56                         = New-Object system.Windows.Forms.Label
$Label56.text                    = "OtherStatefulConfiguration:"
$Label56.AutoSize                = $true
$Label56.width                   = 25
$Label56.height                  = 10
$Label56.location                = New-Object System.Drawing.Point(10,304)
$Label56.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label56.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_OtherStatefulConfiguration   = New-Object system.Windows.Forms.ComboBox
$cb_OtherStatefulConfiguration.width  = 108
$cb_OtherStatefulConfiguration.height  = 20
$cb_OtherStatefulConfiguration.location  = New-Object System.Drawing.Point(194,301)
$cb_OtherStatefulConfiguration.Font  = New-Object System.Drawing.Font('Calibri',9)
$cb_OtherStatefulConfiguration.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_OtherStatefulConfiguration.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label57                         = New-Object system.Windows.Forms.Label
$Label57.text                    = "RouterDiscovery:"
$Label57.AutoSize                = $true
$Label57.width                   = 25
$Label57.height                  = 10
$Label57.location                = New-Object System.Drawing.Point(10,326)
$Label57.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label57.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_RouterDiscovery              = New-Object system.Windows.Forms.ComboBox
$cb_RouterDiscovery.width        = 108
$cb_RouterDiscovery.height       = 20
$cb_RouterDiscovery.location     = New-Object System.Drawing.Point(194,323)
$cb_RouterDiscovery.Font         = New-Object System.Drawing.Font('Calibri',9)
$cb_RouterDiscovery.ForeColor    = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_RouterDiscovery.BackColor    = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label58                         = New-Object system.Windows.Forms.Label
$Label58.text                    = "Store:"
$Label58.AutoSize                = $true
$Label58.width                   = 25
$Label58.height                  = 10
$Label58.location                = New-Object System.Drawing.Point(10,348)
$Label58.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label58.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_Store                        = New-Object system.Windows.Forms.ComboBox
$cb_Store.width                  = 108
$cb_Store.height                 = 20
$cb_Store.location               = New-Object System.Drawing.Point(194,345)
$cb_Store.Font                   = New-Object System.Drawing.Font('Calibri',9)
$cb_Store.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_Store.BackColor              = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label59                         = New-Object system.Windows.Forms.Label
$Label59.text                    = "WeakHostReceive:"
$Label59.AutoSize                = $true
$Label59.width                   = 25
$Label59.height                  = 10
$Label59.location                = New-Object System.Drawing.Point(10,370)
$Label59.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label59.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_WeakHostReceive              = New-Object system.Windows.Forms.ComboBox
$cb_WeakHostReceive.width        = 108
$cb_WeakHostReceive.height       = 20
$cb_WeakHostReceive.location     = New-Object System.Drawing.Point(194,367)
$cb_WeakHostReceive.Font         = New-Object System.Drawing.Font('Calibri',9)
$cb_WeakHostReceive.ForeColor    = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_WeakHostReceive.BackColor    = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label60                         = New-Object system.Windows.Forms.Label
$Label60.text                    = "WeakHostSend:"
$Label60.AutoSize                = $true
$Label60.width                   = 25
$Label60.height                  = 10
$Label60.location                = New-Object System.Drawing.Point(10,392)
$Label60.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label60.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_WeakHostSend                 = New-Object system.Windows.Forms.ComboBox
$cb_WeakHostSend.width           = 108
$cb_WeakHostSend.height          = 20
$cb_WeakHostSend.location        = New-Object System.Drawing.Point(194,389)
$cb_WeakHostSend.Font            = New-Object System.Drawing.Font('Calibri',9)
$cb_WeakHostSend.ForeColor       = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_WeakHostSend.BackColor       = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label61                         = New-Object system.Windows.Forms.Label
$Label61.text                    = "CurrentHopLimit:"
$Label61.AutoSize                = $true
$Label61.width                   = 25
$Label61.height                  = 10
$Label61.location                = New-Object System.Drawing.Point(10,414)
$Label61.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label61.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$tb_CurrentHopLimit              = New-Object system.Windows.Forms.TextBox
$tb_CurrentHopLimit.multiline    = $false
$tb_CurrentHopLimit.width        = 71
$tb_CurrentHopLimit.height       = 20
$tb_CurrentHopLimit.location     = New-Object System.Drawing.Point(195,411)
$tb_CurrentHopLimit.Font         = New-Object System.Drawing.Font('Calibri',10)
$tb_CurrentHopLimit.ForeColor    = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$tb_CurrentHopLimit.BackColor    = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label62                         = New-Object system.Windows.Forms.Label
$Label62.text                    = "BaseReachableTime:"
$Label62.AutoSize                = $true
$Label62.width                   = 25
$Label62.height                  = 10
$Label62.location                = New-Object System.Drawing.Point(10,436)
$Label62.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label62.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$tb_BaseReachableTime            = New-Object system.Windows.Forms.TextBox
$tb_BaseReachableTime.multiline  = $false
$tb_BaseReachableTime.width      = 71
$tb_BaseReachableTime.height     = 20
$tb_BaseReachableTime.location   = New-Object System.Drawing.Point(195,433)
$tb_BaseReachableTime.Font       = New-Object System.Drawing.Font('Calibri',10)
$tb_BaseReachableTime.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$tb_BaseReachableTime.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$tb_ReachableTime                = New-Object system.Windows.Forms.TextBox
$tb_ReachableTime.multiline      = $false
$tb_ReachableTime.width          = 71
$tb_ReachableTime.height         = 20
$tb_ReachableTime.location       = New-Object System.Drawing.Point(195,477)
$tb_ReachableTime.Font           = New-Object System.Drawing.Font('Calibri',10)
$tb_ReachableTime.ForeColor      = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$tb_ReachableTime.BackColor      = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label63                         = New-Object system.Windows.Forms.Label
$Label63.text                    = "ReachableTime:"
$Label63.AutoSize                = $true
$Label63.width                   = 25
$Label63.height                  = 10
$Label63.location                = New-Object System.Drawing.Point(10,480)
$Label63.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label63.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Label64                         = New-Object system.Windows.Forms.Label
$Label64.text                    = "DadRetransmitTime:"
$Label64.AutoSize                = $true
$Label64.width                   = 25
$Label64.height                  = 10
$Label64.location                = New-Object System.Drawing.Point(10,502)
$Label64.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label64.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$tb_DadRetransmitTime            = New-Object system.Windows.Forms.TextBox
$tb_DadRetransmitTime.multiline  = $false
$tb_DadRetransmitTime.width      = 71
$tb_DadRetransmitTime.height     = 20
$tb_DadRetransmitTime.location   = New-Object System.Drawing.Point(195,499)
$tb_DadRetransmitTime.Font       = New-Object System.Drawing.Font('Calibri',10)
$tb_DadRetransmitTime.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$tb_DadRetransmitTime.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label65                         = New-Object system.Windows.Forms.Label
$Label65.text                    = "DadTransmits:"
$Label65.AutoSize                = $true
$Label65.width                   = 25
$Label65.height                  = 10
$Label65.location                = New-Object System.Drawing.Point(10,524)
$Label65.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label65.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$tb_DadTransmits                 = New-Object system.Windows.Forms.TextBox
$tb_DadTransmits.multiline       = $false
$tb_DadTransmits.width           = 71
$tb_DadTransmits.height          = 20
$tb_DadTransmits.location        = New-Object System.Drawing.Point(195,521)
$tb_DadTransmits.Font            = New-Object System.Drawing.Font('Calibri',10)
$tb_DadTransmits.ForeColor       = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$tb_DadTransmits.BackColor       = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label66                         = New-Object system.Windows.Forms.Label
$Label66.text                    = "NlMtu:"
$Label66.AutoSize                = $true
$Label66.width                   = 25
$Label66.height                  = 10
$Label66.location                = New-Object System.Drawing.Point(10,546)
$Label66.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label66.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$tb_NlMtu                        = New-Object system.Windows.Forms.TextBox
$tb_NlMtu.multiline              = $false
$tb_NlMtu.width                  = 71
$tb_NlMtu.height                 = 20
$tb_NlMtu.location               = New-Object System.Drawing.Point(195,543)
$tb_NlMtu.Font                   = New-Object System.Drawing.Font('Calibri',10)
$tb_NlMtu.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$tb_NlMtu.BackColor              = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label67                         = New-Object system.Windows.Forms.Label
$Label67.text                    = "RetransmitTime:"
$Label67.AutoSize                = $true
$Label67.width                   = 25
$Label67.height                  = 10
$Label67.location                = New-Object System.Drawing.Point(10,458)
$Label67.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label67.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$tb_RetransmitTime               = New-Object system.Windows.Forms.TextBox
$tb_RetransmitTime.multiline     = $false
$tb_RetransmitTime.width         = 71
$tb_RetransmitTime.height        = 20
$tb_RetransmitTime.location      = New-Object System.Drawing.Point(195,455)
$tb_RetransmitTime.Font          = New-Object System.Drawing.Font('Calibri',10)
$tb_RetransmitTime.ForeColor     = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$tb_RetransmitTime.BackColor     = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$btn_applyall                    = New-Object system.Windows.Forms.Button
$btn_applyall.text               = "Apply All"
$btn_applyall.width              = 78
$btn_applyall.height             = 20
$btn_applyall.location           = New-Object System.Drawing.Point(427,16)
$btn_applyall.Font               = New-Object System.Drawing.Font('Calibri',10)
$btn_applyall.ForeColor          = [System.Drawing.ColorTranslator]::FromHtml("#7ed321")

$Groupbox6                       = New-Object system.Windows.Forms.Groupbox
$Groupbox6.height                = 365
$Groupbox6.width                 = 230
$Groupbox6.text                  = "Interrupt Settings"
$Groupbox6.location              = New-Object System.Drawing.Point(10,416)

$lb_MsiMode                      = New-Object system.Windows.Forms.Label
$lb_MsiMode.text                 = "MSI Mode:"
$lb_MsiMode.AutoSize             = $true
$lb_MsiMode.width                = 25
$lb_MsiMode.height               = 10
$lb_MsiMode.location             = New-Object System.Drawing.Point(7,15)
$lb_MsiMode.Font                 = New-Object System.Drawing.Font('Calibri',10)
$lb_MsiMode.ForeColor            = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_MsiMode                      = New-Object system.Windows.Forms.ComboBox
$cb_MsiMode.width                = 108
$cb_MsiMode.height               = 20
@('Disabled','Enabled') | ForEach-Object {[void] $cb_MsiMode.Items.Add($_)}
$cb_MsiMode.location             = New-Object System.Drawing.Point(114,11)
$cb_MsiMode.Font                 = New-Object System.Drawing.Font('Calibri',9)
$cb_MsiMode.ForeColor            = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_MsiMode.BackColor            = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$lb_InterruptPriority            = New-Object system.Windows.Forms.Label
$lb_InterruptPriority.text       = "Interrupt Priority:"
$lb_InterruptPriority.AutoSize   = $true
$lb_InterruptPriority.width      = 25
$lb_InterruptPriority.height     = 10
$lb_InterruptPriority.location   = New-Object System.Drawing.Point(7,37)
$lb_InterruptPriority.Font       = New-Object System.Drawing.Font('Calibri',10)
$lb_InterruptPriority.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_InterruptPriority            = New-Object system.Windows.Forms.ComboBox
$cb_InterruptPriority.width      = 108
$cb_InterruptPriority.height     = 20
@('Undefined','Low','Normal','High') | ForEach-Object {[void] $cb_InterruptPriority.Items.Add($_)}
$cb_InterruptPriority.location   = New-Object System.Drawing.Point(114,33)
$cb_InterruptPriority.Font       = New-Object System.Drawing.Font('Calibri',9)
$cb_InterruptPriority.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_InterruptPriority.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$cb_cpu0                         = New-Object system.Windows.Forms.CheckBox
$cb_cpu0.text                    = "CPU 0"
$cb_cpu0.AutoSize                = $true
$cb_cpu0.width                   = 95
$cb_cpu0.height                  = 20
$cb_cpu0.location                = New-Object System.Drawing.Point(10,128)
$cb_cpu0.Font                    = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu0.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_cpu1                         = New-Object system.Windows.Forms.CheckBox
$cb_cpu1.text                    = "CPU 1"
$cb_cpu1.AutoSize                = $true
$cb_cpu1.width                   = 95
$cb_cpu1.height                  = 20
$cb_cpu1.location                = New-Object System.Drawing.Point(10,147)
$cb_cpu1.Font                    = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu1.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_cpu2                         = New-Object system.Windows.Forms.CheckBox
$cb_cpu2.text                    = "CPU 2"
$cb_cpu2.AutoSize                = $true
$cb_cpu2.width                   = 95
$cb_cpu2.height                  = 20
$cb_cpu2.location                = New-Object System.Drawing.Point(10,164)
$cb_cpu2.Font                    = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu2.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_cpu3                         = New-Object system.Windows.Forms.CheckBox
$cb_cpu3.text                    = "CPU 3"
$cb_cpu3.AutoSize                = $true
$cb_cpu3.width                   = 95
$cb_cpu3.height                  = 20
$cb_cpu3.location                = New-Object System.Drawing.Point(10,183)
$cb_cpu3.Font                    = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu3.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_cpu4                         = New-Object system.Windows.Forms.CheckBox
$cb_cpu4.text                    = "CPU 4"
$cb_cpu4.AutoSize                = $true
$cb_cpu4.width                   = 95
$cb_cpu4.height                  = 20
$cb_cpu4.location                = New-Object System.Drawing.Point(10,200)
$cb_cpu4.Font                    = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu4.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_cpu5                         = New-Object system.Windows.Forms.CheckBox
$cb_cpu5.text                    = "CPU 5"
$cb_cpu5.AutoSize                = $true
$cb_cpu5.width                   = 95
$cb_cpu5.height                  = 20
$cb_cpu5.location                = New-Object System.Drawing.Point(10,219)
$cb_cpu5.Font                    = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu5.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_cpu6                         = New-Object system.Windows.Forms.CheckBox
$cb_cpu6.text                    = "CPU 6"
$cb_cpu6.AutoSize                = $true
$cb_cpu6.width                   = 95
$cb_cpu6.height                  = 20
$cb_cpu6.location                = New-Object System.Drawing.Point(10,237)
$cb_cpu6.Font                    = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu6.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_cpu7                         = New-Object system.Windows.Forms.CheckBox
$cb_cpu7.text                    = "CPU 7"
$cb_cpu7.AutoSize                = $true
$cb_cpu7.width                   = 95
$cb_cpu7.height                  = 20
$cb_cpu7.location                = New-Object System.Drawing.Point(10,256)
$cb_cpu7.Font                    = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu7.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_cpu8                         = New-Object system.Windows.Forms.CheckBox
$cb_cpu8.text                    = "CPU 8"
$cb_cpu8.AutoSize                = $true
$cb_cpu8.width                   = 95
$cb_cpu8.height                  = 20
$cb_cpu8.location                = New-Object System.Drawing.Point(10,274)
$cb_cpu8.Font                    = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu8.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_cpu11                        = New-Object system.Windows.Forms.CheckBox
$cb_cpu11.text                   = "CPU 11"
$cb_cpu11.AutoSize               = $true
$cb_cpu11.width                  = 95
$cb_cpu11.height                 = 20
$cb_cpu11.location               = New-Object System.Drawing.Point(71,128)
$cb_cpu11.Font                   = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu11.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_cpu12                        = New-Object system.Windows.Forms.CheckBox
$cb_cpu12.text                   = "CPU 12"
$cb_cpu12.AutoSize               = $true
$cb_cpu12.width                  = 95
$cb_cpu12.height                 = 20
$cb_cpu12.location               = New-Object System.Drawing.Point(71,147)
$cb_cpu12.Font                   = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu12.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_cpu13                        = New-Object system.Windows.Forms.CheckBox
$cb_cpu13.text                   = "CPU 13"
$cb_cpu13.AutoSize               = $true
$cb_cpu13.width                  = 95
$cb_cpu13.height                 = 20
$cb_cpu13.location               = New-Object System.Drawing.Point(71,164)
$cb_cpu13.Font                   = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu13.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_cpu14                        = New-Object system.Windows.Forms.CheckBox
$cb_cpu14.text                   = "CPU 14"
$cb_cpu14.AutoSize               = $true
$cb_cpu14.width                  = 95
$cb_cpu14.height                 = 20
$cb_cpu14.location               = New-Object System.Drawing.Point(71,183)
$cb_cpu14.Font                   = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu14.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_cpu15                        = New-Object system.Windows.Forms.CheckBox
$cb_cpu15.text                   = "CPU 15"
$cb_cpu15.AutoSize               = $true
$cb_cpu15.width                  = 95
$cb_cpu15.height                 = 20
$cb_cpu15.location               = New-Object System.Drawing.Point(71,200)
$cb_cpu15.Font                   = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu15.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_cpu16                        = New-Object system.Windows.Forms.CheckBox
$cb_cpu16.text                   = "CPU 16"
$cb_cpu16.AutoSize               = $true
$cb_cpu16.width                  = 95
$cb_cpu16.height                 = 20
$cb_cpu16.location               = New-Object System.Drawing.Point(71,219)
$cb_cpu16.Font                   = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu16.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_cpu17                        = New-Object system.Windows.Forms.CheckBox
$cb_cpu17.text                   = "CPU 17"
$cb_cpu17.AutoSize               = $true
$cb_cpu17.width                  = 95
$cb_cpu17.height                 = 20
$cb_cpu17.location               = New-Object System.Drawing.Point(71,237)
$cb_cpu17.Font                   = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu17.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_cpu18                        = New-Object system.Windows.Forms.CheckBox
$cb_cpu18.text                   = "CPU 18"
$cb_cpu18.AutoSize               = $true
$cb_cpu18.width                  = 95
$cb_cpu18.height                 = 20
$cb_cpu18.location               = New-Object System.Drawing.Point(71,256)
$cb_cpu18.Font                   = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu18.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_cpu19                        = New-Object system.Windows.Forms.CheckBox
$cb_cpu19.text                   = "CPU 19"
$cb_cpu19.AutoSize               = $true
$cb_cpu19.width                  = 95
$cb_cpu19.height                 = 20
$cb_cpu19.location               = New-Object System.Drawing.Point(71,274)
$cb_cpu19.Font                   = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu19.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_cpu22                        = New-Object system.Windows.Forms.CheckBox
$cb_cpu22.text                   = "CPU 22"
$cb_cpu22.AutoSize               = $true
$cb_cpu22.width                  = 95
$cb_cpu22.height                 = 20
$cb_cpu22.location               = New-Object System.Drawing.Point(136,128)
$cb_cpu22.Font                   = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu22.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_cpu23                        = New-Object system.Windows.Forms.CheckBox
$cb_cpu23.text                   = "CPU 23"
$cb_cpu23.AutoSize               = $true
$cb_cpu23.width                  = 95
$cb_cpu23.height                 = 20
$cb_cpu23.location               = New-Object System.Drawing.Point(136,147)
$cb_cpu23.Font                   = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu23.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_cpu24                        = New-Object system.Windows.Forms.CheckBox
$cb_cpu24.text                   = "CPU 24"
$cb_cpu24.AutoSize               = $true
$cb_cpu24.width                  = 95
$cb_cpu24.height                 = 20
$cb_cpu24.location               = New-Object System.Drawing.Point(136,164)
$cb_cpu24.Font                   = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu24.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_cpu25                        = New-Object system.Windows.Forms.CheckBox
$cb_cpu25.text                   = "CPU 25"
$cb_cpu25.AutoSize               = $true
$cb_cpu25.width                  = 95
$cb_cpu25.height                 = 20
$cb_cpu25.location               = New-Object System.Drawing.Point(136,183)
$cb_cpu25.Font                   = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu25.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_cpu26                        = New-Object system.Windows.Forms.CheckBox
$cb_cpu26.text                   = "CPU 26"
$cb_cpu26.AutoSize               = $true
$cb_cpu26.width                  = 95
$cb_cpu26.height                 = 20
$cb_cpu26.location               = New-Object System.Drawing.Point(136,200)
$cb_cpu26.Font                   = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu26.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_cpu27                        = New-Object system.Windows.Forms.CheckBox
$cb_cpu27.text                   = "CPU 27"
$cb_cpu27.AutoSize               = $true
$cb_cpu27.width                  = 95
$cb_cpu27.height                 = 20
$cb_cpu27.location               = New-Object System.Drawing.Point(136,219)
$cb_cpu27.Font                   = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu27.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_cpu28                        = New-Object system.Windows.Forms.CheckBox
$cb_cpu28.text                   = "CPU 28"
$cb_cpu28.AutoSize               = $true
$cb_cpu28.width                  = 95
$cb_cpu28.height                 = 20
$cb_cpu28.location               = New-Object System.Drawing.Point(136,237)
$cb_cpu28.Font                   = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu28.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_cpu29                        = New-Object system.Windows.Forms.CheckBox
$cb_cpu29.text                   = "CPU 29"
$cb_cpu29.AutoSize               = $true
$cb_cpu29.width                  = 95
$cb_cpu29.height                 = 20
$cb_cpu29.location               = New-Object System.Drawing.Point(136,256)
$cb_cpu29.Font                   = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu29.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_cpu30                        = New-Object system.Windows.Forms.CheckBox
$cb_cpu30.text                   = "CPU 30"
$cb_cpu30.AutoSize               = $true
$cb_cpu30.width                  = 95
$cb_cpu30.height                 = 20
$cb_cpu30.location               = New-Object System.Drawing.Point(136,274)
$cb_cpu30.Font                   = New-Object System.Drawing.Font('Calibri',7)
$cb_cpu30.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$lb_DevicePolicy                 = New-Object system.Windows.Forms.Label
$lb_DevicePolicy.text            = "DevicePolicy:"
$lb_DevicePolicy.AutoSize        = $true
$lb_DevicePolicy.width           = 25
$lb_DevicePolicy.height          = 10
$lb_DevicePolicy.location        = New-Object System.Drawing.Point(7,60)
$lb_DevicePolicy.Font            = New-Object System.Drawing.Font('Calibri',10)
$lb_DevicePolicy.ForeColor       = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_DevicePolicy                 = New-Object system.Windows.Forms.ComboBox
$cb_DevicePolicy.width           = 214
$cb_DevicePolicy.height          = 20
@('MachineDefault','AllCloseProcessors','OneCloseProcessor','AllProcessorsInMachine','SpecifiedProcessors','SreadMessagesAcrossAllProcessors') | ForEach-Object {[void] $cb_DevicePolicy.Items.Add($_)}
$cb_DevicePolicy.location        = New-Object System.Drawing.Point(7,81)
$cb_DevicePolicy.Font            = New-Object System.Drawing.Font('Calibri',9)
$cb_DevicePolicy.ForeColor       = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_DevicePolicy.BackColor       = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label68                         = New-Object system.Windows.Forms.Label
$Label68.text                    = "Value:"
$Label68.AutoSize                = $true
$Label68.width                   = 25
$Label68.height                  = 10
$Label68.location                = New-Object System.Drawing.Point(10,328)
$Label68.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label68.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$lb_value                        = New-Object system.Windows.Forms.Label
$lb_value.text                   = "0"
$lb_value.AutoSize               = $true
$lb_value.width                  = 25
$lb_value.height                 = 10
$lb_value.location               = New-Object System.Drawing.Point(50,328)
$lb_value.Font                   = New-Object System.Drawing.Font('Calibri',10)
$lb_value.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$btn_applyInterfaceSettings      = New-Object system.Windows.Forms.Button
$btn_applyInterfaceSettings.text  = "Apply"
$btn_applyInterfaceSettings.width  = 60
$btn_applyInterfaceSettings.height  = 21
$btn_applyInterfaceSettings.location  = New-Object System.Drawing.Point(252,894)
$btn_applyInterfaceSettings.Font  = New-Object System.Drawing.Font('Calibri',10)
$btn_applyInterfaceSettings.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Label69                         = New-Object system.Windows.Forms.Label
$Label69.text                    = "ms"
$Label69.AutoSize                = $true
$Label69.width                   = 25
$Label69.height                  = 10
$Label69.location                = New-Object System.Drawing.Point(269,436)
$Label69.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label69.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Label70                         = New-Object system.Windows.Forms.Label
$Label70.text                    = "ms"
$Label70.AutoSize                = $true
$Label70.width                   = 25
$Label70.height                  = 10
$Label70.location                = New-Object System.Drawing.Point(269,458)
$Label70.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label70.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Label71                         = New-Object system.Windows.Forms.Label
$Label71.text                    = "ms"
$Label71.AutoSize                = $true
$Label71.width                   = 25
$Label71.height                  = 10
$Label71.location                = New-Object System.Drawing.Point(269,480)
$Label71.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label71.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Label72                         = New-Object system.Windows.Forms.Label
$Label72.text                    = "bytes"
$Label72.AutoSize                = $true
$Label72.width                   = 25
$Label72.height                  = 10
$Label72.location                = New-Object System.Drawing.Point(269,546)
$Label72.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label72.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Label73                         = New-Object system.Windows.Forms.Label
$Label73.text                    = "TxIntDelay:"
$Label73.AutoSize                = $true
$Label73.width                   = 25
$Label73.height                  = 10
$Label73.location                = New-Object System.Drawing.Point(9,368)
$Label73.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label73.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$tb_TxIntDelay                   = New-Object system.Windows.Forms.TextBox
$tb_TxIntDelay.multiline         = $false
$tb_TxIntDelay.width             = 71
$tb_TxIntDelay.height            = 20
$tb_TxIntDelay.location          = New-Object System.Drawing.Point(193,365)
$tb_TxIntDelay.Font              = New-Object System.Drawing.Font('Calibri',10)
$tb_TxIntDelay.ForeColor         = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$tb_TxIntDelay.BackColor         = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label74                         = New-Object system.Windows.Forms.Label
$Label74.text                    = "PacketDirect:"
$Label74.AutoSize                = $true
$Label74.width                   = 25
$Label74.height                  = 10
$Label74.location                = New-Object System.Drawing.Point(9,390)
$Label74.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label74.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_PacketDirect                 = New-Object system.Windows.Forms.ComboBox
$cb_PacketDirect.width           = 190
$cb_PacketDirect.height          = 20
@('Disabled','Enabled','Undefined') | ForEach-Object {[void] $cb_PacketDirect.Items.Add($_)}
$cb_PacketDirect.location        = New-Object System.Drawing.Point(193,387)
$cb_PacketDirect.Font            = New-Object System.Drawing.Font('Calibri',9)
$cb_PacketDirect.ForeColor       = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_PacketDirect.BackColor       = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label75                         = New-Object system.Windows.Forms.Label
$Label75.text                    = "Coalesce:"
$Label75.AutoSize                = $true
$Label75.width                   = 25
$Label75.height                  = 10
$Label75.location                = New-Object System.Drawing.Point(9,412)
$Label75.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label75.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_EnableCoalesce               = New-Object system.Windows.Forms.ComboBox
$cb_EnableCoalesce.width         = 190
$cb_EnableCoalesce.height        = 20
@('Disabled','Enabled','Undefined') | ForEach-Object {[void] $cb_EnableCoalesce.Items.Add($_)}
$cb_EnableCoalesce.location      = New-Object System.Drawing.Point(193,409)
$cb_EnableCoalesce.Font          = New-Object System.Drawing.Font('Calibri',9)
$cb_EnableCoalesce.ForeColor     = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_EnableCoalesce.BackColor     = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$Label76                         = New-Object system.Windows.Forms.Label
$Label76.text                    = "UdpTxScaling:"
$Label76.AutoSize                = $true
$Label76.width                   = 25
$Label76.height                  = 10
$Label76.location                = New-Object System.Drawing.Point(9,434)
$Label76.Font                    = New-Object System.Drawing.Font('Calibri',10)
$Label76.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_EnableUdpTxScaling           = New-Object system.Windows.Forms.ComboBox
$cb_EnableUdpTxScaling.width     = 190
$cb_EnableUdpTxScaling.height    = 20
@('Disabled','Enabled','Undefined') | ForEach-Object {[void] $cb_EnableUdpTxScaling.Items.Add($_)}
$cb_EnableUdpTxScaling.location  = New-Object System.Drawing.Point(193,431)
$cb_EnableUdpTxScaling.Font      = New-Object System.Drawing.Font('Calibri',9)
$cb_EnableUdpTxScaling.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$cb_EnableUdpTxScaling.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#171717")

$cb_IPv6                         = New-Object system.Windows.Forms.CheckBox
$cb_IPv6.text                    = "IPv6"
$cb_IPv6.AutoSize                = $true
$cb_IPv6.width                   = 95
$cb_IPv6.height                  = 20
$cb_IPv6.location                = New-Object System.Drawing.Point(503,300)
$cb_IPv6.Font                    = New-Object System.Drawing.Font('Calibri',7)
$cb_IPv6.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$cb_IPv4                         = New-Object system.Windows.Forms.CheckBox
$cb_IPv4.text                    = "IPv4"
$cb_IPv4.AutoSize                = $true
$cb_IPv4.width                   = 95
$cb_IPv4.height                  = 20
$cb_IPv4.location                = New-Object System.Drawing.Point(456,300)
$cb_IPv4.Font                    = New-Object System.Drawing.Font('Calibri',7)
$cb_IPv4.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$Form.controls.AddRange(@($cb_AdapterNamesCombo,$Label1,$Label2,$lbl_Path,$Label3,$lbl_ndisver,$Groupbox1,$btn_apply,$btn_unqueues,$btn_openreg,$Groupbox2,$btn_applyglobal,$Groupbox3,$btn_applyadv,$btn_adaptrest,$Groupbox5,$Groupbox4,$btn_applypowersettings,$Groupbox7,$btn_applyall,$Groupbox6,$btn_applyInterfaceSettings,$cb_IPv6,$cb_IPv4))
$Groupbox1.controls.AddRange(@($Label4,$Label5,$Label6,$lbl_rssstatus,$cb_rss_onoff,$cb_rssqueues,$cb_rssprofile,$Label7,$cb_rssbaseproc,$Label8,$cb_rssmaxproc,$Label9,$cb_rssmaxprocs,$Label35,$cb_DisablePortScaling,$Label42,$cb_ManyCoreScaling))
$Groupbox2.controls.AddRange(@($Label10,$cb_osrss,$Label11,$cb_osrsc,$Label12,$cb_oschimney,$Label13,$cb_ostaskoff,$cb_osntd,$Label14,$cb_osntdais,$Label15,$cb_ospcf,$Label16))
$Groupbox3.controls.AddRange(@($Label17,$cb_flowcontrol,$Label18,$Label19,$Label20,$Label21,$Label22,$Label23,$cb_InterruptModeration,$cb_IPChecksumOffloadIPv4,$cb_TCPChecksumOffloadIPv4,$cb_TCPChecksumOffloadIPv6,$cb_UDPChecksumOffloadIPv4,$cb_UDPChecksumOffloadIPv6,$Label24,$cb_InterruptModerationRate,$Label25,$Label26,$cb_LsoV2IPv4,$cb_LsoV2IPv6,$Label27,$cb_LsoV1IPv4,$Label28,$cb_PMNSOffload,$Label29,$cb_PMARPOffload,$cb_PriorityVLANTag,$Label00,$Label30,$cb_ReceiveBuffers,$Label31,$cb_TransmitBuffers,$Label73,$tb_TxIntDelay,$Label74,$cb_PacketDirect,$Label75,$cb_EnableCoalesce,$Label76,$cb_EnableUdpTxScaling))
$Groupbox5.controls.AddRange(@($Label32,$Label33,$cb_tcpiprssbasecpu,$cb_ndisrssbasecpu))
$Groupbox4.controls.AddRange(@($Label34,$cb_EnablePME,$Label36,$cb_EnableDynamicPowerGating,$Label37,$cb_EnableConnectedPowerGating,$Label38,$cb_AutoPowerSaveModeEnabled,$cb_NicAutoPowerSaver,$Label39,$Label40,$cb_DisableDelayedPowerUp,$Label41,$cb_ReduceSpeedOnPowerDown))
$Groupbox7.controls.AddRange(@($Label44,$cb_AdvertiseDefaultRoute,$Label45,$cb_Advertising,$Label46,$cb_AutomaticMetric,$cb_ClampMss,$Label47,$cb_DirectedMacWolPattern,$Label48,$Label49,$cb_EcnMarking,$Label50,$cb_ForceArpNdWolPattern,$Label51,$cb_Forwarding,$cb_IgnoreDefaultRoutes,$Label52,$Label53,$cb_ManagedAddressConfiguration,$Label54,$cb_NeighborDiscoverySupported,$Label55,$cb_NeighborUnreachabilityDetection,$Label56,$cb_OtherStatefulConfiguration,$Label57,$cb_RouterDiscovery,$Label58,$cb_Store,$Label59,$cb_WeakHostReceive,$Label60,$cb_WeakHostSend,$Label61,$tb_CurrentHopLimit,$Label62,$tb_BaseReachableTime,$tb_ReachableTime,$Label63,$Label64,$tb_DadRetransmitTime,$Label65,$tb_DadTransmits,$Label66,$tb_NlMtu,$Label67,$tb_RetransmitTime,$Label69,$Label70,$Label71,$Label72))
$Groupbox6.controls.AddRange(@($lb_MsiMode,$cb_MsiMode,$lb_InterruptPriority,$cb_InterruptPriority,$cb_cpu0,$cb_cpu1,$cb_cpu2,$cb_cpu3,$cb_cpu4,$cb_cpu5,$cb_cpu6,$cb_cpu7,$cb_cpu8,$cb_cpu11,$cb_cpu12,$cb_cpu13,$cb_cpu14,$cb_cpu15,$cb_cpu16,$cb_cpu17,$cb_cpu18,$cb_cpu19,$cb_cpu22,$cb_cpu23,$cb_cpu24,$cb_cpu25,$cb_cpu26,$cb_cpu27,$cb_cpu28,$cb_cpu29,$cb_cpu30,$lb_DevicePolicy,$cb_DevicePolicy,$Label68,$lb_value))


#region Logic 
#Cleaning Code
cls

#Write your logic code here

#GUI Settings

#Deselect Content for Updating Text/Value Changes
$Form.Add_MouseClick({$Form.ActiveControl = $null})
$Groupbox1.Add_MouseClick({$Form.ActiveControl = $null})
$Groupbox2.Add_MouseClick({$Form.ActiveControl = $null})
$Groupbox3.Add_MouseClick({$Form.ActiveControl = $null})
$Groupbox4.Add_MouseClick({$Form.ActiveControl = $null})
$Groupbox5.Add_MouseClick({$Form.ActiveControl = $null})


#Groupboxes
$Groupbox1.Font                = New-Object System.Drawing.Font('Calibri',10)
$Groupbox1.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$Groupbox2.Font                = New-Object System.Drawing.Font('Calibri',10)
$Groupbox2.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$Groupbox3.Font                = New-Object System.Drawing.Font('Calibri',10)
$Groupbox3.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$Groupbox4.Font                = New-Object System.Drawing.Font('Calibri',10)
$Groupbox4.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$Groupbox5.Font                = New-Object System.Drawing.Font('Calibri',10)
$Groupbox5.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$Groupbox7.Font                = New-Object System.Drawing.Font('Calibri',10)
$Groupbox7.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")
$Groupbox6.Font                = New-Object System.Drawing.Font('Calibri',10)
$Groupbox6.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

#Buttons
$btn_openreg.Flatstyle = 'Flat'
$btn_apply.Flatstyle = 'Flat'
$btn_applyglobal.Flatstyle = 'Flat'
$btn_applyadv.Flatstyle = 'Flat'
$btn_adaptrest.Flatstyle = 'Flat'
$btn_unqueues.Flatstyle = 'Flat'
$btn_applotadapters.Flatstyle = 'Flat'
$btn_applypowersettings.Flatstyle = 'Flat'
$btn_applyall.Flatstyle = 'Flat'
$btn_applyInterfaceSettings.Flatstyle = 'Flat'

function Set-ConsoleColor ($bc, $fc) {
    $Host.UI.RawUI.BackgroundColor = $bc
    $Host.UI.RawUI.ForegroundColor = $fc
    Clear-Host
}
Set-ConsoleColor 'Black' 'Green'

#Locked Combos
$cb_AdapterNamesCombo.Flatstyle = 'Flat'
$cb_rss_onoff.Flatstyle = 'Flat'
$cb_rssprofile.Flatstyle = 'Flat'
$cb_rssbaseproc.Flatstyle = 'Flat'
$cb_rssmaxproc.Flatstyle = 'Flat'
$cb_rssmaxprocs.Flatstyle = 'Flat'
$cb_rssqueues.Flatstyle = 'Flat'
$cb_osrss.Flatstyle = 'Flat'
$cb_osrsc.Flatstyle = 'Flat'
$cb_oschimney.Flatstyle = 'Flat'
$cb_ostaskoff.Flatstyle = 'Flat'
$cb_osntd.Flatstyle = 'Flat'
$cb_osntdais.Flatstyle = 'Flat'
$cb_ospcf.Flatstyle = 'Flat'
$cb_flowcontrol.Flatstyle = 'Flat'
$cb_IPChecksumOffloadIPv4.Flatstyle = 'Flat'
$cb_TCPChecksumOffloadIPv4.Flatstyle = 'Flat'
$cb_TCPChecksumOffloadIPv6.Flatstyle = 'Flat'
$cb_UDPChecksumOffloadIPv4.Flatstyle = 'Flat'
$cb_UDPChecksumOffloadIPv6.Flatstyle = 'Flat'
$cb_InterruptModeration.Flatstyle = 'Flat'
$cb_LsoV1IPv4.Flatstyle = 'Flat'
$cb_LsoV2IPv4.Flatstyle = 'Flat'
$cb_LsoV2IPv6.Flatstyle = 'Flat'
$cb_PMARPOffload.Flatstyle = 'Flat'
$cb_PMNSOffload.Flatstyle = 'Flat'
$cb_PriorityVLANTag.Flatstyle = 'Flat'
$cb_ReceiveBuffers.Flatstyle = 'Flat'
$cb_TransmitBuffers.Flatstyle = 'Flat'
$cb_InterruptModerationRate.Flatstyle = 'Flat'
$cb_rss_onoff.DropDownStyle = 'DropDownList'
$cb_AdapterNamesCombo.DropDownStyle = 'DropDownList'
$cb_rssprofile.DropDownStyle = 'DropDownList'
$cb_rssbaseproc.DropDownStyle = 'DropDownList'
$cb_rssmaxproc.DropDownStyle = 'DropDownList'
$cb_rssmaxprocs.DropDownStyle = 'DropDownList'
$cb_rssqueues.DropDownStyle = 'DropDownList'
$cb_osrss.DropDownStyle = 'DropDownList'
$cb_osrsc.DropDownStyle = 'DropDownList'
$cb_oschimney.DropDownStyle = 'DropDownList'
$cb_ostaskoff.DropDownStyle = 'DropDownList'
$cb_osntd.DropDownStyle = 'DropDownList'
$cb_osntdais.DropDownStyle = 'DropDownList'
$cb_ospcf.DropDownStyle = 'DropDownList'
$cb_flowcontrol.DropDownStyle = 'DropDownList'
$cb_IPChecksumOffloadIPv4.DropDownStyle = 'DropDownList'
$cb_TCPChecksumOffloadIPv4.DropDownStyle = 'DropDownList'
$cb_TCPChecksumOffloadIPv6.DropDownStyle = 'DropDownList'
$cb_UDPChecksumOffloadIPv4.DropDownStyle = 'DropDownList'
$cb_UDPChecksumOffloadIPv6.DropDownStyle = 'DropDownList'
$cb_InterruptModeration.DropDownStyle = 'DropDownList'
$cb_LsoV1IPv4.DropDownStyle = 'DropDownList'
$cb_LsoV2IPv4.DropDownStyle = 'DropDownList'
$cb_LsoV2IPv6.DropDownStyle = 'DropDownList'
$cb_PMARPOffload.DropDownStyle = 'DropDownList'
$cb_PMNSOffload.DropDownStyle = 'DropDownList'
$cb_PriorityVLANTag.DropDownStyle = 'DropDownList'

$cb_DisablePortScaling.Flatstyle = 'Flat'
$cb_ManyCoreScaling.Flatstyle = 'Flat'
$cb_DisablePortScaling.DropDownStyle = 'DropDownList'
$cb_ManyCoreScaling.DropDownStyle = 'DropDownList'

$cb_PacketDirect.Flatstyle = 'Flat'
$cb_PacketDirect.DropDownStyle = 'DropDownList'

$cb_EnableCoalesce.Flatstyle = 'Flat'
$cb_EnableCoalesce.DropDownStyle = 'DropDownList'
$cb_EnableUdpTxScaling.Flatstyle = 'Flat'
$cb_EnableUdpTxScaling.DropDownStyle = 'DropDownList'

$cb_EnablePME.Flatstyle = 'Flat'
$cb_EnableDynamicPowerGating.Flatstyle = 'Flat'
$cb_EnableConnectedPowerGating.Flatstyle = 'Flat'
$cb_AutoPowerSaveModeEnabled.Flatstyle = 'Flat'
$cb_NicAutoPowerSaver.Flatstyle = 'Flat'
$cb_DisableDelayedPowerUp.Flatstyle = 'Flat'
$cb_ReduceSpeedOnPowerDown.Flatstyle = 'Flat'
$cb_EnablePME.DropDownStyle = 'DropDownList'
$cb_EnableDynamicPowerGating.DropDownStyle = 'DropDownList'
$cb_EnableConnectedPowerGating.DropDownStyle = 'DropDownList'
$cb_AutoPowerSaveModeEnabled.DropDownStyle = 'DropDownList'
$cb_NicAutoPowerSaver.DropDownStyle = 'DropDownList'
$cb_DisableDelayedPowerUp.DropDownStyle = 'DropDownList'
$cb_ReduceSpeedOnPowerDown.DropDownStyle = 'DropDownList'

$cb_DevicePolicy.Flatstyle = 'Flat'
$cb_MsiMode.Flatstyle = 'Flat'
$cb_InterruptPriority.Flatstyle = 'Flat'
$cb_MsiMode.DropDownStyle = 'DropDownList'
$cb_InterruptPriority.DropDownStyle = 'DropDownList'
$cb_DevicePolicy.DropDownStyle = 'DropDownList'
$cb_MsiMode.Enabled = $false
$cb_InterruptPriority.Enabled = $false
$lb_MsiMode.Enabled = $false
$lb_InterruptPriority.Enabled = $false
$cb_DevicePolicy.Enabled = $false

$cb_AdvertiseDefaultRoute.Flatstyle = 'Flat'
$cb_Advertising.Flatstyle = 'Flat'
$cb_AutomaticMetric.Flatstyle = 'Flat'
$cb_ClampMss.Flatstyle = 'Flat'
$cb_DirectedMacWolPattern.Flatstyle = 'Flat'
$cb_EcnMarking.Flatstyle = 'Flat'
$cb_ForceArpNdWolPattern.Flatstyle = 'Flat'
$cb_Forwarding.Flatstyle = 'Flat'
$cb_IgnoreDefaultRoutes.Flatstyle = 'Flat'
$cb_ManagedAddressConfiguration.Flatstyle = 'Flat'
$cb_NeighborDiscoverySupported.Flatstyle = 'Flat'
$cb_NeighborUnreachabilityDetection.Flatstyle = 'Flat'
$cb_OtherStatefulConfiguration.Flatstyle = 'Flat'
$cb_RouterDiscovery.Flatstyle = 'Flat'
$cb_Store.Flatstyle = 'Flat'
$cb_WeakHostReceive.Flatstyle = 'Flat'
$cb_WeakHostSend.Flatstyle = 'Flat'
$cb_AdvertiseDefaultRoute.DropDownStyle = 'DropDownList'
$cb_Advertising.DropDownStyle = 'DropDownList'
$cb_AutomaticMetric.DropDownStyle = 'DropDownList'
$cb_ClampMss.DropDownStyle = 'DropDownList'
$cb_DirectedMacWolPattern.DropDownStyle = 'DropDownList'
$cb_EcnMarking.DropDownStyle = 'DropDownList'
$cb_ForceArpNdWolPattern.DropDownStyle = 'DropDownList'
$cb_Forwarding.DropDownStyle = 'DropDownList'
$cb_IgnoreDefaultRoutes.DropDownStyle = 'DropDownList'
$cb_ManagedAddressConfiguration.DropDownStyle = 'DropDownList'
$cb_NeighborDiscoverySupported.DropDownStyle = 'DropDownList'
$cb_NeighborUnreachabilityDetection.DropDownStyle = 'DropDownList'
$cb_OtherStatefulConfiguration.DropDownStyle = 'DropDownList'
$cb_RouterDiscovery.DropDownStyle = 'DropDownList'
$cb_Store.DropDownStyle = 'DropDownList'
$cb_WeakHostReceive.DropDownStyle = 'DropDownList'
$cb_WeakHostSend.DropDownStyle = 'DropDownList'

<#
$combobox_krnldbg.Flatstyle = 'Flat'
$combobox_PPPOE.Flatstyle = 'Flat'
$combobox_SSTP.Flatstyle = 'Flat'
$combobox_L2TP.Flatstyle = 'Flat'
$combobox_IP.Flatstyle = 'Flat'
$combobox_IPv6.Flatstyle = 'Flat'
$combobox_NetMon.Flatstyle = 'Flat'
$combobox_PPTP.Flatstyle = 'Flat'
$combobox_IKEv2.Flatstyle = 'Flat'
$combobox_Teredo.Flatstyle = 'Flat'
$combobox_IPHTTPS.Flatstyle = 'Flat'
$combobox_6to4.Flatstyle = 'Flat'
#>

<#
$combobox_krnldbg.DropDownStyle = 'DropDownList'
$combobox_PPPOE.DropDownStyle = 'DropDownList'
$combobox_SSTP.DropDownStyle = 'DropDownList'
$combobox_L2TP.DropDownStyle = 'DropDownList'
$combobox_IP.DropDownStyle = 'DropDownList'
$combobox_IPv6.DropDownStyle = 'DropDownList'
$combobox_NetMon.DropDownStyle = 'DropDownList'
$combobox_PPTP.DropDownStyle = 'DropDownList'
$combobox_IKEv2.DropDownStyle = 'DropDownList'
$combobox_Teredo.DropDownStyle = 'DropDownList'
$combobox_IPHTTPS.DropDownStyle = 'DropDownList'
$combobox_6to4.DropDownStyle = 'DropDownList'
#>
# ========================================================

# Loading at Startup Global Settings (OS Settings not Adapter specific)
$cb_osrss.text = (Get-NetOffloadGlobalSetting | select -expand ReceiveSideScaling)
$cb_osrsc.text = (Get-NetOffloadGlobalSetting | select -expand ReceiveSegmentCoalescing)
$cb_oschimney.text = (Get-NetOffloadGlobalSetting | select -expand Chimney)
$cb_ostaskoff.text = (Get-NetOffloadGlobalSetting | select -expand TaskOffload)
$cb_osntd.text = (Get-NetOffloadGlobalSetting | select -expand NetworkDirect)
$cb_osntdais.text = (Get-NetOffloadGlobalSetting | select -expand NetworkDirectAcrossIPSubnets)
$cb_ospcf.text = (Get-NetOffloadGlobalSetting | select -expand PacketCoalescingFilter)

<# # ========================================================
# Network Adapters
$NdisWan_Status = (Get-ItemPropertyValue -Path "HKLM:\SYSTEM\CurrentControlSet\Services\NdisWan" -Name Start)
$kdnic_Status = (Get-ItemPropertyValue -Path "HKLM:\SYSTEM\CurrentControlSet\Services\kdnic" -Name Start)

#Kernel Debugger
# ------------------------------------------------------
$krnldbg_Name  = (Get-NetAdapter -IncludeHidden -Name *Kerneldebugger* | Select -expand Name)
$krnldbg_Desc  = (Get-NetAdapter -IncludeHidden -Name *Kerneldebugger* | Select -expand InterfaceDescription)
$krnldbgStatus = (Get-NetAdapter -IncludeHidden -Name *Kerneldebugger* | Select -expand Status)

#Testing CB
if ($krnldbgStatus -eq 'Disconnected')
    {
        $combobox_krnldbg.Text = 'Disconnected'
    }
if ($krnldbgStatus -eq 'Up')
    {
        $combobox_krnldbg.Text = 'Connected'
    }
if ($krnldbgStatus -eq 'Not Present')
    {
        $combobox_krnldbg.Text = 'Not Present'
    }
if ($krnldbgStatus -eq 'Disabled' -or $kdnic_Status -eq '4')
    {
        $combobox_krnldbg.Text = 'Disabled'
    }
if(!(Test-Path -path "$env:SystemRoot\System32\drivers\kdnic.sys"))
    {
        $combobox_krnldbg.Text = 'Uninstalled'
    }


# ------------------------------------------------------

# WAN Miniport (PPPOE) 
# ------------------------------------------------------
$PPPOE_Name = (Get-NetAdapter -IncludeHidden -InterfaceDescription *PPPOE* | Select -expand Name)
$PPPOE_Desc = (Get-NetAdapter -IncludeHidden -InterfaceDescription *PPPOE* | Select -expand InterfaceDescription)
$PPPOE_Status = (Get-NetAdapter -IncludeHidden -InterfaceDescription *PPPOE* | Select Status)

if ($PPPOE_Status.Status -eq 'Disconnected')
    {
        $combobox_PPPOE.Text = 'Disconnected'
    }
if ($PPPOE_Status.Status -eq 'Up')
    {
        $combobox_PPPOE.Text = 'Connected'
    }
if ($PPPOE_Status.Status -eq 'Not Present' -or $PPPOE_Status.Status -eq $null)
    {
        $combobox_PPPOE.Text = 'Not Present'
    }
if ($PPPOE_Status.Status -eq 'Disabled' -or $NdisWan_Status -eq '4')
    {
        $combobox_PPPOE.Text = 'Disabled'
    }
if(!(Test-Path -path "$env:SystemRoot\System32\drivers\raspppoe.sys"))
    {
        $combobox_PPPOE.Text = 'Uninstalled'
    }

# ------------------------------------------------------


# WAN Miniport (SSTP) 
# ------------------------------------------------------
$SSTP_Name = (Get-NetAdapter -IncludeHidden -InterfaceDescription '*SSTP*' | Select -expand Name)
$SSTP_Desc = (Get-NetAdapter -IncludeHidden -InterfaceDescription '*SSTP*' | Select -expand InterfaceDescription)
$SSTP_Status = (Get-NetAdapter -IncludeHidden -InterfaceDescription '*SSTP*' | Select Status)

if ($SSTP_Status.Status -eq 'Disconnected')
    {
        $combobox_SSTP.Text = 'Disconnected'
    }
if ($SSTP_Status.Status -eq 'Up')
    {
        $combobox_SSTP.Text = 'Connected'
    }
if ($SSTP_Status.Status -eq 'Not Present' -or $SSTP_Status.Status -eq $null)
    {
        $combobox_SSTP.Text = 'Not Present'
    }
if ($SSTP_Status.Status -eq 'Disabled' -or $NdisWan_Status -eq '4')
    {
        $combobox_SSTP.Text = 'Disabled'
    }
if(!(Test-Path -path "$env:SystemRoot\System32\drivers\rassstp.sys"))
    {
        $combobox_SSTP.Text = 'Uninstalled'
    }

# ------------------------------------------------------


# WAN Miniport (L2TP) 
# ------------------------------------------------------
$L2TP_Name = (Get-NetAdapter -IncludeHidden -InterfaceDescription *L2TP* | Select -expand Name)
$L2TP_Desc = (Get-NetAdapter -IncludeHidden -InterfaceDescription *L2TP* | Select -expand InterfaceDescription)
$L2TP_Status = (Get-NetAdapter -IncludeHidden -InterfaceDescription *L2TP* | Select Status)
if ($L2TP_Status.Status -eq 'Disconnected')
    {
        $combobox_L2TP.Text = 'Disconnected'
    }
if ($L2TP_Status.Status -eq 'Up')
    {
        $combobox_L2TP.Text = 'Connected'
    }
if ($L2TP_Status.Status -eq 'Not Present' -or $L2TP_Status.Status -eq $null)
    {
        $combobox_L2TP.Text = 'Not Present'
    }
if ($L2TP_Status -eq 'Disabled' -or $NdisWan_Status -eq '4')
    {
        $combobox_L2TP.Text = 'Disabled'
    }
if(!(Test-Path -path "$env:SystemRoot\System32\drivers\rassstp.sys"))
    {
        $combobox_L2TP.Text = 'Uninstalled'
    }

# ------------------------------------------------------


# WAN Miniport (IP) 
# ------------------------------------------------------
$IP_Name = (Get-NetAdapter -IncludeHidden -InterfaceDescription *'(IP)'* | Select -expand Name)
$IP_Desc = (Get-NetAdapter -IncludeHidden -InterfaceDescription *'(IP)'* | Select -expand InterfaceDescription)
$IP_Status = (Get-NetAdapter -IncludeHidden -InterfaceDescription *'(IP)'* | Select Status)

if ($IP_Status.Status -eq 'Disconnected')
    {
        $combobox_IP.Text = 'Disconnected'
    }
if ($IP_Status.Status -eq 'Up')
    {
        $combobox_IP.Text = 'Connected'
    }
if ($IP_Status.Status -eq 'Not Present' -or $IP_Status.Status -eq $null)
    {
        $combobox_IP.Text = 'Not Present'
    }
if ($IP_Status -eq 'Disabled' -or $NdisWan_Status -eq '4')
    {
        $combobox_IP.Text = 'Disabled'
    }
if(!(Test-Path -path "$env:SystemRoot\System32\drivers\ndiswan.sys","$env:SystemRoot\System32\drivers\ndistapi.sys"))
    {
        $combobox_IP.Text = 'Uninstalled'
    }


# ------------------------------------------------------


# WAN Miniport (IPv6) 
# ------------------------------------------------------
$IPv6_Name = (Get-NetAdapter -IncludeHidden -InterfaceDescription *'(IPv6)'* | Select -expand Name)
$IPv6_Desc = (Get-NetAdapter -IncludeHidden -InterfaceDescription *'(IPv6)'* | Select -expand InterfaceDescription)
$IPv6_Status = (Get-NetAdapter -IncludeHidden -InterfaceDescription *'(IPv6)'* | Select Status)
        
if ($IPv6_Status -eq 'Disconnected')
    {
        $combobox_IPv6.Text = 'Disconnected'
    }
if ($IPv6_Status -eq 'Up')
    {
        $combobox_IPv6.Text = 'Connected'
    }
if ($IPv6_Status.Status -eq 'Not Present' -or $IPv6_Status.Status -eq $null)
    {
        $combobox_IPv6.Text = 'Not Present'
    }
if ($IPv6_Status -eq 'Disabled' -or $NdisWan_Status -eq '4')
    {
        $combobox_IPv6.Text = 'Disabled'
    }
if(!(Test-Path -path "$env:SystemRoot\System32\drivers\ndiswan.sys","$env:SystemRoot\System32\drivers\ndistapi.sys"))
    {
        $combobox_IPv6.Text = 'Uninstalled'
    }
# ------------------------------------------------------


# WAN Miniport (Network Monitor)
# ------------------------------------------------------
$NetMon_Name = (Get-NetAdapter -IncludeHidden -InterfaceDescription *'Network Monitor'* | Select -expand Name)
$NetMon_Desc = (Get-NetAdapter -IncludeHidden -InterfaceDescription *'Network Monitor'* | Select -expand InterfaceDescription)
$NetMon_Status = (Get-NetAdapter -IncludeHidden -InterfaceDescription *'Network Monitor'* | Select Status)

if ($NetMon_Status.Status -eq 'Disconnected')
    {
        $combobox_NetMon.Text = 'Disconnected'
    }
if ($NetMon_Status.Status -eq 'Up')
    {
        $combobox_NetMon.Text = 'Connected'
    }
if ($NetMon_Status.Status -eq 'Not Present' -or $NetMon_Status.Status -eq $null)
    {
        $combobox_NetMon.Text = 'Not Present'
    }
if ($NetMon_Status -eq 'Disabled' -or $NdisWan_Status -eq '4')
    {
        $combobox_NetMon.Text = 'Disabled'
    }
if(!(Test-Path -path "$env:SystemRoot\System32\drivers\ndiswan.sys","$env:SystemRoot\System32\drivers\ndistapi.sys"))
    {
        $combobox_NetMon.Text = 'Uninstalled'
    }
# ------------------------------------------------------


# WAN Miniport (PPTP)
# ------------------------------------------------------
$PPTP_Name = (Get-NetAdapter -IncludeHidden -InterfaceDescription *'PPTP'* | Select -expand Name)
$PPTP_Desc = (Get-NetAdapter -IncludeHidden -InterfaceDescription *'PPTP'* | Select -expand InterfaceDescription)
$PPTP_Status = (Get-NetAdapter -IncludeHidden -InterfaceDescription *'PPTP'* | Select Status)
    
if ($PPTP_Status -eq 'Disconnected')
    {
        $combobox_PPTP.Text = 'Disconnected'
    }
if ($PPTP_Status -eq 'Up')
    {
        $combobox_PPTP.Text = 'Connected'
    }
if ($PPTP_Status -eq 'Not Present' -or $PPTP_Status -eq $null)
    {
        $combobox_PPTP.Text = 'Not Present'
    }
if ($PPTP_Status -eq 'Disabled' -or $NdisWan_Status -eq '4')
    {
        $combobox_PPTP.Text = 'Disabled'
    }
if(!(Test-Path -path "$env:SystemRoot\System32\drivers\raspptp.sys"))
    {
        $combobox_PPTP.Text = 'Uninstalled'
    }
# ------------------------------------------------------


# WAN Miniport (IKEv2)
# ------------------------------------------------------
$IKEv2_Name = (Get-NetAdapter -IncludeHidden -InterfaceDescription *'IKEv2'* | Select -expand Name)
$IKEv2_Desc = (Get-NetAdapter -IncludeHidden -InterfaceDescription *'IKEv2'* | Select -expand InterfaceDescription)
$IKEv2_Status = (Get-NetAdapter -IncludeHidden -InterfaceDescription *'IKEv2'* | Select Status)
if ($IKEv2_Status.Status -eq 'Disconnected')
    {
        $combobox_IKEv2.Text = 'Disconnected'
    }
if ($IKEv2_Status.Status -eq 'Up')
    {
        $combobox_IKEv2.Text = 'Connected'
    }
if ($IKEv2_Status.Status -eq 'Not Present' -or $IKEv2_Status.Status -eq $null)
    {
        $combobox_IKEv2.Text = 'Not Present'
    }
if ($IKEv2_Status.Status -eq 'Disabled' -or $NdisWan_Status -eq '4')
    {
        $combobox_IKEv2.Text = 'Disabled'
    }
if(!(Test-Path -path "$env:SystemRoot\System32\drivers\AgileVpn.sys"))
    {
        $combobox_IKEv2.Text = 'Uninstalled'
    }   
# ------------------------------------------------------


# Teredo Tunneling Pseudo-Interface
# ------------------------------------------------------
$Teredo_Name = (Get-NetAdapter -IncludeHidden -Name *'Teredo'* | Select -expand Name)
#$Teredo_Desc = (Get-NetAdapter -IncludeHidden -Name *'Teredo'* | Select -expand InterfaceDescription)
$Teredo_Status = (Get-NetAdapter -IncludeHidden -Name *'Teredo'* | Select Status)
    
if ($Teredo_Status.Status -eq 'Disconnected')
    {
        $combobox_Teredo.Text = 'Disconnected'
    }
if ($Teredo_Status.Status -eq 'Up')
    {
        $combobox_Teredo.Text = 'Connected'
    }
if ($Teredo_Status.Status -eq 'Not Present')
    {
        $combobox_Teredo.Text = 'Not Present'
    }
if(!(Test-Path -path "$env:SystemRoot\System32\drivers\ndiswan.sys","$env:SystemRoot\System32\drivers\ndistapi.sys"))
    {
        $combobox_Teredo.Text = 'Uninstalled'
    }   
# ------------------------------------------------------


# Microsoft IP-HTTPS Platform Interface
# ------------------------------------------------------
$IPHTTPS_Name = (Get-NetAdapter -IncludeHidden -Name *'IP-HTTPS'* | Select -expand Name)
#$IPHTTPS_Desc = (Get-NetAdapter -IncludeHidden -Name *'IPHTTPS'* | Select -expand InterfaceDescription)
$IPHTTPS_Status = (Get-NetAdapter -IncludeHidden -Name *'IP-HTTPS'* | Select Status)
      
if ($IPHTTPS_Status.Status -eq 'Disconnected')
    {
        $combobox_IPHTTPS.Text = 'Disconnected'
    }
if ($IPHTTPS_Status.Status -eq 'Up')
    {
        $combobox_IPHTTPS.Text = 'Connected'
    }
if ($IPHTTPS_Status.Status -eq "Not Present")
    {
        $combobox_IPHTTPS.Text = 'Not Present'
    }
if(!(Test-Path -path "$env:SystemRoot\System32\drivers\ndiswan.sys","$env:SystemRoot\System32\drivers\ndistapi.sys"))
    {
        $combobox_IPHTTPS.Text = 'Uninstalled'
    }    
# ------------------------------------------------------


# 6to4 Adapter
# ------------------------------------------------------
$6to4_Name = (Get-NetAdapter -IncludeHidden -Name *'6to4'* | Select -expand Name)
#$6to4_Desc = (Get-NetAdapter -IncludeHidden -Name *'6to4'* | Select -expand InterfaceDescription)
$6to4_Status = (Get-NetAdapter -IncludeHidden -Name *'6to4'* | Select Status)
if ($6to4_Status.Status -eq 'Disconnected')
    {
        $combobox_6to4.Text = 'Disconnected'
    }
if ($6to4_Status.Status -eq 'Up')
    {
        $combobox_6to4.Text = 'Connected'
    }
if ($6to4_Status.Status -eq 'Not Present')
    {
        $combobox_6to4.Text = 'Not Present'
    }
if(!(Test-Path -path "$env:SystemRoot\System32\drivers\ndiswan.sys","$env:SystemRoot\System32\drivers\ndistapi.sys"))
    {
        $combobox_6to4.Text = 'Uninstalled'
    }     
# ========================================================

#Function to apply
function applyotAdapters {
#krnldbg
if ($ceckb_krnldbg.Checked -eq $false)
    {
        Write-Host "`nDisabling`nName: $krnldbg_Name`nDescription: $krnldbg_Desc" -ForegroundColor DarkRed
        Disable-NetAdapter -InterfaceDescription $krnldbg_Desc -IncludeHidden -Verbose -Confirm:$false
    }
    else
    {
        Write-Host "`nEnabling`nName: $krnldbg_Name`nDescription: $krnldbg_Desc" -ForegroundColor DarkGreen
        Enable-NetAdapter -InterfaceDescription $krnldbg_Desc -IncludeHidden -Verbose -Confirm:$false
    }

#PPPOE
if ($CheckBox_PPPOE.Checked -eq $false)
    {
        Write-Host "`nDisabling`nName: $PPPOE_Name`nDescription: $PPPOE_Desc" -ForegroundColor DarkRed
        Disable-NetAdapter -Name $PPPOE_Name -IncludeHidden -Verbose -Confirm:$false
    }
    else
    {
        Write-Host "`nEnabling`nName: $PPPOE_Name`nDescription: $PPPOE_Desc" -ForegroundColor DarkGreen
        Enable-NetAdapter -Name $PPPOE_Name -IncludeHidden -Verbose -Confirm:$false
    }

#SSTP
if ($CheckBox_SSTP.Checked -eq $false)
    {
        Write-Host "`nDisabling`nName: $SSTP_Name`nDescription: $SSTP_Desc" -ForegroundColor DarkRed
        Disable-NetAdapter -Name $SSTP_Name -IncludeHidden -Verbose -Confirm:$false
    }
    else
    {
        Write-Host "`nEnabling`nName: $SSTP_Name`nDescription: $SSTP_Desc" -ForegroundColor DarkGreen
        Enable-NetAdapter -Name $SSTP_Name -IncludeHidden -Verbose -Confirm:$false
    }

#L2TP
if ($CheckBox_L2TP.Checked -eq $false)
    {
        Write-Host "`nDisabling`nName: $L2TP_Name`nDescription: $L2TP_Desc" -ForegroundColor DarkRed
        Disable-NetAdapter -Name $L2TP_Name -IncludeHidden -Verbose -Confirm:$false
    }
    else
    {
        Write-Host "`nEnabling`nName: $L2TP_Name`nDescription: $L2TP_Desc" -ForegroundColor DarkGreen
        Enable-NetAdapter -Name $L2TP_Name -IncludeHidden -Verbose -Confirm:$false
    }
	
#IP
if ($CheckBox_IP.Checked -eq $false)
    {
        Write-Host "`nDisabling`nName: $IP_Name`nDescription: $IP_Desc" -ForegroundColor DarkRed
        Disable-NetAdapter -Name $IP_Name -IncludeHidden -Verbose -Confirm:$false
    }
    else
    {
        Write-Host "`nEnabling`nName: $IP_Name`nDescription: $IP_Desc" -ForegroundColor DarkGreen
        Enable-NetAdapter -Name $IP_Name -IncludeHidden -Verbose -Confirm:$false
    }

#IPv6
if ($CheckBox_IPv6.Checked -eq $false)
    {
        Write-Host "`nDisabling`nName: $IPv6_Name`nDescription: $IPv6_Desc" -ForegroundColor DarkRed
        Disable-NetAdapter -Name $IPv6_Name -IncludeHidden -Verbose -Confirm:$false
    }
    else
    {
        Write-Host "`nEnabling`nName: $IPv6_Name`nDescription: $IPv6_Desc" -ForegroundColor DarkGreen
        Enable-NetAdapter -Name $IPv6_Name -IncludeHidden -Verbose -Confirm:$false
    }
#NetMon
if ($CheckBox_NetMon.Checked -eq $false)
    {
        Write-Host "`nDisabling`nName: $NetMon_Name`nDescription: $NetMon_Desc" -ForegroundColor DarkRed
        Disable-NetAdapter -Name $NetMon_Name -IncludeHidden -Verbose -Confirm:$false
    }
    else
    {
        Write-Host "`nEnabling`nName: $NetMon_Name`nDescription: $NetMon_Desc" -ForegroundColor DarkGreen
        Enable-NetAdapter -Name $NetMon_Name -IncludeHidden -Verbose -Confirm:$false
    }
	
#PPTP
if ($CheckBox_PPTP.Checked -eq $false)
    {
        Write-Host "`nDisabling`nName: $PPTP_Name`nDescription: $PPTP_Desc" -ForegroundColor DarkRed
        Disable-NetAdapter -Name $PPTP_Name -IncludeHidden -Verbose -Confirm:$false
    }
    else
    {
        Write-Host "`nEnabling`nName: $PPTP_Name`nDescription: $PPTP_Desc" -ForegroundColor DarkGreen
        Enable-NetAdapter -Name $PPTP_Name -IncludeHidden -Verbose -Confirm:$false
    }
	
#IKEv2
if ($CheckBox_IKEv2.Checked -eq $false)
    {
        Write-Host "`nDisabling`nName: $IKEv2_Name`nDescription: $IKEv2_Desc" -ForegroundColor DarkRed
        Disable-NetAdapter -Name $IKEv2_Name -IncludeHidden -Verbose -Confirm:$false
    }
    else
    {
        Write-Host "`nEnabling`nName: $IKEv2_Name`nDescription: $IKEv2_Desc" -ForegroundColor DarkGreen
        Enable-NetAdapter -Name $IKEv2_Name -IncludeHidden -Verbose -Confirm:$false
    }	
	
#Teredo
if ($CheckBox_Teredo.Checked -eq $false)
    {
        Write-Host "`nDisabling`nName: $Teredo_Name`n" -ForegroundColor DarkRed
        Disable-NetAdapter -Name $Teredo_Name -IncludeHidden -Verbose -Confirm:$false
    }
    else
    {
        Write-Host "`nEnabling`nName: $Teredo_Name`n" -ForegroundColor DarkGreen
        Enable-NetAdapter -Name $Teredo_Name -IncludeHidden -Verbose -Confirm:$false
    }	
		
#IP-HTTPS
if ($CheckBox_IPHTTPS.Checked -eq $false)
    {
        Write-Host "`nDisabling`nDescription: $IPHTTPS_Name" -ForegroundColor DarkRed
        Disable-NetAdapter -Name $IPHTTPS_Name -IncludeHidden -Verbose -Confirm:$false
    }
    else
    {
        Write-Host "`nEnabling`nDescription: $IPHTTPS_Name" -ForegroundColor DarkGreen
        Enable-NetAdapter -Name $IPHTTPS_Name -IncludeHidden -Verbose -Confirm:$false
    }		

#6to4
if ($CheckBox_6to4.Checked -eq $false)
    {
        Write-Host "`nDisabling`nName: $6to4_Name`n" -ForegroundColor DarkRed
        Disable-NetAdapter -Name $6to4_Name -IncludeHidden -Verbose -Confirm:$false
    }
    else
    {
        Write-Host "`nEnabling`nName: $6to4_Name`n" -ForegroundColor DarkGreen
        Enable-NetAdapter -Name $6to4_Name -IncludeHidden -Verbose -Confirm:$false
    }	
} #End
 #>
# ========================================================
# RSS Global
$ErrorActionPreference="SilentlyContinue"
$Global:TCPIP_RegPath = "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters"
$Global:NDIS_RegPath = "HKLM:\SYSTEM\CurrentControlSet\Services\NDIS\Parameters"

$TCPIP_RssBaseCpu = (Get-ItemPropertyValue -Path "$TCPIP_RegPath" -Name "RssBaseCpu")
if ($TCPIP_RssBaseCpu -eq $null)
    {
        $cb_tcpiprssbasecpu.text = '0'
    }
    else
    {
        $cb_tcpiprssbasecpu.text = $TCPIP_RssBaseCpu
    }
$NDIS_RssBaseCpu = (Get-ItemPropertyValue -Path "$NDIS_RegPath" -Name "RssBaseCpu")
if ($NDIS_RssBaseCpu -eq $null)
    {
        $cb_ndisrssbasecpu.text = '0'
    }
    else
    {
        $cb_ndisrssbasecpu.text = $NDIS_RssBaseCpu
    }
    
$TCPIPRssBaseCpuValue = ($cb_tcpiprssbasecpu.text)
$NDISRssBaseCpuValue = ($cb_ndisrssbasecpu.text)
$cb_tcpiprssbasecpu.add_TextChanged({
    Write-Host "TCP/IP - RSSBaseCpu = "$cb_tcpiprssbasecpu.text
    Set-ItemProperty -Path "$TCPIP_RegPath" -Name "RssBaseCpu" -Value $cb_tcpiprssbasecpu.text -Type DWord -Force})
$cb_ndisrssbasecpu.add_TextChanged({
    Write-Host "NDIS - RSSBaseCpu = "$cb_ndisrssbasecpu.text
    Set-ItemProperty -Path "$NDIS_RegPath" -Name "RssBaseCpu" -Value $cb_ndisrssbasecpu.text -Type DWord -Force})

#$cb_tcpiprssbasecpu.TextChanged = (Set-ItemProperty -Path "$TCPIP_RegPath" -Name "RssBaseCpu" -Value $TCPIPRssBaseCpuValue -Type DWord -Force)
#$cb_ndisrssbasecpu.TextChanged = (Set-ItemProperty -Path "$NDIS_RegPath" -Name "RssBaseCpu" -Value $NDISRssBaseCpuValue -Type DWord -Force)

# ========================================================
# Apply Button Global Settings
function applyglobal { 
    #cls
    if ($cb_osrss.text -eq (Get-NetOffloadGlobalSetting | select -expand ReceiveSideScaling))
    {
        Write-Host " ReceiveSideScaling same as Current, skipping." -ForegroundColor green
    }
    else
    {
        Write-Host "Applying ReceiveSideScaling to"$cb_osrss.text -ForegroundColor Green
        Set-NetOffloadGlobalSetting -ReceiveSideScaling $cb_osrss.text
        $cb_osrss.text = (Get-NetOffloadGlobalSetting | select -expand ReceiveSideScaling)
    }
    
    if ($cb_osrsc.text -eq (Get-NetOffloadGlobalSetting | select -expand ReceiveSegmentCoalescing))
    {
        Write-Host " ReceiveSegmentCoalescing same as Current, skipping." -ForegroundColor green
    }
    else
    {
        Write-Host "Applying ReceiveSegmentCoalescing to"$cb_osrsc.text -ForegroundColor Green
        Set-NetOffloadGlobalSetting -ReceiveSegmentCoalescing $cb_osrsc.text
        $cb_osrsc.text = (Get-NetOffloadGlobalSetting | select -expand ReceiveSegmentCoalescing)
    }

    if ($cb_oschimney.text -eq (Get-NetOffloadGlobalSetting | select -expand Chimney))
    {
        Write-Host " Chimney same as Current, skipping." -ForegroundColor green
    }
    else
    {
        Write-Host "Applying Chimney to"$cb_oschimney.text -ForegroundColor Green
        Set-NetOffloadGlobalSetting -Chimney $cb_oschimney.text
        $cb_oschimney.text = (Get-NetOffloadGlobalSetting | select -expand Chimney)
    }
    
    if ($cb_ostaskoff.text -eq (Get-NetOffloadGlobalSetting | select -expand TaskOffload))
    {
        Write-Host " TaskOffload same as Current, skipping." -ForegroundColor green
    }
    else
    {
        Write-Host "Applying TaskOffload to"$cb_ostaskoff.text -ForegroundColor Green
        Set-NetOffloadGlobalSetting -TaskOffload $cb_ostaskoff.text
        $cb_ostaskoff.text = (Get-NetOffloadGlobalSetting | select -expand TaskOffload)
    }
    
    if ($cb_osntd.text -eq (Get-NetOffloadGlobalSetting | select -expand NetworkDirect))
    {
        Write-Host " NetworkDirect same as Current, skipping." -ForegroundColor green
    }
    else
    {
        Write-Host "Applying NetworkDirect to"$cb_osntd.text -ForegroundColor Green
        Set-NetOffloadGlobalSetting -NetworkDirect $cb_osntd.text
        $cb_osntd.text = (Get-NetOffloadGlobalSetting | select -expand NetworkDirect)
    }
    
    if ($cb_osntdais.text -eq (Get-NetOffloadGlobalSetting | select -expand NetworkDirectAcrossIPSubnets))
    {
        Write-Host " NetworkDirectAcrossIPSubnets same as Current, skipping." -ForegroundColor green
    }
    else
    {
        Write-Host "Applying NetworkDirectAcrossIPSubnets to"$cb_osntdais.text -ForegroundColor Green
        Set-NetOffloadGlobalSetting -NetworkDirectAcrossIPSubnets $cb_osntdais.text
        $cb_osntdais.text = (Get-NetOffloadGlobalSetting | select -expand NetworkDirectAcrossIPSubnets)
    }
    
    if ($cb_ospcf.text -eq (Get-NetOffloadGlobalSetting | select -expand PacketCoalescingFilter))
    {
        Write-Host " PacketCoalescingFilter same as Current, skipping." -ForegroundColor green
    }
    else
    {
        Write-Host "Applying PacketCoalescingFilter to"$cb_ospcf.text -ForegroundColor Green
        Set-NetOffloadGlobalSetting -PacketCoalescingFilter $cb_ospcf.text
        $cb_ospcf.text = (Get-NetOffloadGlobalSetting | select -expand PacketCoalescingFilter)
    }
}

#Adapter Selection
$AdapterName = Get-NetAdapter -physical | where status -eq 'up' | Select -expand InterfaceDescription
#$AdapterName = Get-NetAdapter -IncludeHidden | Select -expand InterfaceDescription
#if($AdapterName )
@($AdapterName) | ForEach-Object {[void] $cb_AdapterNamesCombo.Items.Add($_)}

function a { 
    cls
    Write-Host $cb_AdapterNamesCombo.Text
    $Global:NIC_Desc = $cb_AdapterNamesCombo.Text
    $lbl_ndisver.Text = Get-NetAdapter -InterfaceDescription $AdapterName | Select -expand NdisVersion
    $PhysicalAdapter = Get-WmiObject -Class Win32_NetworkAdapter|Where-Object{$_.Name -like "$NIC_Desc"} 
            $PhysicalAdapterName = $PhysicalAdapter.Name
            $DeviceID = $PhysicalAdapter.DeviceID
                If([Int32]$DeviceID -lt 10)
		        {
			    $AdapterDeviceNumber = "000"+$DeviceID
		        }
		        Else
		        {
			    $AdapterDeviceNumber = "00"+$DeviceID
		        }
		    
		    $Global:EthernetClassGuid = Get-WmiObject Win32_PnPEntity | Where-Object{$_.Name -like "$NIC_Desc" } | Select -expand ClassGuid
            $Global:EthernetPNPDeviceID = Get-WmiObject Win32_PnPEntity | Where-Object{$_.Name -like "$NIC_Desc" } | Select -expand PNPDeviceID
		    $Global:NetConnectionID = Get-WmiObject -Class Win32_NetworkAdapter | Where-Object{$_.Name -like "$NIC_Desc" } | Select -expand NetConnectionID 
    #check whether the registry path exists.
		#SupressTerminationErrors
		$ErrorActionPreference="SilentlyContinue"
		
		$Global:KeyPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\$AdapterDeviceNumber"
		If(Test-Path -Path $KeyPath)
		{
			Write-Host "Path found at ($KeyPath)."
			$lbl_Path.Text = $KeyPath
		}
		Else
		{
			Write-Warning "The path ($KeyPath) not found."
		}
		#RSS Enabled or Not
		$rssstatus = Get-NetAdapterRss | Select -expand Enabled
		if($rssstatus -eq 'True')
		        {
		        $cb_rss_onoff.Text = "Enable"
		        }
		        else
		        {
		        $cb_rss_onoff.Text = "Disable"
		        }
		if($rssstatus -eq $null)
		        {
		            Write-Warning "RSS is handled by OS, because of Network Driver!"
		            #$cb_rssqueues.Enabled = $False
		            #$cb_rssprofile.Enabled = $False
		            #$cb_rssbaseproc.Enabled = $False
		            #$cb_rssmaxproc.Enabled = $False
		            #$cb_rssmaxprocs.Enabled = $False
		        }
		        else
		        {
		            $cb_rssqueues.Enabled = $true
		            $cb_rssprofile.Enabled = $true
		            $cb_rssbaseproc.Enabled = $true
		            $cb_rssmaxproc.Enabled = $true
		            $cb_rssmaxprocs.Enabled = $true
		        }
		  if($cb_rss_onoff.Text -eq 'Enable')
		    {
		        $Global:Rssstatusset = ($True)
		    }
		    else
		    {
		        $Global:Rssstatusset = ($False)
		    }
		    
		#IPv6 Disabled?
		$IPv6_1 = (Get-ItemPropertyValue -Path "REGISTRY::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" -Name "DisabledComponents")
		$IPv6_2 = (Get-ItemPropertyValue -Path "REGISTRY::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" -Name "EnableICSIPv6")
		
		if ($IPv6_1 -eq "255" -and $IPv6_2 -eq "0"){
		     Write-Warning  "IPv6 is Disabled by Registry."  -ForegroundColor Green
		     $cb_IPv6.Checked = $False
		     $cb_IPv6.Enabled = $False
		     $cb_IPv6.Visible = $False
		     $cb_IPv4.Checked = $True
		     $Global:AddressFamily = "IPv4"
		     }else{
		      Write-Warning  "IPv4/IPv6 is Enabled by Registry. Selecting IPv4 as Default for AddressFamily"  -ForegroundColor Green
		      $cb_IPv4.Checked = $true
		      $cb_IPv6.Checked = $false
		      $Global:AddressFamily = "IPv4"
		     }
		     
		#RSS Queues
		#Query Avaible RSSQueues
        $AdapterQueues = Get-Item -Path "$KeyPath\Ndi\Params\*NumRssQueues\Enum" | Select -ExpandProperty Property
        @($AdapterQueues) | ForEach-Object {[void] $cb_rssqueues.Items.Add($_)}
		    $cb_rssqueues.Text = Get-ItemPropertyValue -Path "$KeyPath" -Name "*NumRssQueues"
		   
        #RSS Profiles
        $OSRSSProfiles = [Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetAdapterRss.Profile].GetEnumValues()
        @($OSRSSProfiles) | ForEach-Object {[void] $cb_rssprofile.Items.Add($_)}
        $cb_rssprofile.Text = Get-NetAdapterRss | Select -ExpandProperty Profile
        
        #RSS BaseProc
        $cb_rssbaseproc.Text = Get-NetAdapterRss | Select -ExpandProperty "BaseProcessorNumber"
        $cb_rssmaxproc.Text = Get-NetAdapterRss | Select -ExpandProperty "MaxProcessorNumber"
        $cb_rssmaxprocs.Text = Get-NetAdapterRss | Select -ExpandProperty "MaxProcessors"
        
        # Network Adapter Advanced Settings
        #
        #FlowControl
        $FlowControl = (Get-ItemPropertyValue -Path "$KeyPath" -Name "*FlowControl")
        $cb_flowcontrol.SelectedIndex=$FlowControl
        #IPChecksumOffloadIPv4
        $IPChecksumOffloadIPv4 = (Get-ItemPropertyValue -Path "$KeyPath" -Name "*IPChecksumOffloadIPv4")
        $cb_IPChecksumOffloadIPv4.SelectedIndex=$IPChecksumOffloadIPv4
        #TCPChecksumOffloadIPv4
        $TCPChecksumOffloadIPv4 = (Get-ItemPropertyValue -Path "$KeyPath" -Name "*TCPChecksumOffloadIPv4")
        $cb_TCPChecksumOffloadIPv4.SelectedIndex=$TCPChecksumOffloadIPv4
        #TCPChecksumOffloadIPv6
        $TCPChecksumOffloadIPv6 = (Get-ItemPropertyValue -Path "$KeyPath" -Name "*TCPChecksumOffloadIPv6")
        $cb_TCPChecksumOffloadIPv6.SelectedIndex=$TCPChecksumOffloadIPv6
        #UDPChecksumOffloadIPv4
        $UDPChecksumOffloadIPv4 = (Get-ItemPropertyValue -Path "$KeyPath" -Name "*UDPChecksumOffloadIPv4")
        $cb_UDPChecksumOffloadIPv4.SelectedIndex=$UDPChecksumOffloadIPv4
        #UDPChecksumOffloadIPv6
        $UDPChecksumOffloadIPv6 = (Get-ItemPropertyValue -Path "$KeyPath" -Name "*UDPChecksumOffloadIPv6")
        $cb_UDPChecksumOffloadIPv6.SelectedIndex=$UDPChecksumOffloadIPv6
        #InterruptModeration
        $InterruptModeration = (Get-ItemPropertyValue -Path "$KeyPath" -Name "*InterruptModeration")
        $cb_InterruptModeration.SelectedIndex=$InterruptModeration
        #InterruptModerationRate
        $InterruptModerationRate = (Get-ItemPropertyValue -Path "$KeyPath" -Name "ITR")
        $cb_InterruptModerationRate.Text=$InterruptModerationRate
        #LsoV2IPv4
        $LsoV2IPv4 = (Get-ItemPropertyValue -Path "$KeyPath" -Name "*LsoV2IPv4")
        $cb_LsoV2IPv4.SelectedIndex=$LsoV2IPv4
        #LsoV2IPv6
        $LsoV2IPv6 = (Get-ItemPropertyValue -Path "$KeyPath" -Name "*LsoV2IPv6")
        $cb_LsoV2IPv6.SelectedIndex=$LsoV2IPv6
        #LsoV1IPv4
        $LsoV1IPv4 = (Get-ItemPropertyValue -Path "$KeyPath" -Name "*LsoV1IPv4")
        $cb_LsoV1IPv4.SelectedIndex=$LsoV1IPv4
        #PMARPOffload
        $PMARPOffload = (Get-ItemPropertyValue -Path "$KeyPath" -Name "*PMARPOffload")
        $cb_PMARPOffload.SelectedIndex=$PMARPOffload
        #PMNSOffload
        $PMNSOffload = (Get-ItemPropertyValue -Path "$KeyPath" -Name "*PMNSOffload")
        $cb_PMNSOffload.SelectedIndex=$PMNSOffload
        #PriorityVLANTag
        $PriorityVLANTag = (Get-ItemPropertyValue -Path "$KeyPath" -Name "*PriorityVLANTag")
        $cb_PriorityVLANTag.SelectedIndex=$PriorityVLANTag
        #ReceiveBuffers
        $ReceiveBuffers = (Get-ItemPropertyValue -Path "$KeyPath" -Name "*ReceiveBuffers")
        $cb_ReceiveBuffers.Text=$ReceiveBuffers
        #TransmitBuffers
        $TransmitBuffers = (Get-ItemPropertyValue -Path "$KeyPath" -Name "*TransmitBuffers")
        $cb_TransmitBuffers.Text=$TransmitBuffers
        #TxIntDelay
        $TxIntDelay = (Get-ItemPropertyValue -Path "$KeyPath" -Name "TxIntDelay")
        $tb_TxIntDelay.Text=$TxIntDelay
        #PacketDirect
        $PacketDirect = (Get-ItemPropertyValue -Path "$KeyPath" -Name "*PacketDirect")
        if($PacketDirect -eq $null){
            $cb_PacketDirect.Text="Undefined"
        }else{
            $cb_PacketDirect.SelectedIndex=$PacketDirect}
        #EnableCoalesce
        $EnableCoalesce = (Get-ItemPropertyValue -Path "$KeyPath" -Name "EnableCoalesce")
        if($EnableCoalesce -eq $null){
            $cb_EnableCoalesce.Text="Undefined"
        }else{
            $cb_EnableCoalesce.SelectedIndex=$EnableCoalesce}
        #EnableUdpTxScaling
        $EnableUdpTxScaling = (Get-ItemPropertyValue -Path "$KeyPath" -Name "EnableUdpTxScaling")
        if($EnableUdpTxScaling -eq $null){
            $cb_EnableUdpTxScaling.Text="Undefined"
        }else{
            $cb_EnableUdpTxScaling.SelectedIndex=$EnableUdpTxScaling}

        #EnablePME
        $EnablePME = (Get-ItemPropertyValue -Path "$KeyPath" -Name "EnablePME")
            if ($EnablePME -eq '0' -or $EnablePME -eq '1' ){
                $cb_EnablePME.SelectedIndex=$EnablePME
            }else{
                $cb_EnablePME.Items.Add('Undeclared')
                $cb_EnablePME.Text = 'Undeclared'
            }
        #EnableDynamicPowerGating
        $EnableDynamicPowerGating = (Get-ItemPropertyValue -Path "$KeyPath" -Name "*EnableDynamicPowerGating")
            if ($EnableDynamicPowerGating -eq 0 -or $EnableDynamicPowerGating -eq 1 ){
                $cb_EnableDynamicPowerGating.SelectedIndex=$EnableDynamicPowerGating
            }else{
                $cb_EnableDynamicPowerGating.Items.Add('Undeclared')
                $cb_EnableDynamicPowerGating.Text = 'Undeclared'
            }
        #EnableConnectedPowerGating
        $EnableConnectedPowerGating = (Get-ItemPropertyValue -Path "$KeyPath" -Name "EnableConnectedPowerGating")
            if ($EnableConnectedPowerGating -eq 0 -or $EnableConnectedPowerGating -eq 1 ){
                $cb_EnableConnectedPowerGating.SelectedIndex=$EnableConnectedPowerGating
            }else{
                $cb_EnableConnectedPowerGating.Items.Add('Undeclared')
                $cb_EnableConnectedPowerGating.Text = 'Undeclared'
            }
    
        #AutoPowerSaveModeEnabled
        $AutoPowerSaveModeEnabled = (Get-ItemPropertyValue -Path "$KeyPath" -Name "AutoPowerSaveModeEnabled")
            if ($AutoPowerSaveModeEnabled -eq 0 -or $AutoPowerSaveModeEnabled -eq 1 ){
                $cb_AutoPowerSaveModeEnabled.SelectedIndex=$AutoPowerSaveModeEnabled
            }else{
                $cb_AutoPowerSaveModeEnabled.Items.Add('Undeclared')
                $cb_EnableConnectedPowerGating.Text = 'Undeclared'
            }
            
        #NicAutoPowerSaver
        $NicAutoPowerSaver = (Get-ItemPropertyValue -Path "$KeyPath" -Name "*NicAutoPowerSaver")
            if ($NicAutoPowerSaver -eq 0 -or $NicAutoPowerSaver -eq 1 ){
                $cb_NicAutoPowerSaver.SelectedIndex=$NicAutoPowerSaver
            }else{
                $cb_NicAutoPowerSaver.Items.Add('Undeclared')
                $cb_NicAutoPowerSaver.Text = 'Undeclared'
            }
        
        #DisableDelayedPowerUp
        $DisableDelayedPowerUp = (Get-ItemPropertyValue -Path "$KeyPath" -Name "DisableDelayedPowerUp")
            if ($DisableDelayedPowerUp -eq 0 -or $DisableDelayedPowerUp -eq 1 ){
                $cb_DisableDelayedPowerUp.SelectedIndex=$DisableDelayedPowerUp
            }else{
                $cb_DisableDelayedPowerUp.Items.Add('Undeclared')
                $cb_DisableDelayedPowerUp.Text = 'Undeclared'
            }
        
        #ReduceSpeedOnPowerDown
        $ReduceSpeedOnPowerDown = (Get-ItemPropertyValue -Path "$KeyPath" -Name "ReduceSpeedOnPowerDown")
            if ($ReduceSpeedOnPowerDown -eq 0 -or $ReduceSpeedOnPowerDown -eq 1 ){
                $cb_ReduceSpeedOnPowerDown.SelectedIndex=$ReduceSpeedOnPowerDown
            }else{
                $cb_ReduceSpeedOnPowerDown.Items.Add('Undeclared')
                $cb_ReduceSpeedOnPowerDown.Text = 'Undeclared'
            }
            
        #DisablePortScaling
        $DisablePortScaling = (Get-ItemPropertyValue -Path "$KeyPath" -Name "DisablePortScaling")
            if ($DisablePortScaling -eq 0 -or $DisablePortScaling -eq 1 ){
                $cb_DisablePortScaling.SelectedIndex=$DisablePortScaling
            }else{
                $cb_DisablePortScaling.Items.Add('Undeclared')
                $cb_DisablePortScaling.Text = 'Undeclared'
            }    
    
        #ManyCoreScaling
        $ManyCoreScaling = (Get-ItemPropertyValue -Path "$KeyPath" -Name "ManyCoreScaling")
            if ($ManyCoreScaling -eq 0 -or $ManyCoreScaling -eq 1 ){
                $cb_ManyCoreScaling.SelectedIndex=$ManyCoreScaling
            }else{
                $cb_ManyCoreScaling.Items.Add('Undeclared')
                $cb_ManyCoreScaling.Text = 'Undeclared'
            }
            
#NetIPInterface
        
        #NetIPInterface
        #AdvertiseDefaultRoute
        $AdvertiseDefaultRoute = [Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetIPInterface.AdvertiseDefaultRoute].GetEnumValues()
        @($AdvertiseDefaultRoute) | ForEach-Object {[void] $cb_AdvertiseDefaultRoute.Items.Add($_)}
        $cb_AdvertiseDefaultRoute.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand AdvertiseDefaultRoute
            
        #Advertising
        $Advertising = [Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetIPInterface.Advertising].GetEnumValues()
        @($Advertising) | ForEach-Object {[void] $cb_Advertising.Items.Add($_)}
        $cb_Advertising.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand Advertising
            
        #AutomaticMetric
        $AutomaticMetric = [Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetIPInterface.AutomaticMetric].GetEnumValues()
        @($AutomaticMetric) | ForEach-Object {[void] $cb_AutomaticMetric.Items.Add($_)}
        $cb_AutomaticMetric.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand AutomaticMetric
            
        #ClampMss
        $ClampMss = [Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetIPInterface.ClampMss].GetEnumValues()
        @($ClampMss) | ForEach-Object {[void] $cb_ClampMss.Items.Add($_)}
        $cb_ClampMss.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand ClampMss
            
        #DirectedMacWolPattern
        $DirectedMacWolPattern = [Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetIPInterface.DirectedMacWolPattern].GetEnumValues()
        @($DirectedMacWolPattern) | ForEach-Object {[void] $cb_DirectedMacWolPattern.Items.Add($_)}
        $cb_DirectedMacWolPattern.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand DirectedMacWolPattern
            
        #EcnMarking
        $EcnMarking = [Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetIPInterface.EcnMarking].GetEnumValues()
        @($EcnMarking) | ForEach-Object {[void] $cb_EcnMarking.Items.Add($_)}
        $cb_EcnMarking.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand EcnMarking
            
        #ForceArpNdWolPattern
        $ForceArpNdWolPattern = [Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetIPInterface.ForceArpNdWolPattern].GetEnumValues()
        @($ForceArpNdWolPattern) | ForEach-Object {[void] $cb_ForceArpNdWolPattern.Items.Add($_)}
        $cb_ForceArpNdWolPattern.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand ForceArpNdWolPattern
            
        #Forwarding
        $Forwarding = [Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetIPInterface.Forwarding].GetEnumValues()
        @($Forwarding) | ForEach-Object {[void] $cb_Forwarding.Items.Add($_)}
        $cb_Forwarding.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand Forwarding
            
        #IgnoreDefaultRoutes
        $IgnoreDefaultRoutes = [Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetIPInterface.IgnoreDefaultRoutes].GetEnumValues()
        @($IgnoreDefaultRoutes) | ForEach-Object {[void] $cb_IgnoreDefaultRoutes.Items.Add($_)}
        $cb_IgnoreDefaultRoutes.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand IgnoreDefaultRoutes
            
        #ManagedAddressConfiguration
        $ManagedAddressConfiguration = [Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetIPInterface.ManagedAddressConfiguration].GetEnumValues()
        @($ManagedAddressConfiguration) | ForEach-Object {[void] $cb_ManagedAddressConfiguration.Items.Add($_)}
        $cb_ManagedAddressConfiguration.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand ManagedAddressConfiguration
            
        #NeighborDiscoverySupported
        $NeighborDiscoverySupported = [Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetIPInterface.NeighborDiscoverySupported].GetEnumValues()
        @($NeighborDiscoverySupported) | ForEach-Object {[void] $cb_NeighborDiscoverySupported.Items.Add($_)}
        $cb_NeighborDiscoverySupported.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand NeighborDiscoverySupported
        
        #NeighborUnreachabilityDetection
        $NeighborUnreachabilityDetection = [Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetIPInterface.NeighborUnreachabilityDetection].GetEnumValues()
        @($NeighborUnreachabilityDetection) | ForEach-Object {[void] $cb_NeighborUnreachabilityDetection.Items.Add($_)}
        $cb_NeighborUnreachabilityDetection.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand NeighborUnreachabilityDetection
        
        #OtherStatefulConfiguration
        $OtherStatefulConfiguration = [Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetIPInterface.OtherStatefulConfiguration].GetEnumValues()
        @($OtherStatefulConfiguration) | ForEach-Object {[void] $cb_OtherStatefulConfiguration.Items.Add($_)}
        $cb_OtherStatefulConfiguration.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand OtherStatefulConfiguration
        
        #RouterDiscovery
        $RouterDiscovery = [Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetIPInterface.RouterDiscovery].GetEnumValues()
        @($RouterDiscovery) | ForEach-Object {[void] $cb_RouterDiscovery.Items.Add($_)}
        $cb_RouterDiscovery.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand RouterDiscovery
        
        #Store
        $Store = [Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetIPInterface.Store].GetEnumValues()
        @($Store) | ForEach-Object {[void] $cb_Store.Items.Add($_)}
        $cb_Store.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand Store
        
        #WeakHostReceive
        $WeakHostReceive = [Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetIPInterface.WeakHostReceive].GetEnumValues()
        @($WeakHostReceive) | ForEach-Object {[void] $cb_WeakHostReceive.Items.Add($_)}
        $cb_WeakHostReceive.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand WeakHostReceive
        
        #WeakHostSend
        $WeakHostSend = [Microsoft.PowerShell.Cmdletization.GeneratedTypes.NetIPInterface.WeakHostSend].GetEnumValues()
        @($WeakHostSend) | ForEach-Object {[void] $cb_WeakHostSend.Items.Add($_)}
        $cb_WeakHostSend.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand WeakHostSend
        
        #CurrentHopLimit
        #When this parameter value is set to 0, it uses this default.    
        $tb_CurrentHopLimit.Text = Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand CurrentHopLimit
        
        #BaseReachableTime
        #Specifies the base value for random reachable time, in milliseconds. For more information, see RFC 2461.
        #The default value is 30000.
        $tb_BaseReachableTime.Text = Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand BaseReachableTime
    
        #ReachableTime
        #Specifies an array of reachable time values. This parameter is the time, in milliseconds, that a node assumes that a neighbor
        #is reachable after having received a reachability confirmation. This parameter works with the NeighborUnreachabilityDetection parameter.
        $tb_ReachableTime.Text = Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand ReachableTime

        #DadRetransmitTime
        #Specifies a value for the time interval between neighbor solicitation messages.
        $tb_DadRetransmitTime.Text = Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand DadRetransmitTime

        #DadTransmits
        #Specifies a value for the number of consecutive messages sent while the network driver performs duplicate address detection.
        $tb_DadTransmits.Text = Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand DadTransmits

        #NlMtu
        #Specifies the network layer Maximum Transmission Unit (MTU) value, in bytes, for an IP interface. 
        #For IPv4 the minimum value is 576 bytes. For IPv6 the minimum is value is 1280 bytes.
        #For both IPv4 and IPv6, the maximum value is 2^32-1 (4294967295). You cannot set values outside these ranges.
        #If this parameter is set to 0, then it will remain unchanged and maintain its current value. The IP interface will not transmit packets larger than the maximum value.
        $tb_NlMtu.Text = Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand NlMtu

        #RetransmitTime (RetransmitTimeMs)
        #Specifies a value for timeout and retransmission, in milliseconds, for Neighbor Solicitation messages. 
        #For more information, see RetransTimer in RFC 2461. 
        #By default, the value is set to 1000.
        $tb_RetransmitTime.Text = Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand RetransmitTime
        
        $PathInterrupt = 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Enum'
        #$Global:EthernetClassGuid
        #$Global:EthernetPNPDeviceID
        $NewPathInterrupt = "$PathInterrupt\$EthernetPNPDeviceID"
        $Test = Test-Path REGISTRY::$NewPathInterrupt
        if ($Test){
	        $cb_MsiMode.Enabled = $True
            $cb_InterruptPriority.Enabled = $True
            $lb_MsiMode.Enabled = $True
            $lb_InterruptPriority.Enabled = $True
            $lb_DevicePolicy.Enabled = $True
            $cb_DevicePolicy.Enabled = $True
            
            $MsiModeRegistry = Get-ItemPropertyValue -Path "REGISTRY::$NewPathInterrupt\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" -Name "MSISupported"
            if($MsiModeRegistry -eq "1"){
                $cb_MsiMode.Text = "Enabled"}
            if($MsiModeRegistry -eq "0"){
                $cb_MsiMode.Text = "Disabled"}
            
            $DevicePriority = Get-ItemPropertyValue -Path "REGISTRY::$NewPathInterrupt\Device Parameters\Interrupt Management\Affinity Policy" -Name "DevicePriority"     
            if($DevicePriority -eq "0"){
                $cb_InterruptPriority.Text = "Undefined"}
            if($DevicePriority -eq "1"){
                $cb_InterruptPriority.Text = "Low"}
            if($DevicePriority -eq "2"){
                $cb_InterruptPriority.Text = "Normal"}
            if($DevicePriority -eq "3"){
                $cb_InterruptPriority.Text = "High"}
                
            $DevicePolicy = Get-ItemPropertyValue -Path "REGISTRY::$NewPathInterrupt\Device Parameters\Interrupt Management\Affinity Policy" -Name "DevicePolicy"         
            #Default Affinity policy, system dependent.
            if($DevicePolicy -eq "0" -or $DevicePolicy -eq $null){
                $cb_DevicePolicy.Text = "MachineDefault"}
            #Target all processors located in same NUMA Node Device.
            if($DevicePolicy -eq "1"){
                $cb_DevicePolicy.Text = "AllCloseProcessors"}
            #Target one processor located in same NUMA Node as Device.
            if($DevicePolicy -eq "2"){
                $cb_DevicePolicy.Text = "OneCloseProcessor"}
            #Target all Processors in machine.
            if($DevicePolicy -eq "3"){
                $cb_DevicePolicy.Text = "ProcessorsInMachine"}
            #Target processors specified in mask, use set Mask.
            if($DevicePolicy -eq "4"){
                $cb_DevicePolicy.Text = "SpecifiedProcessors"}
            #Spread Message-Signaled-Interrupts to different processors, if possible.
            if($DevicePolicy -eq "5"){
                $cb_DevicePolicy.Text = "SreadMessagesAcrossAllProcessors"}
            }
            <#
            $Cpu0Value = "1"
            $Cpu1Value = "2"
            $Cpu2Value = "4"
            $Cpu3Value = "8"
            $Cpu4Value = "20"
            $Cpu5Value = "40"
            $Cpu6Value = "80"
            
            if($cb_cpu0.checked -eq $true) {
            $NewValue += $Cpu0Value
            }
            if($cb_cpu1.checked -eq $true) {
            $NewValue += $Cpu1Value
            }
            if($cb_cpu2.checked -eq $true) {
            $NewValue += $Cpu2Value
            }
            if($cb_cpu3.checked -eq $true) {
            $NewValue += $Cpu3Value
            }
            if($cb_cpu4.checked -eq $true) {
            $NewValue += $Cpu4Value
            }
            if($cb_cpu5.checked -eq $true) {
            $NewValue += $Cpu5Value
            }
            if($cb_cpu6.checked -eq $true) {
            $NewValue += $Cpu6Value
            }
            if($cb_cpu7.checked -eq $true) {
            $NewValue += $Cpu7Value}
            ################################
            $lb_value.Text = $NewValue
            #>
}
        function applyadvsettings {
        #cls
        #FlowControl
        if ($cb_flowcontrol.SelectedIndex -eq (Get-ItemPropertyValue -Path "$KeyPath" -Name "*FlowControl")){
            Write-Host "FlowControl is same then Registry, skipping."  -ForegroundColor green}

            elseif ($cb_flowcontrol.SelectedIndex -eq '0'){
            Write-Host "Disabling FlowControl"  -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*FlowControl" -Value "0" -Force}
            
            elseif ($cb_flowcontrol.SelectedIndex -eq '1'){
            Write-Host "Enabling Tx for FlowControl" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*FlowControl" -Value "1" -Force}
            
            elseif ($cb_flowcontrol.SelectedIndex -eq '2'){
            Write-Host "Enabling Rx for FlowControl" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*FlowControl" -Value "2" -Force}
            
            elseif ($cb_flowcontrol.SelectedIndex -eq '3'){
            Write-Host "Enabling Tx & Rx for FlowControl" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*FlowControl" -Value "3" -Force}
            
        #IPChecksumOffloadIPv4        
        if ($cb_IPChecksumOffloadIPv4.SelectedIndex -eq (Get-ItemPropertyValue -Path "$KeyPath" -Name "*IPChecksumOffloadIPv4")){
            Write-Host "IPChecksumOffloadIPv4 is same then Registry, skipping."  -ForegroundColor green}

            elseif ($cb_IPChecksumOffloadIPv4.SelectedIndex -eq '0'){
            Write-Host "Disabling IPChecksumOffloadIPv4"  -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*IPChecksumOffloadIPv4" -Value "0" -Force}
            
            elseif ($cb_IPChecksumOffloadIPv4.SelectedIndex -eq '1'){
            Write-Host "Enabling Tx for IPChecksumOffloadIPv4" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*IPChecksumOffloadIPv4" -Value "1" -Force}
            
            elseif ($cb_IPChecksumOffloadIPv4.SelectedIndex -eq '2'){
            Write-Host "Enabling Rx for IPChecksumOffloadIPv4" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*IPChecksumOffloadIPv4" -Value "2" -Force}
            
            elseif ($cb_IPChecksumOffloadIPv4.SelectedIndex -eq '3'){
            Write-Host "Enabling Tx & Rx for IPChecksumOffloadIPv4" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*IPChecksumOffloadIPv4" -Value "3" -Force}
           
        #TCPChecksumOffloadIPv4 
        if ($cb_TCPChecksumOffloadIPv4.SelectedIndex -eq (Get-ItemPropertyValue -Path "$KeyPath" -Name "*TCPChecksumOffloadIPv4")){
            Write-Host "TCPChecksumOffloadIPv4 is same then Registry, skipping."  -ForegroundColor green}

            elseif ($cb_TCPChecksumOffloadIPv4.SelectedIndex -eq '0'){
            Write-Host "Disabling TCPChecksumOffloadIPv4"  -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*TCPChecksumOffloadIPv4" -Value "0" -Force}
            
            elseif ($cb_TCPChecksumOffloadIPv4.SelectedIndex -eq '1'){
            Write-Host "Enabling Tx for TCPChecksumOffloadIPv4" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*TCPChecksumOffloadIPv4" -Value "1" -Force}
            
            elseif ($cb_TCPChecksumOffloadIPv4.SelectedIndex -eq '2'){
            Write-Host "Enabling Rx for TCPChecksumOffloadIPv4" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*TCPChecksumOffloadIPv4" -Value "2" -Force}
            
            elseif ($cb_TCPChecksumOffloadIPv4.SelectedIndex -eq '3'){
            Write-Host "Enabling Tx & Rx for TCPChecksumOffloadIPv4" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*TCPChecksumOffloadIPv4" -Value "3" -Force}
            
        #TCPChecksumOffloadIPv6 
        if ($cb_TCPChecksumOffloadIPv6.SelectedIndex -eq (Get-ItemPropertyValue -Path "$KeyPath" -Name "*TCPChecksumOffloadIPv6")){
            Write-Host "TCPChecksumOffloadIPv6 is same then Registry, skipping."  -ForegroundColor green}

            elseif ($cb_TCPChecksumOffloadIPv6.SelectedIndex -eq '0'){
            Write-Host "Disabling TCPChecksumOffloadIPv6"  -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*TCPChecksumOffloadIPv6" -Value "0" -Force}
            
            elseif ($cb_TCPChecksumOffloadIPv6.SelectedIndex -eq '1'){
            Write-Host "Enabling Tx for TCPChecksumOffloadIPv6" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*TCPChecksumOffloadIPv6" -Value "1" -Force}
            
            elseif ($cb_TCPChecksumOffloadIPv6.SelectedIndex -eq '2'){
            Write-Host "Enabling Rx for TCPChecksumOffloadIPv6" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*TCPChecksumOffloadIPv6" -Value "2" -Force}
            
            elseif ($cb_TCPChecksumOffloadIPv6.SelectedIndex -eq '3'){
            Write-Host "Enabling Tx & Rx for TCPChecksumOffloadIPv6" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*TCPChecksumOffloadIPv6" -Value "3" -Force}    
        
        #UDPChecksumOffloadIPv4 
        if ($cb_UDPChecksumOffloadIPv4.SelectedIndex -eq (Get-ItemPropertyValue -Path "$KeyPath" -Name "*UDPChecksumOffloadIPv4")){
            Write-Host "UDPChecksumOffloadIPv4 is same then Registry, skipping."  -ForegroundColor Green}

            elseif ($cb_UDPChecksumOffloadIPv4.SelectedIndex -eq '0'){
            Write-Host "Disabling UDPChecksumOffloadIPv4"  -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*UDPChecksumOffloadIPv4" -Value "0" -Force}
            
            elseif ($cb_UDPChecksumOffloadIPv4.SelectedIndex -eq '1'){
            Write-Host "Enabling Tx for UDPChecksumOffloadIPv4" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*UDPChecksumOffloadIPv4" -Value "1" -Force}
            
            elseif ($cb_UDPChecksumOffloadIPv4.SelectedIndex -eq '2'){
            Write-Host "Enabling Rx for UDPChecksumOffloadIPv4" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*UDPChecksumOffloadIPv4" -Value "2" -Force}
            
            elseif ($cb_UDPChecksumOffloadIPv4.SelectedIndex -eq '3'){
            Write-Host "Enabling Tx & Rx for UDPChecksumOffloadIPv4" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*UDPChecksumOffloadIPv4" -Value "3" -Force}
        
        #UDPChecksumOffloadIPv6 
        if ($cb_UDPChecksumOffloadIPv6.SelectedIndex -eq (Get-ItemPropertyValue -Path "$KeyPath" -Name "*UDPChecksumOffloadIPv6")){
            Write-Host "UDPChecksumOffloadIPv6 is same then Registry, skipping."  -ForegroundColor Green}

            elseif ($cb_UDPChecksumOffloadIPv6.SelectedIndex -eq '0'){
            Write-Host "Disabling UDPChecksumOffloadIPv6"  -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*UDPChecksumOffloadIPv6" -Value "0" -Force}
            
            elseif ($cb_UDPChecksumOffloadIPv6.SelectedIndex -eq '1'){
            Write-Host "Enabling Tx for UDPChecksumOffloadIPv6" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*UDPChecksumOffloadIPv6" -Value "1" -Force}
            
            elseif ($cb_UDPChecksumOffloadIPv6.SelectedIndex -eq '2'){
            Write-Host "Enabling Rx for UDPChecksumOffloadIPv6" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*UDPChecksumOffloadIPv6" -Value "2" -Force}
            
            elseif ($cb_UDPChecksumOffloadIPv6.SelectedIndex -eq '3'){
            Write-Host "Enabling Tx & Rx for UDPChecksumOffloadIPv6" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*UDPChecksumOffloadIPv6" -Value "3" -Force} 
            
        #Large-Send-Offload V2 (IPv4)
        if ($cb_LsoV2IPv4.SelectedIndex -eq (Get-ItemPropertyValue -Path "$KeyPath" -Name "*LsoV2IPv4")){
            Write-Host "LsoV2IPv4 is same then Registry, skipping."  -ForegroundColor green}    
            
            elseif ($cb_LsoV2IPv4.SelectedIndex -eq '0'){
            Write-Host "Disabling LsoV2IPv4"  -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*LsoV2IPv4" -Value "0" -Force}
            
            elseif ($cb_LsoV2IPv4.SelectedIndex -eq '1'){
            Write-Host "Enabling LsoV2IPv4" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*LsoV2IPv4" -Value "1" -Force}
            
        #Large-Send-Offload V2 (IPv6)
        if ($cb_LsoV2IPv6.SelectedIndex -eq (Get-ItemPropertyValue -Path "$KeyPath" -Name "*LsoV2IPv6")){
            Write-Host "LsoV2IPv6 is same then Registry, skipping."  -ForegroundColor green}    
            
            elseif ($cb_LsoV2IPv6.SelectedIndex -eq '0'){
            Write-Host "Disabling LsoV2IPv4"  -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*LsoV2IPv6" -Value "0" -Force}
            
            elseif ($cb_LsoV2IPv6.SelectedIndex -eq '1'){
            Write-Host "Enabling LsoV2IPv6" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*LsoV2IPv6" -Value "1" -Force}
            
        #Large-Send-Offload V1 (IPv4)
        if ($cb_LsoV1IPv4.SelectedIndex -eq (Get-ItemPropertyValue -Path "$KeyPath" -Name "*LsoV1IPv4")){
            Write-Host "LsoV1IPv4 is same then Registry, skipping."  -ForegroundColor green}    
            
            elseif ($cb_LsoV1IPv4.SelectedIndex -eq '0'){
            Write-Host "Disabling LsoV1IPv4"  -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*LsoV1IPv4" -Value "0" -Force}
            
            elseif ($cb_LsoV1IPv4.SelectedIndex -eq '1'){
            Write-Host "Enabling LsoV1IPv4" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*LsoV1IPv4" -Value "1" -Force}               
            
        #PMARPOffload
        if ($cb_PMARPOffload.SelectedIndex -eq (Get-ItemPropertyValue -Path "$KeyPath" -Name "*PMARPOffload")){
            Write-Host "PMARPOffload is same then Registry, skipping."  -ForegroundColor green}    
            
            elseif ($cb_PMARPOffload.SelectedIndex -eq '0'){
            Write-Host "Disabling PMARPOffload"  -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*PMARPOffload" -Value "0" -Force}
            
            elseif ($cb_PMARPOffload.SelectedIndex -eq '1'){
            Write-Host "Enabling PMARPOffload" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*PMARPOffload" -Value "1" -Force}
            
        #PMNSOffload
        if ($cb_PMNSOffload.SelectedIndex -eq (Get-ItemPropertyValue -Path "$KeyPath" -Name "*PMNSOffload")){
            Write-Host "PMNSOffload is same then Registry, skipping."  -ForegroundColor green}    
            
            elseif ($cb_PMNSOffload.SelectedIndex -eq '0'){
            Write-Host "Disabling PMNSOffload"  -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*PMNSOffload" -Value "0" -Force}
            
            elseif ($cb_PMNSOffload.SelectedIndex -eq '1'){
            Write-Host "Enabling PMNSOffload" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*PMNSOffload" -Value "1" -Force}
            
        #PriorityVLANTag   
        if ($cb_PriorityVLANTag.SelectedIndex -eq (Get-ItemPropertyValue -Path "$KeyPath" -Name "*PriorityVLANTag")){
            Write-Host "PriorityVLANTag is same then Registry, skipping."  -ForegroundColor Green}    
            
            elseif ($cb_PriorityVLANTag.SelectedIndex -eq '0'){
            Write-Host "Disabling PriorityVLANTag"  -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*PriorityVLANTag" -Value "0" -Force}
            
            elseif ($cb_PriorityVLANTag.SelectedIndex -eq '1'){
            Write-Host "Enabling Paketpriorität" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*PriorityVLANTag" -Value "1" -Force}
            
            elseif ($cb_PriorityVLANTag.SelectedIndex -eq '2'){
            Write-Host "Enabling VLAN" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*PriorityVLANTag" -Value "2" -Force}
            
            elseif ($cb_PriorityVLANTag.SelectedIndex -eq '3'){
            Write-Host "Enabling Paketpriorität and VLAN" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*PriorityVLANTag" -Value "3" -Force}
            
        #ReceiveBuffers   
        if ($cb_ReceiveBuffers.Text -eq (Get-ItemPropertyValue -Path "$KeyPath" -Name "*ReceiveBuffers"))
            {
            Write-Host "ReceiveBuffers is same then Registry, skipping."  -ForegroundColor Green
            }    
            else
            { 
            Write-Host "Set ReceiveBuffers to $($cb_ReceiveBuffers.Text)"  -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*ReceiveBuffers" -Value "$($cb_ReceiveBuffers.Text)" -Force
            }
            
        #TransmitBuffers   
        if ($cb_TransmitBuffers.Text -eq (Get-ItemPropertyValue -Path "$KeyPath" -Name "*TransmitBuffers"))
            {
            Write-Host "TransmitBuffers is same then Registry, skipping."  -ForegroundColor Green
            }    
            else
            { 
            Write-Host "Set TransmitBuffers to $($cb_TransmitBuffers.Text)"  -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*TransmitBuffers" -Value "$($cb_TransmitBuffers.Text)" -Force
            }   
            
        #InterruptModeration
        if ($cb_InterruptModeration.SelectedIndex -eq (Get-ItemPropertyValue -Path "$KeyPath" -Name "*InterruptModeration")){
            Write-Host "InterruptModeration is same then Registry, skipping."  -ForegroundColor Green}

            elseif ($cb_InterruptModeration.SelectedIndex -eq '0'){
            Write-Host "Disabling InterruptModeration"  -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*InterruptModeration" -Value "0" -Force}
            
            elseif ($cb_InterruptModeration.SelectedIndex -eq '1'){
            Write-Host "Enabling InterruptModeration" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "*InterruptModeration" -Value "1" -Force}    
        
        #InterruptModerationRate
        #$RegITR = (Get-ItemPropertyValue -Path "$KeyPath" -Name "ITR")
        #if ($cb_InterruptModerationRate.Text -eq $RegITR -xor $cb_InterruptModerationRate.SelectedIndex >0){
            #Write-Host "InterruptModerationRate is same then Registry, skipping."  -ForegroundColor green}
            
            if ($cb_InterruptModerationRate.Text -match 'Disabled'){
            #Write-Host "Disabling InterruptModeration"  -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "ITR" -Value "0" -Force}
            
            elseif ($cb_InterruptModerationRate.Text -match 'Minimal'){
            #Write-Host "Setting InterruptModerationRate to 200 - Minimal" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "ITR" -Value "200" -Force}        
            
            elseif ($cb_InterruptModerationRate.Text -match 'Low'){
            #Write-Host "Setting InterruptModerationRate to 400 - Low" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "ITR" -Value "400" -Force}   
            
            elseif ($cb_InterruptModerationRate.Text -match 'Medium'){
            #Write-Host "Setting InterruptModerationRate to 950 - Medium" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "ITR" -Value "950" -Force}  
            
            elseif ($cb_InterruptModerationRate.Text -match 'High'){
            #Write-Host "Setting InterruptModerationRate to 2000 - High" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "ITR" -Value "2000" -Force}  
            
            elseif ($cb_InterruptModerationRate.Text -match 'Extreme'){
            #Write-Host "Setting InterruptModerationRate to 3600 - Extreme" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "ITR" -Value "3600" -Force}  
            
            elseif ($cb_InterruptModerationRate.Text -match 'Adaptive'){
            #Write-Host "Setting InterruptModerationRate to 65535 - Adaptive" -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "ITR" -Value "65535" -Force}  
            
            #TxIntDelay
            #I-219V 28TxDelay Default
            if ($tb_TxIntDelay.Text -eq (Get-ItemPropertyValue -Path "$KeyPath" -Name "TxIntDelay"))
            {
            Write-Host "TxIntDelay is same then Registry, skipping."  -ForegroundColor Green
            }    
            else
            { 
            Write-Host "Set TxIntDelay to"$tb_TxIntDelay.Text  -ForegroundColor Green
            Set-ItemProperty -Path "$KeyPath" -Name "TxIntDelay" -Value $tb_TxIntDelay.Text -Force
            }
            #PacketDirect
            #Unsure Default Enabled or Disabled
            #Ref:https://docs.microsoft.com/en-us/windows-hardware/drivers/network/introduction-to-ndis-pdpi
            if ($cb_PacketDirect.Text -match 'Undefined'){
                #Write-Host "PacketDirect to"$cb_PacketDirect.Text  -ForegroundColor Green
                Remove-ItemProperty -Path "$KeyPath" -Name "*PacketDirect" -Force}  
            if ($cb_PacketDirect.Text -match 'Enabled'){
                Write-Host "PacketDirect to"$cb_PacketDirect.Text  -ForegroundColor Green
                New-ItemProperty -Path "$KeyPath" -Name "*PacketDirect" -Value "1" -PropertyType "String" -Force}  
            if ($cb_PacketDirect.Text -match 'Disabled'){
                Write-Host "PacketDirect to"$cb_PacketDirect.Text  -ForegroundColor Green
                New-ItemProperty -Path "$KeyPath" -Name "*PacketDirect" -Value "0" -PropertyType "String" -Force}
                
            #EnableCoalesce
            if ($cb_EnableCoalesce.Text -match 'Undefined'){
                #Write-Host "EnableCoalesce to"$cb_EnableCoalesce.Text  -ForegroundColor Green
                Remove-ItemProperty -Path "$KeyPath" -Name "EnableCoalesce" -Force}  
            if ($cb_EnableCoalesce.Text -match 'Enabled'){
                Write-Host "EnableCoalesce to"$cb_EnableCoalesce.Text  -ForegroundColor Green
                New-ItemProperty -Path "$KeyPath" -Name "EnableCoalesce" -Value "1" -PropertyType "DWORD" -Force}  
            if ($cb_EnableCoalesce.Text -match 'Disabled'){
                Write-Host "EnableCoalesce to"$cb_EnableCoalesce.Text  -ForegroundColor Green
                New-ItemProperty -Path "$KeyPath" -Name "EnableCoalesce" -Value "0" -PropertyType "DWORD" -Force}
                
            #EnableUdpTxScaling
            if ($cb_EnableUdpTxScaling.Text -match 'Undefined'){
                #Write-Host "EnableUdpTxScaling to"$cb_EnableUdpTxScaling.Text  -ForegroundColor Green
                Remove-ItemProperty -Path "$KeyPath" -Name "EnableUdpTxScaling" -Force}  
            if ($cb_EnableUdpTxScaling.Text -match 'Enabled'){
                Write-Host "EnableUdpTxScaling to"$cb_EnableUdpTxScaling.Text  -ForegroundColor Green
                New-ItemProperty -Path "$KeyPath" -Name "EnableUdpTxScaling" -Value "1" -PropertyType "DWORD" -Force}  
            if ($cb_EnableUdpTxScaling.Text -match 'Disabled'){
                Write-Host "EnableUdpTxScaling to"$cb_EnableUdpTxScaling.Text  -ForegroundColor Green
                New-ItemProperty -Path "$KeyPath" -Name "EnableUdpTxScaling" -Value "0" -PropertyType "DWORD" -Force}
                
}

        function applypowersavingsettings {
            #cls
            # ========================================================
            # PowerSettings

            #EnablePME
            # Enables/disables wake-up from Advanced Power Management (APM) sleep states.
            if ($cb_EnablePME.SelectedIndex -eq '0'){
            Write-Host "Disabling (APM) sleep states"  -ForegroundColor Green
            New-ItemProperty -Path "$KeyPath" -Name "EnablePME" -PropertyType DWORD -Value "0" -Force}
            if ($cb_EnablePME.SelectedIndex -eq '1'){
            Write-Host "Enabling (APM) sleep states" -ForegroundColor Green
            New-ItemProperty -Path "$KeyPath" -Name "EnablePME" -PropertyType DWORD -Value "1" -Force} 
            if ($cb_EnablePME.SelectedIndex -eq '2'){
            Write-Host "Skipping (APM) sleep states"  -ForegroundColor Green}
            
            #EnableDynamicPowerGating
            if ($cb_EnableDynamicPowerGating.SelectedIndex -eq '0'){
            Write-Host "Disabling DynamicPowerGating"  -ForegroundColor Green
            New-ItemProperty -Path "$KeyPath" -Name "*EnableDynamicPowerGating" -PropertyType String -Value "0" -Force}
            if ($cb_EnableDynamicPowerGating.SelectedIndex -eq '1'){
            Write-Host "Enabling DynamicPowerGating" -ForegroundColor Green
            New-ItemProperty -Path "$KeyPath" -Name "*EnableDynamicPowerGating" -PropertyType String -Value "1" -Force} 
            if ($cb_EnableDynamicPowerGating.SelectedIndex -eq '2'){
            Write-Host "Skipping DynamicPowerGating" -ForegroundColor Green}

            #EnableConnectedPowerGating
            if ($cb_EnableConnectedPowerGating.SelectedIndex -eq '0'){
            Write-Host "Disabling ConnectedPowerGating"  -ForegroundColor Green
            New-ItemProperty -Path "$KeyPath" -Name "EnableConnectedPowerGating" -PropertyType DWORD -Value "0" -Force}
            if ($cb_EnableConnectedPowerGating.SelectedIndex -eq '1'){
            Write-Host "Enabling ConnectedPowerGating" -ForegroundColor Green
            New-ItemProperty -Path "$KeyPath" -Name "EnableConnectedPowerGating" -PropertyType DWORD -Value "1" -Force} 
            if ($cb_EnableConnectedPowerGating.SelectedIndex -eq '2'){
            Write-Host "Skipping ConnectedPowerGating" -ForegroundColor Green}
            
            #AutoPowerSaveModeEnabled
            if ($cb_AutoPowerSaveModeEnabled.SelectedIndex -eq '0'){
            Write-Host "Disabling AutoPowerSaveMode"  -ForegroundColor Green
            New-ItemProperty -Path "$KeyPath" -Name "AutoPowerSaveModeEnabled" -PropertyType DWORD -Value "0" -Force}
            if ($cb_AutoPowerSaveModeEnabled.SelectedIndex -eq '1'){
            Write-Host "Enabling AutoPowerSaveMode" -ForegroundColor Green
            New-ItemProperty -Path "$KeyPath" -Name "AutoPowerSaveModeEnabled" -PropertyType DWORD -Value "1" -Force} 
            if ($cb_AutoPowerSaveModeEnabled.SelectedIndex -eq '2'){
            Write-Host "Skipping AutoPowerSaveMode" -ForegroundColor Green}
           
            #NicAutoPowerSaver
            if ($cb_NicAutoPowerSaver.SelectedIndex -eq '0'){
            Write-Host "Disabling NicAutoPowerSaver"  -ForegroundColor Green
            New-ItemProperty -Path "$KeyPath" -Name "*NicAutoPowerSaver" -PropertyType String -Value "0" -Force}
            if ($cb_NicAutoPowerSaver.SelectedIndex -eq '1'){
            Write-Host "Enabling NicAutoPowerSaver" -ForegroundColor Green
            New-ItemProperty -Path "$KeyPath" -Name "*NicAutoPowerSaver" -PropertyType String -Value "1" -Force} 
            if ($cb_NicAutoPowerSaver.SelectedIndex -eq '2'){
            Write-Host "Skipping NicAutoPowerSaver" -ForegroundColor Green}
            
            #DisableDelayedPowerUp
            if ($cb_DisableDelayedPowerUp.SelectedIndex -eq '0'){
            Write-Host "Enabling DelayedPowerUp" -ForegroundColor Green
            New-ItemProperty -Path "$KeyPath" -Name "DisableDelayedPowerUp" -PropertyType DWORD -Value "0" -Force} 
            if ($cb_DisableDelayedPowerUp.SelectedIndex -eq '1'){
            Write-Host "Disabling DelayedPowerUp"  -ForegroundColor Green
            New-ItemProperty -Path "$KeyPath" -Name "DisableDelayedPowerUp" -PropertyType DWORD -Value "1" -Force}
            if ($cb_DisableDelayedPowerUp.SelectedIndex -eq '2'){
            Write-Host "Skipping DelayedPowerUp" -ForegroundColor Green}
            
            #ReduceSpeedOnPowerDown
            if ($cb_ReduceSpeedOnPowerDown.SelectedIndex -eq '0'){
            Write-Host "Disabling ReduceSpeedOnPowerDown" -ForegroundColor Green
            New-ItemProperty -Path "$KeyPath" -Name "ReduceSpeedOnPowerDown" -PropertyType DWORD -Value "0" -Force} 
            if ($cb_ReduceSpeedOnPowerDown.SelectedIndex -eq '1'){
            Write-Host "Enabling ReduceSpeedOnPowerDown"  -ForegroundColor Green
            New-ItemProperty -Path "$KeyPath" -Name "ReduceSpeedOnPowerDown" -PropertyType DWORD -Value "1" -Force}
            if ($cb_ReduceSpeedOnPowerDown.SelectedIndex -eq '2'){
            Write-Host "Skipping ReduceSpeedOnPowerDown" -ForegroundColor Green}
            
            
        }

        #Adding more then Default RSSQueues
        $btn_unqueues.Add_Click({ 
        New-ItemProperty -Path "$KeyPath\Ndi\Params\*NumRssQueues\Enum" -Name "1" -PropertyType STRING -Value "1 Queue" -Force
        New-ItemProperty -Path "$KeyPath\Ndi\Params\*NumRssQueues\Enum" -Name "2" -PropertyType STRING -Value "2 Queues" -Force
        New-ItemProperty -Path "$KeyPath\Ndi\Params\*NumRssQueues\Enum" -Name "3" -PropertyType STRING -Value "3 Queues" -Force
        New-ItemProperty -Path "$KeyPath\Ndi\Params\*NumRssQueues\Enum" -Name "4" -PropertyType STRING -Value "4 Queues" -Force
        New-ItemProperty -Path "$KeyPath\Ndi\Params\*NumRssQueues\Enum" -Name "5" -PropertyType STRING -Value "5 Queues" -Force
        New-ItemProperty -Path "$KeyPath\Ndi\Params\*NumRssQueues\Enum" -Name "6" -PropertyType STRING -Value "6 Queues" -Force
        New-ItemProperty -Path "$KeyPath\Ndi\Params\*NumRssQueues\Enum" -Name "7" -PropertyType STRING -Value "7 Queues" -Force
        New-ItemProperty -Path "$KeyPath\Ndi\Params\*NumRssQueues\Enum" -Name "8" -PropertyType STRING -Value "8 Queues" -Force
        New-ItemProperty -Path "$KeyPath\Ndi\Params\*NumRssQueues\Enum" -Name "9" -PropertyType STRING -Value "9 Queues" -Force
        New-ItemProperty -Path "$KeyPath\Ndi\Params\*NumRssQueues\Enum" -Name "10" -PropertyType STRING -Value "10 Queues" -Force
        New-ItemProperty -Path "$KeyPath\Ndi\Params\*NumRssQueues\Enum" -Name "11" -PropertyType STRING -Value "11 Queues" -Force
        New-ItemProperty -Path "$KeyPath\Ndi\Params\*NumRssQueues\Enum" -Name "12" -PropertyType STRING -Value "12 Queues" -Force
        $cb_rssqueues.Items.Clear()
        #Query Avaible RSSQueues
        $AdapterQueues = Get-Item -Path "$KeyPath\Ndi\Params\*NumRssQueues\Enum" | Select -ExpandProperty Property
        @($AdapterQueues) | ForEach-Object {[void] $cb_rssqueues.Items.Add($_)}
        $cb_rssqueues.Text = Get-ItemPropertyValue -Path "$KeyPath" -Name "*NumRssQueues"
        #$btn_unqueues.Enabled = $False
        })


$cb_AdapterNamesCombo.Add_SelectedValueChanged({ a; NetIPInterface })

function adapter_restart {
    Try {
    Restart-NetAdapter -InterfaceDescription $NIC_Desc
    Write-Host "Restarting Adapter $NIC_Desc now!" -ForegroundColor Red
    }
    catch{
        Write-Host "No Adapter selected." -ForegroundColor Red
        }
}

# Open RegPath Adapter per Button

function btn_regopadap {
        Try {
        $regPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit"
        $name = "LastKey"
        $value = "Computer\"+(Convert-Path ($Global:KeyPath))
                New-ItemProperty -Path $regPath -Name $name -Value $value -PropertyType String -Force | Out-Null
                Start-Process RegEdit
            } 
            catch 
            {
                Write-Host "No Adapter selected." -ForegroundColor Red
            }
}

function Interrupt{
    $Path = 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Enum'
    #$Global:EthernetClassGuid
    #$Global:EthernetPNPDeviceID
    $NewPath = "$Path\$EthernetPNPDeviceID"
    $Test = Test-Path REGISTRY::$NewPath
    if ($Test){
	
	}else{
	Write-Warning "GPU not found. Abort"
	}
}

function applyrsssettings {
        
        #DisablePortScaling
        if ($cb_DisablePortScaling.SelectedIndex -eq '0'){
        Write-Host "Disabling DisablePortScaling" -ForegroundColor Green
        New-ItemProperty -Path "$KeyPath" -Name "DisablePortScaling" -PropertyType DWORD -Value "0" -Force} 
        if ($cb_DisablePortScaling.SelectedIndex -eq '1'){
        Write-Host "Enabling DisablePortScaling"  -ForegroundColor Green
        New-ItemProperty -Path "$KeyPath" -Name "DisablePortScaling" -PropertyType DWORD -Value "1" -Force}
        if ($cb_DisablePortScaling.SelectedIndex -eq '2'){
        Write-Host "Skipping DisablePortScaling"  -ForegroundColor Green}
        
        #ManyCoreScaling
        if ($cb_ManyCoreScaling.SelectedIndex -eq '0'){
        Write-Host "Disabling ManyCoreScaling" -ForegroundColor Green
        New-ItemProperty -Path "$KeyPath" -Name "ManyCoreScaling" -PropertyType DWORD -Value "0" -Force} 
        if ($cb_ManyCoreScaling.SelectedIndex -eq '1'){
        Write-Host "Enabling ManyCoreScaling"  -ForegroundColor Green
        New-ItemProperty -Path "$KeyPath" -Name "ManyCoreScaling" -PropertyType DWORD -Value "1" -Force}
        if ($cb_ManyCoreScaling.SelectedIndex -eq '2'){
        Write-Host "Skipping ManyCoreScaling"  -ForegroundColor Green}
        
        Set-NetAdapterRss -InterfaceDescription $($Global:NIC_Desc) -BaseProcessorNumber $($cb_rssbaseproc.Text) -MaxProcessorNumber $($cb_rssmaxproc.Text) -NumberOfReceiveQueues $($cb_rssqueues.Text) -Profile $($cb_rssprofile.Text) -MaxProcessors $($cb_rssmaxprocs.Text) -Enabled $($Global:Rssstatusset)
}

function ApplyInterfaceSettings{
    if ($cb_AdvertiseDefaultRoute.Text -eq (Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand AdvertiseDefaultRoute)){
        Write-Host "AdvertiseDefaultRoute is same, skipping."  -ForegroundColor green}
        else{
            Write-Host "AdvertiseDefaultRoute:"$cb_AdvertiseDefaultRoute.Text  -ForegroundColor Green
            Set-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily -AdvertiseDefaultRoute $cb_AdvertiseDefaultRoute.Text
        }
    if ($cb_Advertising.Text -eq (Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand Advertising)){
        Write-Host "Advertising is same, skipping."  -ForegroundColor green}
        else{
            Write-Host "Advertising:"$cb_Advertising.Text  -ForegroundColor Green
            Set-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily -Advertising $cb_Advertising.Text
        }
    if ($cb_AutomaticMetric.Text -eq (Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand AutomaticMetric)){
        Write-Host "AutomaticMetric is same, skipping."  -ForegroundColor green}
        else{
            Write-Host "AutomaticMetric:"$cb_AutomaticMetric.Text  -ForegroundColor Green
            Set-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily -AutomaticMetric $cb_AutomaticMetric.Text
        }
    if ($cb_ClampMss.Text -eq (Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand ClampMss)){
        Write-Host "ClampMss is same, skipping."  -ForegroundColor green}
        else{
            Write-Host "ClampMss:"$cb_ClampMss.Text  -ForegroundColor Green
            Set-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily -ClampMss $cb_ClampMss.Text
        }
    if ($DirectedMacWolPattern.Text -eq (Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand DirectedMacWolPattern)){
        Write-Host "DirectedMacWolPattern is same, skipping."  -ForegroundColor green}
        else{
            Write-Host "DirectedMacWolPattern:"$DirectedMacWolPattern.Text  -ForegroundColor Green
            Set-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily -DirectedMacWolPattern $DirectedMacWolPattern.Text
        }
    if ($cb_EcnMarking.Text -eq (Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand EcnMarking)){
        Write-Host "EcnMarking is same, skipping."  -ForegroundColor green}
        else{
            Write-Host "EcnMarking:"$cb_EcnMarking.Text  -ForegroundColor Green
            Set-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily -EcnMarking $cb_EcnMarking.Text
        }
    if ($cb_ForceArpNdWolPattern.Text -eq (Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand ForceArpNdWolPattern)){
        Write-Host "ForceArpNdWolPattern is same, skipping."  -ForegroundColor green}
        else{
            Write-Host "ForceArpNdWolPattern:"$cb_ForceArpNdWolPattern.Text  -ForegroundColor Green
            Set-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily -ForceArpNdWolPattern $cb_ForceArpNdWolPattern.Text
        }
    if ($cb_Forwarding.Text -eq (Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand Forwarding)){
        Write-Host "Forwarding is same, skipping."  -ForegroundColor green}
        else{
            Write-Host "Forwarding:"$cb_Forwarding.Text  -ForegroundColor Green
            Set-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily -Forwarding $cb_Forwarding.Text
        }
    if ($cb_IgnoreDefaultRoutes.Text -eq (Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand IgnoreDefaultRoutes)){
        Write-Host "IgnoreDefaultRoutes is same, skipping."  -ForegroundColor green}
        else{
            Write-Host "IgnoreDefaultRoutes:"$cb_IgnoreDefaultRoutes.Text  -ForegroundColor Green
            Set-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily -IgnoreDefaultRoutes $cb_IgnoreDefaultRoutes.Text
        }
    if ($cb_ManagedAddressConfiguration.Text -eq (Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand ManagedAddressConfiguration)){
        Write-Host "ManagedAddressConfiguration is same, skipping."  -ForegroundColor green}
        else{
            Write-Host "ManagedAddressConfiguration:"$cb_ManagedAddressConfiguration.Text  -ForegroundColor Green
            Set-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily -ManagedAddressConfiguration $cb_ManagedAddressConfiguration.Text
        }
    if ($cb_NeighborDiscoverySupported.Text -eq (Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand NeighborDiscoverySupported)){
        Write-Host "NeighborDiscoverySupported is same, skipping."  -ForegroundColor green}
        else{
            Write-Host "NeighborDiscoverySupported:"$cb_NeighborDiscoverySupported.Text  -ForegroundColor Green
            Set-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily -NeighborDiscoverySupported $cb_NeighborDiscoverySupported.Text
        }
    if ($cb_NeighborUnreachabilityDetection.Text -eq (Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand NeighborUnreachabilityDetection)){
        Write-Host "NeighborUnreachabilityDetection is same, skipping."  -ForegroundColor green}
        else{
            Write-Host "NeighborUnreachabilityDetection:"$cb_NeighborUnreachabilityDetection.Text  -ForegroundColor Green
            Set-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily -NeighborUnreachabilityDetection $cb_NeighborUnreachabilityDetection.Text
        }
    if ($cb_OtherStatefulConfiguration.Text -eq (Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand OtherStatefulConfiguration)){
        Write-Host "OtherStatefulConfiguration is same, skipping."  -ForegroundColor green}
        else{
            Write-Host "OtherStatefulConfiguration:"$cb_OtherStatefulConfiguration.Text  -ForegroundColor Green
            Set-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily -OtherStatefulConfiguration $cb_OtherStatefulConfiguration.Text
        }
    if ($cb_RouterDiscovery.Text -eq (Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand RouterDiscovery)){
        Write-Host "RouterDiscovery is same, skipping."  -ForegroundColor green}
        else{
            Write-Host "RouterDiscovery:"$cb_RouterDiscovery.Text  -ForegroundColor Green
            Set-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily -RouterDiscovery $cb_RouterDiscovery.Text
        }
    if ($cb_Store.Text -eq (Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand Store)){
        Write-Host "Store is same, skipping."  -ForegroundColor green}
        else{
            Write-Host "Store:"$cb_Store.Text  -ForegroundColor Green
            Set-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily -Store $cb_Store.Text
        }
    if ($cb_WeakHostReceive.Text -eq (Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand WeakHostReceive)){
        Write-Host "WeakHostReceive is same, skipping."  -ForegroundColor green}
        else{
            Write-Host "WeakHostReceive:"$cb_WeakHostReceive.Text  -ForegroundColor Green
            Set-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily -Store $cb_WeakHostReceive.Text
        }
    if ($cb_WeakHostSend.Text -eq (Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand WeakHostSend)){
        Write-Host "WeakHostSend is same, skipping."  -ForegroundColor green}
        else{
            Write-Host "WeakHostSend:"$cb_WeakHostSend.Text  -ForegroundColor Green
            Set-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily -Store $cb_WeakHostSend.Text
        }
    if ($tb_CurrentHopLimit.Text -eq (Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand CurrentHopLimit)){
        Write-Host "CurrentHopLimit is same, skipping."  -ForegroundColor green}
        else{
            Write-Host "CurrentHopLimit:"$tb_CurrentHopLimit.Text  -ForegroundColor Green
            Set-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily -CurrentHopLimit $tb_CurrentHopLimit.Text
        }
    if ($tb_BaseReachableTime.Text -eq (Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand BaseReachableTime)){
        Write-Host "BaseReachableTime is same, skipping."  -ForegroundColor green}
        else{
            Write-Host "BaseReachableTime:"$tb_BaseReachableTime.Text  -ForegroundColor Green
            Set-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily -BaseReachableTime $tb_BaseReachableTime.Text
        }
    if ($tb_ReachableTime.Text -eq (Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand ReachableTime)){
        Write-Host "ReachableTime is same, skipping."  -ForegroundColor green}
        else{
            Write-Host "ReachableTime:"$tb_ReachableTime.Text  -ForegroundColor Green
            Set-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily -ReachableTime $tb_ReachableTime.Text
        }
    if ($tb_DadRetransmitTime.Text -eq (Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand DadRetransmitTime)){
        Write-Host "DadRetransmitTime is same, skipping."  -ForegroundColor green}
        else{
            Write-Host "DadRetransmitTime:"$tb_DadRetransmitTime.Text  -ForegroundColor Green
            Set-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily -DadRetransmitTime $tb_DadRetransmitTime.Text
        }
    if ($tb_DadTransmits.Text -eq (Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand DadTransmits)){
        Write-Host "DadTransmits is same, skipping."  -ForegroundColor green}
        else{
            Write-Host "DadTransmits:"$tb_DadTransmits.Text  -ForegroundColor Green
            Set-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily -DadTransmits $tb_DadTransmits.Text
        }
    if ($tb_NlMtu.Text -eq (Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand NlMtu)){
        Write-Host "NlMtu is same, skipping."  -ForegroundColor green}
        else{
            Write-Host "NlMtu:"$tb_NlMtu.Text  -ForegroundColor Green
            Set-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily -NlMtu $tb_NlMtu.Text
        }
    if ($tb_RetransmitTime.Text -eq (Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand RetransmitTime)){
        Write-Host "RetransmitTime is same, skipping."  -ForegroundColor green}
        else{
            Write-Host "RetransmitTime:"$tb_RetransmitTime.Text  -ForegroundColor Green
            Set-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily -RetransmitTime $tb_RetransmitTime.Text
        }
}

function IPv4_CheckedChanged(){
if ($cb_IPv4.Checked){
    $cb_IPv6.Enabled = $false
    $Global:AddressFamily = "IPv4"
    RefreshingNetIPInterfaceSettings
    }else{
    $cb_IPv6.Enabled = $true
    $Global:AddressFamily = "IPv6"
    RefreshingNetIPInterfaceSettings
    }
if ($cb_IPv4.Checked -eq $false -and $cb_IPv6.Checked -eq $false -or $cb_IPv4.Checked -eq $false -and $cb_IPv6.Visible -eq $false ){
        Write-Warning "IPv4 and IPv6 are not Checked, Disabling Interface-Settings."
        $Groupbox7.Enabled = $false
        $btn_applyInterfaceSettings.Enabled = $false
    }else{
        $Groupbox7.Enabled = $true
        $btn_applyInterfaceSettings.Enabled = $true
    }
}

function IPv6_CheckedChanged(){
if ($cb_IPv6.Checked){
    $cb_IPv4.Enabled = $false
    $Global:AddressFamily = "IPv6"
    RefreshingNetIPInterfaceSettings
    }else{
    $cb_IPv4.Enabled = $true
    $Global:AddressFamily = "IPv4"}
    RefreshingNetIPInterfaceSettings
    }
    
if ($cb_IPv4.Checked -eq $false -and $cb_IPv6.Checked -eq $false -or $cb_IPv4.Checked -eq $false -and $cb_IPv6.Visible -eq $false  ){
        Write-Warning "IPv4 and IPv6 are not Checked, Disabling Interface-Settings."
        $Groupbox7.Enabled = $false
        $btn_applyInterfaceSettings.Enabled = $false
    }else{
        $Groupbox7.Enabled = $true
        $btn_applyInterfaceSettings.Enabled = $true
    }

function RefreshingNetIPInterfaceSettings{
    #NetIPInterface
        #AdvertiseDefaultRoute
        $cb_AdvertiseDefaultRoute.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand AdvertiseDefaultRoute
            
        #Advertising
        $cb_Advertising.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand Advertising
            
        #AutomaticMetric
        $cb_AutomaticMetric.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand AutomaticMetric
            
        #ClampMss
        $cb_ClampMss.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand ClampMss
            
        #DirectedMacWolPattern
        $cb_DirectedMacWolPattern.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand DirectedMacWolPattern
            
        #EcnMarking
        $cb_EcnMarking.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand EcnMarking
            
        #ForceArpNdWolPattern
        $cb_ForceArpNdWolPattern.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand ForceArpNdWolPattern
            
        #Forwarding
        $cb_Forwarding.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand Forwarding
            
        #IgnoreDefaultRoutes
        $cb_IgnoreDefaultRoutes.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand IgnoreDefaultRoutes
            
        #ManagedAddressConfiguration
        $cb_ManagedAddressConfiguration.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand ManagedAddressConfiguration
            
        #NeighborDiscoverySupported
        $cb_NeighborDiscoverySupported.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand NeighborDiscoverySupported
        
        #NeighborUnreachabilityDetection
        $cb_NeighborUnreachabilityDetection.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand NeighborUnreachabilityDetection
        
        #OtherStatefulConfiguration
        $cb_OtherStatefulConfiguration.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand OtherStatefulConfiguration
        
        #RouterDiscovery
        $cb_RouterDiscovery.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand RouterDiscovery
        
        #Store
        $cb_Store.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand Store
        
        #WeakHostReceive
        $cb_WeakHostReceive.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand WeakHostReceive
        
        #WeakHostSend
        $cb_WeakHostSend.Text =  Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand WeakHostSend
        
        #CurrentHopLimit
        #When this parameter value is set to 0, it uses this default.    
        $tb_CurrentHopLimit.Text = Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand CurrentHopLimit
        
        #BaseReachableTime
        #Specifies the base value for random reachable time, in milliseconds. For more information, see RFC 2461.
        #The default value is 30000.
        $tb_BaseReachableTime.Text = Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand BaseReachableTime
    
        #ReachableTime
        #Specifies an array of reachable time values. This parameter is the time, in milliseconds, that a node assumes that a neighbor
        #is reachable after having received a reachability confirmation. This parameter works with the NeighborUnreachabilityDetection parameter.
        $tb_ReachableTime.Text = Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand ReachableTime

        #DadRetransmitTime
        #Specifies a value for the time interval between neighbor solicitation messages.
        $tb_DadRetransmitTime.Text = Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand DadRetransmitTime

        #DadTransmits
        #Specifies a value for the number of consecutive messages sent while the network driver performs duplicate address detection.
        $tb_DadTransmits.Text = Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand DadTransmits

        #NlMtu
        #Specifies the network layer Maximum Transmission Unit (MTU) value, in bytes, for an IP interface. 
        #For IPv4 the minimum value is 576 bytes. For IPv6 the minimum is value is 1280 bytes.
        #For both IPv4 and IPv6, the maximum value is 2^32-1 (4294967295). You cannot set values outside these ranges.
        #If this parameter is set to 0, then it will remain unchanged and maintain its current value. The IP interface will not transmit packets larger than the maximum value.
        $tb_NlMtu.Text = Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand NlMtu

        #RetransmitTime (RetransmitTimeMs)
        #Specifies a value for timeout and retransmission, in milliseconds, for Neighbor Solicitation messages. 
        #For more information, see RetransTimer in RFC 2461. 
        #By default, the value is set to 1000.
        $tb_RetransmitTime.Text = Get-NetIPInterface -InterfaceAlias $NetConnectionID -AddressFamily $Global:AddressFamily | Select-Object -Expand RetransmitTime
    
}

function applyall{
    if($Groupbox7.Enabled -eq $False){
    Write-Host "Applying All Settings!" -ForegroundColor Yellow
    Write-Host "`n"
    Write-Host "===== Global Settings =====" -ForegroundColor Yellow
    applyglobal
    Write-Host "`n"
    Write-Host "===== RSS Settings =====" -ForegroundColor Yellow
    applyrsssettings
    Write-Host "`n"
    Write-Host "===== PowerSaving Settings =====" -ForegroundColor Yellow
    applypowersavingsettings
    Write-Host "`n"
    Write-Warning "===== IP-Interface Settings ====="
    Write-Warning "IPv4 or IPv6 not specified!"
    Write-Host "`n"
    Write-Host "===== Adapter Advanced Settings =====" -ForegroundColor Yellow
    applyadvsettings    
        
    }else{
    Write-Host "Applying All Settings!" -ForegroundColor Yellow
    
    Write-Host "===== Global Settings =====" -ForegroundColor Yellow
    applyglobal
    
    Write-Host "===== RSS Settings =====" -ForegroundColor Yellow
    applyrsssettings
    
    Write-Host "===== PowerSaving Settings =====" -ForegroundColor Yellow
    applypowersavingsettings
    
    Write-Host "===== IP-Interface Settings =====" -ForegroundColor Yellow
    ApplyInterfaceSettings
    
    Write-Host "===== Adapter Advanced Settings =====" -ForegroundColor Yellow
    applyadvsettings
    }
}

$cb_IPv4.Add_CheckedChanged({ IPv4_CheckedChanged })
$cb_IPv6.Add_CheckedChanged({ IPv6_CheckedChanged })
$btn_applyInterfaceSettings.Add_Click({cls; ApplyInterfaceSettings})
$btn_openreg.Add_Click({btn_regopadap})
$btn_adaptrest.Add_Click({cls; adapter_restart})
$btn_applyadv.Add_Click({cls; applyadvsettings})
$btn_applyglobal.Add_Click({cls; applyglobal })
#$btn_applotadapters.Add_Click({applyotAdapters})
$btn_apply.Add_Click({ cls; applyrsssettings })
# Source: https://community.spiceworks.com/topic/2239276-script-help-to-disable-power-management-on-network-cards
$btn_applypowersettings.Add_Click({cls; applypowersavingsettings})
$btn_applyall.Add_Click({cls; applyall})

#Notes:
# Adding Button to Enable RSS Support by Driver ( per Registry )
# Interrupt Settings Update
# Adding Additional Settings for Adv Tweaking













#endregion

[void]$Form.ShowDialog()