extends ComponentStyle
class_name LabelStyle


func _init() -> void:
	affected_nodes = ['Label']
	stylebox_colorsets = {
		'normal' : ThemeVariables.COLORSET.NORMAL
	}
	stylebox_types = {
		'normal' : ThemeVariables.STYLEBOX_TYPE.EMPTY
	}
	to_gdtheme_colors = {
		'font_color' : colors.text_and_icons.normal,
		#'font_shadow_color' : colors.shadows.normal
	}
	to_gdtheme_props = {
		'line_spacing' : fonts.line_spacing,
	}
	to_gdtheme_fontsize = {
		'font_size' : fonts.font_size,
	}
	
	init_styleboxes()
