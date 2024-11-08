extends ComponentStyle
class_name  MenuStyle


func _init() -> void:
	affected_nodes = ['PopupMenu','AcceptDialog']
	
	stylebox_colorsets = {
		'panel':ThemeVariables.COLORSET.DISABLED
	}
	to_gdtheme_icons = {
		#'close':icons.cross_normal,
		#'close_pressed':icons.cross_pressed,
		'submenu':icons.arrow_right,
		
		'checked':icons.check_checked_enabled,
		'checked_disabled':icons.check_checked_disabled,
		'unchecked':icons.check_unchecked_enabled,
		'unchecked_disabled':icons.check_unchecked_disabled,
		
		'radio_checked':icons.radio_checked_enabled,
		'radio_checked_disabled':icons.radio_checked_disabled,
		'radio_unchecked':icons.radio_unchecked_enabled,
		'radio_unchecked_disabled':icons.radio_unchecked_disabled,
		
		'tick':icons.tick_vertical, # todo smth with vertical and horizontal
		'space':icons.point_normal, 
	}
	to_gdtheme_colors = {
		'font_color' : colors.text_and_icons.normal,
		'font_separator_color' : colors.text_and_icons.normal
	}
	to_gdtheme_props = {
	
	}
	
	init_styleboxes()
