extends ComponentStyle
class_name ProgressbarStyle


func set_affected_nodes():
	affected_nodes = ['ProgressBar']

func set_colors():
	to_gdtheme_colors = {
		'font_color' : colors.text_and_icons.normal
	}

func set_stylebox_colorsets():
	stylebox_colorsets = {
		'background' : ThemeVariables.COLORSET.NORMAL,
		'fill' : ThemeVariables.COLORSET.PRESSED
	}
