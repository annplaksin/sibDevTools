dlgAbout "Dialog"
{
	Title "About"
	X "266"
	Y "247"
	Width "187"
	Height "105"
	Controls
	{
		Text
		{
			Title
			X "76"
			Y "13"
			Width "42"
			Height "14"
			RightAlign "0"
			ID "IDC_TEMPLATE_PLUGIN_STATIC"
			Value "PluginName"
			Method
			SetFocus "0"
		}
		Text
		{
			Title
			X "84"
			Y "39"
			Width "23"
			Height "14"
			RightAlign "0"
			ID "IDC_0001_STATIC"
			Value "Version"
			Method
			SetFocus "0"
		}
		Text
		{
			Title "Created by plgToMSS"
			X "69"
			Y "25"
			Width "55"
			Height "14"
			RightAlign "0"
			ID "IDC_CREATED_BY_PLGTOMSS_STATIC"
			Value "Author"
			Method
			SetFocus "0"
		}
		Button
		{
			Title "OK"
			X "72"
			Y "60"
			Width "50"
			Height "14"
			DefaultButton "1"
			ID "IDC_OK_BUTTON"
			Value
			Method
			SetFocus "1"
			EndDialog "1"
		}
	}
}
