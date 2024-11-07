extends ComponentStyle
class_name  MenuStyle


func _init() -> void:
	affected_nodes = ['PopupMenu','AcceptDialog']
	
	stylebox_colorsets = {
		'panel':ThemeVariables.COLORSET.DISABLED
	}
	to_gdtheme_colors = {
		'font_color' : colors.text_and_icons.normal,
		'font_separator_color' : colors.text_and_icons.normal
	}
	to_gdtheme_props = {
	
	}
	
	init_styleboxes()
