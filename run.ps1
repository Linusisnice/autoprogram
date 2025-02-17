Add-Type -AssemblyName PresentationFramework

[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

$form = New-Object System.Windows.Forms.Form
$form.Text = "Sample Form"
$form.Size = New-Object System.Drawing.Size(300,200)

$button1 = New-Object System.Windows.Forms.Button
$button1.Text = "Button 1"
$button1.Location = New-Object System.Drawing.Point(50,50)
$button1.Size = New-Object System.Drawing.Size(75,23)
$button1.Add_Click({ Write-Output "Button 1 clicked" })

$button2 = New-Object System.Windows.Forms.Button
$button2.Text = "Button 2"
$button2.Location = New-Object System.Drawing.Point(150,50)
$button2.Size = New-Object System.Drawing.Size(75,23)
$button2.Add_Click({ Write-Output "Button 2 clicked" })

$form.Controls.Add($button1)
$form.Controls.Add($button2)

[void]$form.ShowDialog()