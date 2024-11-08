extends ComponentStyle
class_name LabelStyle

func set_affected_nodes():
	affected_nodes = ['Label']

func set_stylebox_colorsets():
	stylebox_colorsets = {
		'normal' : ThemeVariables.COLORSET.NOCOLOR
	}

func set_colors():
	to_gdtheme_colors = {
		'font_color' : colors.text_and_icons.normal,
		#'font_shadow_color' : colors.shadows.normal
	}

func set_constants():
	to_gdtheme_constants = {
		'line_spacing' : fonts.line_spacing,
	}

#func set_font_properties():
	#to_gdtheme_fontsize = {
		#'font_size' : fonts.font_size,
	#}
