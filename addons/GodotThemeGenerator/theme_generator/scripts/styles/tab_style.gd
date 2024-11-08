extends ComponentStyle
class_name TabStyle



func set_affected_nodes():
	affected_nodes = ['TabBar','TabContainer']

func set_colors():
	to_gdtheme_colors = {
		'font_hovered_color' : colors.text_and_icons.hover,
		'font_selected_color' : colors.text_and_icons.focus,
		'font_unselected_color' : colors.text_and_icons.focus,
		'font_disabled_color' : colors.text_and_icons.disabled,
	}

func set_constants():
	to_gdtheme_constants = {
		
	}

func set_icons():
	to_gdtheme_icons = {
		'close' : icons.cross_normal,
		'decrement' : icons.arrow_down, # need arrow left
		'decrement_highlight' : icons.arrow_down, # need arrow left
		'increment' : icons.arrow_right,
		'increment_highlight' : icons.arrow_right,
		'drop_mark' : icons.tick_vertical
	}

func set_stylebox_colorsets():
	stylebox_colorsets = {
		'panel' : ThemeVariables.COLORSET.DISABLED,
		'button_highlight':ThemeVariables.COLORSET.FOCUS,
		'button_pressed':ThemeVariables.COLORSET.PRESSED,
		'tab_disabled':ThemeVariables.COLORSET.DISABLED,
		'tab_focus':ThemeVariables.COLORSET.FOCUS,
		'tab_selected':ThemeVariables.COLORSET.PRESSED,
		'tab_hovered':ThemeVariables.COLORSET.HOVER,
		'tab_unselected':ThemeVariables.COLORSET.PRESSED,
		'tabbar_background':ThemeVariables.COLORSET.NOCOLOR,
	}
