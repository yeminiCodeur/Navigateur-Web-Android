B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Activity
Version=9.01
@EndOfDesignText@
#Region  Activity Attributes 
	#FullScreen: False
	#IncludeTitle: True
#End Region

Sub Process_Globals
	'These global variables will be declared once when the application starts.
	'These variables can be accessed from all modules.

End Sub

Sub Globals
	'These global variables will be redeclared each time the activity is created.
	'These variables can only be accessed from this module.

	Private btnCacher As Button
	Private btnAfficher As Button
	Private ImageView1 As ImageView
	Dim bmp1 As Bitmap
	Private BtnAccueil As Button
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("LayoutCacherAfficher")
	
	bmp1 = LoadBitmap(File.DirAssets, "1.jpg")
	ImageView1.Bitmap =  bmp1

End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub


Sub btnCacher_Click
	ImageView1.Bitmap =  Null
End Sub

Sub btnAfficher_Click
	ImageView1.Bitmap =  bmp1
End Sub

Sub BtnAccueil_Click
	StartActivity("Main")
End Sub