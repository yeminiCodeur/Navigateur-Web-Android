﻿B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Activity
Version=9.01
@EndOfDesignText@
#Region  Activity Attributes 
	#FullScreen: True
	#IncludeTitle: False
#End Region

Sub Process_Globals
	'These global variables will be declared once when the application starts.
	'These variables can be accessed from all modules.

End Sub


Sub Globals
	'These global variables will be redeclared each time the activity is created.
	'These variables can only be accessed from this module.

	Private EditTextUrl As EditText
	Private BtnPreview As Button
	Private BtnNext As Button
	Private Refresh As Button
	Private WebView1 As WebView
	
	Dim urlFresh As String
	
End Sub

Sub Activity_Create(FirstTime As Boolean)
	Activity.LoadLayout("Layout2")
	EditTextUrl.SingleLine = True
	EditTextUrl.InputType = Bit.Or(EditTextUrl.InputType, 524288)
End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub


Sub EditTextUrl_FocusChanged (HasFocus As Boolean)
	
End Sub

Sub EditTextUrl_EnterPressed
	WebView1.LoadUrl("http://" & EditTextUrl.Text)
End Sub

Sub BtnPreview_Click
	WebView1.Back
End Sub

Sub BtnNext_Click
	WebView1.Forward
End Sub

Sub Refresh_Click
	WebView1.LoadUrl(urlFresh)
End Sub

Sub WebView1_PageFinished (url As String)
	urlFresh=  url
	EditTextUrl.Text =  url
End Sub


Sub BtnChangeImage_Click
	
End Sub

Sub BtnNavig_Click
	
End Sub